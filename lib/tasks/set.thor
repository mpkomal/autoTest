class Set < Thor
  include Thor::Actions

  no_tasks do

    def copy_environment(new_environment)
      run("cp features/support/hook_files/hooks.rb.#{new_environment} features/support/hooks.rb")
    end

  end

  desc "view", "View current hooks.rb configuration"
  def view
    run("cat features/support/hooks.rb")
  end

# LOCAL
  desc "local_firefox", "Run tests locally using Firefox"
  def local_firefox
    copy_environment("local.FF")
  end

  desc "local_chrome", "Run tests locally using Chrome"
  def local_chrome
    copy_environment("local.Chrome")
  end
	
  desc "local_safari", "Run tests locally using Safari"
  def local_safari
    copy_environment("local.Safari")
  end

# STAGING
  desc "staging_firefox", "Run tests on staging using Firefox"
  def staging_firefox
    copy_environment("staging.FF")
  end

  desc "staging_chrome", "Run tests on staging using Chrome"
  def staging_chrome
    copy_environment("staging.Chrome")
  end
	
  desc "staging_safari", "Run tests on staging using Safari"
  def staging_safari
    copy_environment("staging.Safari")
  end

# PRODUCTION
  desc "production_firefox", "Run tests on production (USE cucumber -p production)"
  def production_firefox
    copy_environment("production.FF")
  end

end