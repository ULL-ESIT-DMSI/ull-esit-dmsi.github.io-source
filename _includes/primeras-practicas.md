<ol reverse>
{% for practica in site.data.practicas limit: include.n offset: include.m | default: 0 %}
  {% if practica.visible %}
    <li> <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a></li>
  {% endif %}
{% endfor %}
</ol>
