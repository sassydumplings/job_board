# README

## Welcome to the Job Board

An applicant should be able to:
* Log in with email and password. No email confirmation needed.
* See all available job openings for various employers.
* Job openings should contain a title and description and the employer name.
* Have a button to apply to a job opening they have not applied to before.
* An applicant should not be able to apply to the same job opening twice.

An employer should be able to:
* Log in with email and password. No email verification needed
* Create job openings.
* See all the applicants who applied to their job openings by name.

Users have been seeded in the db:
* password for all accounts are for_demo
* applicant1@example.com, applicant2@example.com are the applicants
* employer1@example.com, applicant2@example.com are the employers

## Environment && Installation
Ruby 2.3.7p456 and Rails 5.2.2

## Deployed on Heroku
https://intense-fortress-62641.herokuapp.com/



Clone this repo
Run 'bundle install'
Run 'rails db:migrate'
Run 'rails db:seed'
Run 'rails server'

In the browser:
http://localhost:3000

## Known issues:
* no unit or integration tests (ran out of time)
* missing pagination
* sign up and registration flow for users missing
* admin user was not deployed
* not deployed to AWS or Heroku (only running locally)
* Jobs controller has repetive code that could be DRYed up

## Future improvements:
* front end in react
* add company objects
* enable multiple hiring staff to post job listings for the same company
* allow applicants to add recruiters
* allow applicants to upload resumes and cover letters
* online interview scheduling
* allow employers to edit, update and archive Job listings