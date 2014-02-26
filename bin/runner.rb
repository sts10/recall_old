#!/usr/bin/env ruby
require_relative '../config/environment'
 

puts "What would you like to search for?"
query = gets.chomp
  

my_results = Results.new(query)

site_generator = SiteGenerator.new(my_results.get_full_snippet)

site_generator.make_page!
