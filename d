---
layout: default
---


<div class=par>

{% assign documents = site.documents | sort: 'date' | reverse %}

{% for document in documents limit:500 %}
  {% if document.layout == 'post' %}
<div><div class="pd">
  <span class="date" style="display:block;">{{ document.date | date: "%m / %y" }}</span></div>

  {% if document.layout == "post" %} <span class="title">   <a href="{{ document.url | relative_url }}">{{ document.title }} </a>
         </span>{% elsif document.layout == "link" %} <span class="title">   <a href="{{ document.link | relative_url }}"> {{ document.title }} | {{ document.site }} </a>→
         </span> 
         
{% else %} <span class="title">   <a href="{{ document.url | relative_url }}">{{ document.date | date: "%Y/%m/%d" }}   </a>
         </span>  {% if document.sub == 'yes' %} (subdirectory) {% endif %} {% endif %}
       
       
     
      
         
        
 </div> 
  {% endif %}   
{% endfor %}

