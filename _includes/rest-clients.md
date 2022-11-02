API testing requires an application to interact with API. 
Rest API can be tested with tools like:

* gh cli (for GitHub APIs)
* [Curl](https://curl.se/docs/manual.html)
  * Read [How to use curl to test a REST AP](https://terminalcheatsheet.com/guides/curl-rest-api)
* [Thunder Client](https://github.com/rangav/thunder-client-support)
* Insomnia
* Postman

## Github cli Using GH REST API

* Learn to generate a GH token
* Learn to use [jq](https://stedolan.github.io/jq/)
  * [Manual](https://stedolan.github.io/jq/manual/)

Examples that make requests to GitHub REST to [Get all contributor commit activity](https://docs.github.com/en/rest/metrics/statistics#get-all-contributor-commit-activity) 

```
➜  src git:(main) ✗ gh api \
  -H "Accept: application/vnd.github+json" \
  /repos/ULL-ESIT-DMSI-2223/ull-esit-dmsi-2223.github.io/stats/participation | head -n 1
{"all":[7,2,8,10,2,3,4,0,0,9,14,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,11,14,23,9,9,6,13],"owner":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
```

```
➜  src git:(main) ✗ gh api \
  -H "Accept: application/vnd.github+json" \
  /repos/ULL-ESIT-DMSI-2223/ull-esit-dmsi-2223.github.io/stats/participation --jq '.all[51]'
13
```

```
➜  src git:(main) ✗ gh api \
  -H "Accept: application/vnd.github+json" \
  /repos/ULL-ESIT-DMSI-2223/ull-esit-dmsi-2223.github.io/stats/participation --jq '.all[-1]'       
13
```

```
➜  src git:(main) ✗ gh api \
  -H "Accept: application/vnd.github+json" \
  /repos/ULL-ESIT-DMSI-2223/ull-esit-dmsi-2223.github.io/stats/participation --jq '.all[(.all | length)-1]'
13
```



## Example Using curl

```
~/.../chapter20-node-js-crguezl/the-http-module(master)]$ curl -d "param1=value1&param2=value2" -H "Content-Type: application/x-www-form-urlencoded" -X POST https://10.150.22.51:8000/data

<h1>Hello!</h1>
<p>You asked for 
<code>
/data 
<!-- The url is the full URL without the server, protocol or port. -->
</code>
using the POST method
</p>
<p>Your headers:</p> 
<pre>
{
  host: '10.150.22.51:8000',
  'user-agent': 'curl/7.54.0',
  accept: '*/*',
  'content-type': 'application/x-www-form-urlencoded',
  'content-length': '27'
}
</pre>
```

* [curl.md](https://gist.github.com/subfuzion/08c5d85437d5d4f00e58) gist illustrating the use of curl

## Example Using Insomnia

![request with inmsomnia](/assets/images/insomnia.png)

* [https://insomnia.rest/](https://insomnia.rest/)

## Example Using Postman

![request with Postman](/assets/images/postman.png)

* [https://www.getpostman.com/](https://www.getpostman.com/)
* [API Building and Testing Made Easier with Postman](https://www.sitepoint.com/api-building-and-testing-made-easier-with-postman/)
* [Postman docs](https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates/)
