
##Project Setup
`rails db:create db:migrate`
`bundle install`

##Running app
`rails s`

##Task
In order to get some insight into your coding style and approach to problem solving, we would like to give you a small programming task for you to solve. You can either upload the project to Github or send it to us via mail. It’s not supposed to win any beauty contest either, so it doesn’t really matter how the views look, as long as the functionality is there.

Ideally you create an initial commit after the invocation of `rails new`, so it’s easy to blank out the skeleton code.

Here it goes:
Sample Task: Scheduled Reminders
Description: write an application that sends scheduled reminders to its users.
Functionality:
- a user can register with email and password
- after signing in, they see a list of existing reminders and can set up new ones
- once a month, on a configurable day and time, the application sends them an email with the reminder title and text
- existing reminders can be deleted from the list
Configuration of the reminder:
- title
- description / text
- day and time of month. Should be any possible day of the month. I.e. “1st of month”, “2nd of month”, but also “last of month”, “2nd last month”

Ideally, rudimentary tests should be in place, too. If you have any questions, feel free to ask.
