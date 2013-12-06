=======
autoTest
========

Basic cucumber ruby app to test remote applications


=======
Setup
========

1.) git clone repo

2.) bundle install
For testing against Chrome Browser you will need to install chromedriver

3.) brew install chromedriver

For testing against Safari, you will need to install Google Go and sign up for app
http://blog.jambura.com/2013/03/27/test-your-websites-features-in-firefox-safari-and-chrome-using-rspec-and-capybara-with-selenium/

4.) brew install go
- Sign up for Safari Developer Program - https://developer.apple.com/programs/safari/
- Generate a signed certificate - https://developer.apple.com/certificates/index.action (NEED TO DO THIS STEP)
http://www.aquafadas.com/en/documentation/sample-page/developer-apple-com-2/generating-your-development-certificate/ 
- Download signed certificate and Double Click it to add it to keychain

5.) Clone Selenium project
- CD into the directory where you keep your projects
- git clone https://code.google.com/p/selenium/
- cd selenium/
- ./go safari

6.) Enable the Develop menu (Safari > Preferences > Advanced > Show Develop menu in menu bar)
7.) Open the Extension Builder (Safari > Develop > Show Extension Builder)
8.) Click "Add Extension" and locate selenium/build/javascript/safari-driver/SafariDriver.safariextension
9.) Click Install in top right corner

=======
Running Tests
========

1.) Set the environment you want to run in by running the command below. This will read in the files from /support/hook_files and copy it to /support/hooks.rb
thor list
    
2.) run...
  cucumber
