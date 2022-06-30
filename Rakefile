desc "Publicar en GitHub en 1920 los apuntes de DMSI"
task :pub1920 => [ :pushhtml ] do
  sh "git ci -am 2021 && git push -u dmsi1920 master"
end

desc "Publicar en GitHub en 1920 los apuntes de DMSI"
task :pub2223 => [ :pushhtml ] do
  sh "git ci -am 2223 && git push -u dmsi2223 master"
end

desc "Publicar en GitHub los apuntes de DMSI"
task :default => [ :pushhtml ] do
  sh "git ci -am 2021 && git push -u origin master"
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

# desc "dmsi: serve raw html from ../website"
# task :rawserve => [:b] do
#  sh "http-server ../website -p 9000 -c-1"
# end

desc "dmsi: serve raw html from ../website. Use: \"rake 'rawserve[<portnumber>]'\" otherwise a random port will be chosen"
task :rawserve, [:port] => [:b] do |t, args|
  sh "http-server ../website -c-1 --port #{ args[:port] or Integer(1000+9000*rand())}"
end 
