desc "Publicar en GitHub los apuntes de DMSI"
task :default => [ :pushhtml ] do
  sh "git ci -am 2021 && git push -u source master"
end

task :serve do
  sh "bundle exec jekyll s --watch -V -P 4444"
end

task :symlinks do 
  sh "ls -lR /Users/casiano/campus-virtual/1920/dmsi1920/apuntes/ | grep -E  '^l'"
end

task :pushhtml => [ :b ] do
  sh "./scripts/build-and-push.sh"
end

desc "build"
task :b do
  sh "bundle exec jekyll build --future  -d ../website"
end

desc "build and watch"
task :bw do
  sh "bundle exec jekyll build --watch --future  -d ../website"
end

desc "dmsi: serve raw html from ../website"
task :rawserve => [:b] do
  sh "http-server ../website -p 9000"
end

