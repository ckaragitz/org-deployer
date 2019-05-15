What is this?
-------------
Test application, on Heroku, that spins up a Scratch Org when a record is created in Salesforce.

High Level Architecture
-----------------------
Flask API sitting on Heroku that executes a Bash script full of SFDX commands.

When a user creates an 'Attendee' record in Salesforce, process builder fires off an Apex REST callout.
The parameters of this callout are taken from the record (email, preferred username, etc) and the process
in Heroku is activated.

A new and shiny Scratch Org will automatically open up for the user afterwards.

How to Use?
-----------
Send an HTTP request to 'org-deployer.herokuapp.com/create' with two parameters: Email and Preferred Username

Example: org-deployer.herokuapp.com/create?email=YOUR_EMAIL_HERE&username=YOUR_PREFERRED_USERNAME
