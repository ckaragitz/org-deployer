What is this?
-------------
Test application, on Heroku, that spins up a Scratch Org when a record is created in Salesforce.

High Level Architecture
-----------------------
Flask API sitting on Heroku that executes a Bash script full of SFDX commands.

When a user creates a 'Team' record in Salesforce, process builder fires off an Apex REST callout.
The parameters of this callout are taken from the record (email, preferred username, etc) and the process
in Heroku is activated.

A new and shiny Scratch Org will automatically open up for the user afterwards.
