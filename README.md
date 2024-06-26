# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Use this guide(https://gorails.com/setup/macos/14-sonoma) and choose the specific OS to install all dependencies 
* Ruby version: 3.3

* System dependencies Mac/Linux

* Configuration, rails v7.1.4.2

* Database creation postgresql( brew install postgres; create a new db and a new user with password specify in database.yml)

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Overview

BuyCom -- A commerce store. We are managing the inventory of the products sold.

The assignment requested the usage of a model UI framework; Due to time constraints, have implemented the UI with rails inbuilt MVC as well.

Created a User Model with phone number(String)(duplicates allowed), and email(text)(duplicated not allowed), username(string)(duplicate not allowed) rails g model User user_name:string email:string phone_number:string

Created a Product model with pcode as non duplicate

Created Order Details Model with a belongs_to relationship with both product and user. And the user has_many order details. 
and a product has_one order_detail.


# The script for inserting into the database:
The methods for the script are in users_helper.rb. This can be used to integrate more users into the database with a fileupload system instead of a csv uploaded from the server.
The script can also be found in upload_data.rb in the main file directory
ruby upload_data.rb should create all the necessary files

Assumption: All the files are stored in /tmp folder with users.csv, products.csv and order_details.csv as the file names. 


# FUTURE TASKS
Will plan to move to a react.js front end over time.
Will need to move the processing to a sidekiq job