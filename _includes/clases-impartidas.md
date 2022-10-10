
  {% assign previousMonth = "0" %}
<ol>
  {% for post in site.posts %}
     {% capture nowunix %}{{ site.start_date | date: '%s'}}{% endcapture %}
     {% capture posttime %}{{post.date | date: '%s'}}{% endcapture %}
     {% if posttime > nowunix %}
       {% assign currentMonth = post.date | date: "%B" %}
        {% if currentMonth != previousMonth %}
<br/>
<h3> Classes during the month of {{ currentMonth }}</h3>
</ol>
<ol reversed>
        {% endif %}
<li> 
<a href="{{ post.url }}">{{ post.title }}</a> {%- if post.summary %} <ul><li>{{post.summary}}</li></ul>{% endif -%} <!--(<a href="{{site.apuntes.url}}/tree/master/{{post.path}}" target="_blank">Clase en el repo</a>) -->
</li>
      {% assign previousMonth = currentMonth %}
     {% endif%}
  {% endfor %}
</ol>
