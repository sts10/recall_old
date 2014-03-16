#!/usr/bin/env ruby
require_relative '../config/environment'
 
if ARGV[0]
  query = ARGV[0]
else
  puts "What would you like to search for?"
  query = gets.chomp
end
  

my_results = Results.new(query)

site_generator = SiteGenerator.new(my_results.get_full_snippet)

site_generator.make_page!
