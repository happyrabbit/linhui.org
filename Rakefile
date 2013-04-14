# Adopted from Scott Kyle's Rakefile
# http://github.com/appden/appden.github.com/blob/master/Rakefile

task :default => :server
 
desc 'Build site with Jekyll'
task :build do
  jekyll('--pygments')
end
 
desc 'Start server with --auto'
task :server do
  jekyll('--server --auto --pygments')
end

desc 'Build and deploy'
task :deploy => :build do
  sh 'rsync -rtzh --progress --delete _site/ foobarnb@foobarnbaz.com:~/public_html/'
end

def jekyll(opts = '')
  sh 'rm -rf _site'
  sh 'jekyll ' + opts
end
