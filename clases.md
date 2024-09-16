{% assign numClasses = site.posts | size %}
{% assign numHours = numClasses | times: 2 %}

{% include clases-impartidas.md %}

**At the end of this week we have accumulated {{ numHours | times: 2 }} taught hours**
