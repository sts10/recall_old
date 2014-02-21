#!/usr/bin/env ruby
require_relative '../config/environment'
 

my_example = Example.new 

my_example.get_query
results = my_example.parse_query

site_generator = SiteGenerator.new
site_generator.make_page!(results)
