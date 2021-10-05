<ol reverse>
{% for practica in site.data.practicas %}
  <li> <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a></li>
{% endfor %}
</ol>
