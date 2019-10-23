desc "Publicar en GitHub los apuntes de DMSI"
task :default do
  sh "git ci -am 2020 && git push"
end

task :local do
  sh "jekyll s --no-watch --incremental -V -P 4413"
end
