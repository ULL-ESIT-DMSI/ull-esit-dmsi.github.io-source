<ol>
{% assign teams = site.data.teams.data.organization.teams.edges %}
{% for team in teams -%}
  {%- assign name = team.node.name -%}
  {%- assign url = team.node.url -%}
  <li> 
    <a href="{{url}}" target="_blank">{{ name }}</a> 
    <ul>
    <li>
    <a href="{{url}}/repositories" target="_blank">Repositories</a>
    </li>
    {%- assign student = team.node.members.edges[0] -%}
    <li><a href="{{ student.node.url }}" target="_blank">{{ student.node.name | default: team.node.name }}</a></li>
    </ul>
  </li>
{% endfor -%}
</ol>
