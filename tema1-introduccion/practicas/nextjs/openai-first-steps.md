---
permalink: /openai-first-steps
---
# OpenAI First Steps

## Creating an Account

[Create an account at openai api](https://openai.com/api/). Unfortunately, at some point is going to ask you for a phone number:

![openapi registration phone number]({{ site.baseurl }}/assets/images/openai-registration-phone-number.png)

It does not provide any alternatives. Let me know in advance if this is a problem for you.

## Generating an API key


Go to the user on the upper right corner and click on the API Keys tab. 
![](/assets/images/nextjs/menu-1.png)

Choose View API Keys.

![](/assets/images/nextjs/generate-api-key.png)

 Click on the "Create new secret Key" button and copy the key.


## REST exercises

Make requests to the OpenAI API using a client like the Thunder Client or Postman or Insomnia.

1. To get all models
2. To get info of a model
3. To get a cute image
4. To get a completion
5. To get a moderation

See <https://beta.openai.com/docs/api-reference/>

### Vscode Thunder Client

You can install the VSCode extension [Thunder Client](https://github.com/rangav/thunder-client-support) for testing the cat API.

{% include video provider="youtube" id="AbCTlemwZ1k?si=BAC6gcby6Fq1sNxD" %}

### Chrome

For Chrome you can install:

* [JSON Formatter for API](https://chrome.google.com/webstore/detail/json-formatter-for-api/ipofikknncgcohpploljmbmpkgamedmi)
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
* [Altair GraphQL Client](https://chrome.google.com/webstore/detail/altair-graphql-client/flnheeellpciglgpaodhkhmapeljopja)
