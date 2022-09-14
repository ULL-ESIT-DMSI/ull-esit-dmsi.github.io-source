desc "Publicar fuentes y build"
task :default => [ :pushhtml ] do
  sh "git ci -am 2223 && git push -u source master && git push -u dmsi2223 master"
end

task :serve do
  sh "bundle exec jekyll s --watch -V -P 4444"
end

desc "cd ../website and add .nojekyll and push to dmsi and dmsi2223"
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

desc "dmsi: serve raw html from ../website. Use: \"rake 'rawserve[<portnumber>]'\" otherwise a random port will be chosen"
task :rawserve, [:port] => [:b] do |t, args|
  sh "http-server ../website -c-1 --port #{ args[:port] or Integer(1000+9000*rand())}"
end 

desc "Publicar solo fuentes en GitHub 2223"
task :pub2223 do
  sh "git ci -am 2223 && git push -u dmsi2223 master"
end

