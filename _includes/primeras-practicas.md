<ol reverse>
{% for practica in site.data.practicas limit: include.n offset: include.m | default: 0 %}
  <li> <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a></li>
{% endfor %}
</ol>
