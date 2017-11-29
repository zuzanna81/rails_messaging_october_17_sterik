# Working with legacy code

## Week 5 assessment at Craft Academy, St: Erik team

**About the assessment**

The assessment is to work on an application that is undocumented and not actively maintained. The team is assign to, without having any requirements specified, get the code base, deploy it to a staging server and get it to a state where adding new functionality is possible. That includes Acceptance Unit Tests using testing framework Cucumber and RSpec as well as setting up an automated way of deploying the software.

**Installation instructions**

1. Fork the repository from the Craft Academy's account on GitHub and clone it into your computer
2. Add Craft Academy's repository as your `git remote add upstream + url`
3. Make sure you use the right ruby version, otherwise switch to that version
4. Run `bundle install` (or `gem install bundler` if switched ruby version)
5. Add some gems to Gemfile
6. Run `rails db:create db:migrate`, then `rails db:test:migrate`
7. Initialize test framework cucumber, run `cucumber --init` (this will create feature folder and with some files in it)
8. Initilaize RSpec, run `rspec --init` (this will create spec folder with some files in it)
9. Fire up a server, run `rails server`
10. Go to localhost:3000 and explore the application

**Planning the workflow**

1. Create an account on Pivotal Tracker
2. Invite other members of your team to collaborate
3. Go to the application and inspect it
4. List all the features and add them to the scrum board on Pivotal Tracker
5. Add user stories to feature items
