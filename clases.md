{% assign numClasses = site.posts | size %}
{% assign numHours = numClasses | times: 2 %}

{% include clases-impartidas.md %}

**Accumulated {{ numHours | times: 2 }} hours**
