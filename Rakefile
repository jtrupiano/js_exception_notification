require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
load File.join(File.dirname(__FILE__), 'tasks', 'cucumber.rake')

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the js_exception_notification plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the js_exception_notification plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'JsExceptionNotification'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
