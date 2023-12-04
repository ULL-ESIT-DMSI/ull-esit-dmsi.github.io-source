{% assign numClasses = site.posts | size %}
{% assign numHours = numClasses | times: 2 %}
# {{ numHours | times: 2 }} taught hours so far

{% include clases-impartidas.md %}
