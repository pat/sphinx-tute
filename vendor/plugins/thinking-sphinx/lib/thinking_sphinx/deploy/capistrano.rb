namespace :thinking_sphinx do
  namespace :install do
    task :apt do
      sudo "apt-get install sphinx"
    end
    
    task :gem do
      sudo "gem install freelancing-god-thinking-sphinx --source http://gems.github.com"
    end
  end
  
  task :configure do
    rake "thinking_sphinx:configure"
  end
  
  task :index do
    rake "thinking_sphinx:index"
  end
  
  task :start do
    configure
    rake "thinking_sphinx:start"
  end
  
  task :stop do
    configure
    rake "thinking_sphinx:stop"
  end
  
  task :restart do
    stop
    start
  end
  
  task :rebuild do
    stop
    index
    start
  end
  
  def rake(*tasks)
    tasks.each do |t|
      run "cd #{release_path} && rake #{t}"
    end
  end
end

after "deploy:update_code", "thinking_sphinx:configure"
