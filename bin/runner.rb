#!/usr/bin/env ruby
require_relative '../config/environment'
 

my_example = Example.new 

my_example.get_query
results = my_example.return_grep

site_generator = SiteGenerator.new

site_generator.parse_results(results)
site_generator.make_page!
