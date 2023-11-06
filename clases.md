{% assign numClasses = site.posts | size %}
{% assign numHours = numClasses | times: 2 %}
# {{ numHours }} taught hours so far

{% include clases-impartidas.md %}
