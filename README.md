# Y.CMS [![Build Status](https://travis-ci.org/mohnstrudel/ycms.svg?branch=master)](https://travis-ci.org/mohnstrudel/ycms)

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

## Other interesting features

* Built in CKEditor support for body-colums

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
