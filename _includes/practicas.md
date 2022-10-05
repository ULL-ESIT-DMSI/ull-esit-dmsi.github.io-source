<ol reverse>
{% for practica in site.data.practicas %}
  <li> 
    <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a> 
    <ul>
      <li>Repos en GH: {% include link-repo-labs.md lab=practica.key %}</li>
      <li><a href="{{site.baseurl}}/{{practica.path}}#rúbrica">Rúbrica</a> </li>
    </ul>
  </li>
{% endfor %}
</ol>
