<ol reverse>
{% for practica in site.data.practicas limit: include.n %}
  <li> <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a></li>
{% endfor %}
</ol>
