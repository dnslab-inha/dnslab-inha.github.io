---
title: Members
nav:
  order: 4
  tooltip: About our DNSLab Members
---

# {% include icon.html icon="fa-solid fa-users" %}Team

{% include section.html %}

 - Lab Director
{% include list.html data="members" component="portrait" filter="role == 'pi'" %}

 - Undergraduate Students
{% include list.html data="members" component="portrait" filter="role == 'ug'" %}

 - Alumni (Undergraduate)
{% include list.html data="members" component="portrait" filter="role == 'alumni-ug'" style="mini" %}

{% include section.html background="images/background.jpg" dark=true %}

{% include section.html %}

{% capture content %}

{% endcapture %}

{% include grid.html style="square" content=content %}
