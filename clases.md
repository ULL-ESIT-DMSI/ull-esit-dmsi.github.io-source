{% assign numClasses = site.posts | size %}
{% assign numHours = numClasses | times: 2 %}

{% include clases-impartidas.md %}

**Total hours: {{ numHours }}**
