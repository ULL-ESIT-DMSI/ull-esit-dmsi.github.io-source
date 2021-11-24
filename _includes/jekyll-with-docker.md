* [Compile a Jekyll project without installing Jekyll or Ruby by using Docker](https://dev.to/michael/compile-a-jekyll-project-without-installing-jekyll-or-ruby-by-using-docker-4184)

File `docker-compose.yml`:

```yml
version: '3'

services:
  site:
    image: jekyll/jekyll:3.8.6
    command: bundle exec jekyll serve --future --incremental --watch --livereload --drafts --host 0.0.0.0 --port 4000 
    ports:
      - 4000:4000
    volumes:
      - .:/srv/jekyll
      - ./vendor/bundle:/usr/local/bundle
```

En el `Rakefile`:


```ruby
task :docker do
  # sh 'docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=development -p 4000:4000 jekyll/jekyll:3.8 jekyll serve'
  sh 'docker compose up' 
end
```

o bien:

```
➜  apuntes git:(main) ✗ cat jekyll-up 
#!/bin/bash
docker compose up                                                                                      
➜  apuntes git:(main) ✗ cat jekyll-down 
#!/bin/bash
docker compose down
```