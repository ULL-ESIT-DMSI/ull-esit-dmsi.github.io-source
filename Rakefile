desc "Publicar en GitHub los apuntes de DMSI"
task :default do
  sh "git ci -am 2020 && git push -u source master"
end

task :local do
  sh "jekyll s --no-watch --incremental -V -P 4413"
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
