begin
  require 'cucumber/rake/task'

  namespace :cucumber do
    Cucumber::Rake::Task.new(:ok, 'Run features that should pass') do |t|
      t.fork = true # You may get faster startup if you set this to false
      t.cucumber_opts = "--color --tags ~@wip --strict --format #{ENV['CUCUMBER_FORMAT'] || 'progress'}"
    end

    Cucumber::Rake::Task.new(:wip, 'Run features that are being worked on') do |t|
      t.fork = true # You may get faster startup if you set this to false
      t.cucumber_opts = "--color --tags @wip --format #{ENV['CUCUMBER_FORMAT'] || 'progress'}"
    end

    desc 'Run all features'
    task :all => [:ok, :wip]
  end

  desc 'Alias for cucumber:ok'
  task :cucumber => 'cucumber:ok'

  task :default => :cucumber
  
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end
