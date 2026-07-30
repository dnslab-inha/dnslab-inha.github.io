require 'date'
require 'liquid'

module Jekyll
  module MemberSortFilter
    def sort_members(members)
      return members unless members.is_a?(Array)

      members.sort do |a, b|
        get_val = ->(item, key) {
          item.respond_to?(:data) ? item.data[key] : item[key]
        }
        
        parse_date = ->(d) {
          return Date.new(1900, 1, 1) if d.nil? || d.to_s.strip.empty?
          begin
            Date.parse(d.to_s)
          rescue
            Date.new(1900, 1, 1)
          end
        }
        
        start_a = parse_date.call(get_val.call(a, 'start-date'))
        start_b = parse_date.call(get_val.call(b, 'start-date'))
        
        cmp_start = start_b <=> start_a # DESC
        if cmp_start == 0
          end_a = parse_date.call(get_val.call(a, 'end-date'))
          end_b = parse_date.call(get_val.call(b, 'end-date'))
          
          cmp_end = end_b <=> end_a # DESC
          if cmp_end == 0
            name_a = get_val.call(a, 'name').to_s.downcase
            name_b = get_val.call(b, 'name').to_s.downcase
            name_a <=> name_b # ASC
          else
            cmp_end
          end
        else
          cmp_start
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::MemberSortFilter)
