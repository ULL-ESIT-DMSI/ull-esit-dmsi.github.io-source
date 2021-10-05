# DMSI

## Clases

{% include clases-impartidas.md %}

## Temas

<ol>
{% for tema in site.temas %}
<li> <a href="{{site.baseurl}}{{tema.path}}">{{tema.title}}</a></li>
{% endfor %}
</ol>

## Prácticas

<ol>
{% for practica in site.data.practicas %}
  <li> <a href="{{site.baseurl}}/{{practica.path}}">{{practica.title}}</a></li>
{% endfor %}
</ol>

