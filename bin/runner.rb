#!/usr/bin/env ruby
require_relative '../config/environment'
 


Example.run_grep

site_generator = SiteGenerator.new
site_generator.make_page!
