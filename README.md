# YsrmailParser

The gem is use for Parsing email from raw data .
TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ysrmailParser'
```

Or install it yourself as:

    $ gem install ysrmailParser

## Usage

Create the csv file on Desktop if you are using Linux
Name it t1.csv . put all your raw data in it

create the new ruby Project

require 'rubygems'
require 'ysrmailParser'

**********************************
temp = YsrmailParser::YsrMail.new
puts temp.test
**********************************

It returns email and count of each email how many times it returns .
