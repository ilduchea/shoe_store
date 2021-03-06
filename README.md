# Shoe Store

#### _**A site to create and update shoes and stores.**_

#### _**By Tyler Stephenson, May 12, 2017**_

## Description
This site is designed for a shoe distributor to track shoe brands and stores.

## Specifications

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
* As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
* As a user, I want store and brand names to have a maximum of one hundred characters.

## Setup/Installation Requirements

* clone the git repository
* navigate to the directory in your terminal
* run the following commands to create the database and tables
* rake db:create
* rake db:migrate
* ruby app.rb
* Open localhost:4567 in chrome.

## Known Bugs
_No known bugs_

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

## Technologies Used

* HTML5
* CSS3
* Bootstrap
* Ruby
* Sinatra
* ActiveRecord

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
