# Y.CMS [![Build Status](https://travis-ci.org/mohnstrudel/ycms.svg?branch=master)](https://travis-ci.org/mohnstrudel/ycms)  [![Code Climate](https://img.shields.io/codeclimate/github/mohnstrudel/ycms.svg)](https://codeclimate.com/github/mohnstrudel/ycms)

A raw CMS made for developers.

Ever wanted to have a "stupid and simpel" CMS written in Ruby, but always receiving "complex" things like mountable engines where you don't know where to start customizing? Well, then Y.CMS is for you.

* Divided into admin and front part. Front is what your customers see. 

* Admin part has a minimal styling using a bootstrap admin template

* Front has almost zero styling, everything is up to you

## Already included models

Y.CMS comes preinstalled with a few basic models. This includes:

* Pages and PageCategories

* Posts and PostCategories

* Users

* Settings

Please note, that for Posts and Pages there are different category tables. This is due to their nature, since usually you want to namespace different category types.

## Human readable routes

Routes.rb are already set up in such way, that you routes for pages and posts on the front part will be human- and SEO-friendly.
Meaning, instead of
	
	http://domain.com/pages/1

or
	
	http://domain.com/categories/1/pages/12

you will get
	
	http://domain.com/my-awesome-page-title

and
	
	http://domain.com/my-category-name/my-awesome-page-title-number-twelwe

## I18n support

Y.CMS supports internationalization in best way - for admin part you have a nifty switcher between languages (which you can define in admin/settings/general_settings, which, in turn, take their values from Rails.config.languages). Each model's translation, which has an available translation, can be specified in the model.rb - file via:

```ruby
translates :title, :body
```
	

If a model has a translation, the translation fields are displayed all at once, meaning you don't have to switch between locales to fill in your data (pretty cool, eh?). On the main tab you'll always have fields for the _current_ locale, while on the second tab you'll have fields for all the remaining locales.

## Testing
Tests cover:

* Translations

* Controller actions

* Models

* Front paths

* Admin paths

## Installation

Git clone the project, then run db:seed, db:migrate.
DB:seed will generate the first superadmin user - email: "admin@example.com", password: "superadmin". Please change it asap after logging in.


## Other interesting features

* Built in CKEditor support for body-colums

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Contributors

Y.CMS was created by [@mohnstrudel](https://github.com/mohnstrudel) and is supervised by [Y.Creations](http://yadadya.com/)

Copyright (c) 2016-2017 Anton Kostin, released under the MIT license