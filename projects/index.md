---
title: Projects
nav:
  order: 3
  tooltip: Research Projects
---

# {% include icon.html icon="fa-solid fa-wrench" %}Projects

{% include search-info.html %}

{% include section.html %}

## 연구 프로젝트 (On-going)

{% assign ongoing = site.data.projects | where: "group", "ongoing" %}
{% for project in ongoing %}
- **{{ project.title }}**  
  {{ project.description }}, {{ project.duration }}
{% endfor %}

{% include section.html %}

## 과거 수행 프로젝트

{% assign past = site.data.projects | where: "group", "past" %}
{% for project in past %}
- **{{ project.title }}**  
  {{ project.description }}, {{ project.duration }}
{% endfor %}
