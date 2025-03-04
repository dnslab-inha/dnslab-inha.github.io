---
title: Contact
nav:
  order: 6
  tooltip: Email, address, and location
---

# {% include icon.html icon="fa-regular fa-envelope" %}Contact

If you are willing to contact Prof. Heejun Roh or DNSLab at Inha University, please check the following contact information.

{%
  include button.html
  type="email"
  text="hjroh _at_ inha _dot_ ac _dot kr"
  link="#"
%}
{%
  include button.html
  type="phone"
  text="+82 (32 or 032 in Korea) 860 - seven seven nine four"
  link="#"
%}
{%
  include button.html
  type="address"
  tooltip="Our location on Naver Maps for easy navigation"
  link="https://naver.me/FjbWjuCS"
%}

{% include section.html dark=true %}

{% capture col1 %}
The main office of DNSLab is located in Room 1113, Hi-Tech Center
Inha University, Republic of Korea.
{% endcapture %}

{% capture col2 %}
The mailing address for Heejun Roh or DNSLab is as follows:
Heejun Roh / Distributed and Networked Systems Lab.
Department of Computer Engineering
College of Software and Convergence
Inha University, 100 Inha-ro, Michuhol-gu
22212 Incheon, Republic of Korea.
{% endcapture %}

{% include cols.html col1=col1 col2=col2 %}
