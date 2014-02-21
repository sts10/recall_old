require 'pry'

# Example: Run this from code directory: 


# grep -r -n --include=*.rb '.to_s' flatiron

# grep -r -n --include=*.rb '.to_s' /Users/samschlinkert/Documents/code/flatiron


# how to do this in ruby 
class Example  
  attr_accessor :results_string

  ALL = []

  def url 
    "#{@query.downcase.gsub(" ", "_")}.html"
  end 

  def self.all 
    ALL 
  end 

  def get_query
    puts "what would you like to search for?"
    @query = gets.chomp
  end

  def parse_query
    return `grep -r -n --include=*.rb '#{@query}' /Users/samschlinkert/Documents/code/flatiron`
    # results = `grep -r -n --include=*.rb '#{@query}' /Users/samschlinkert/Documents/code/flatiron`
    # results_string = results.dup

    # all_results = results.split("\n")
    
    
    # all_results.each do |result|
    #   line_array = []
    #   line_array = result.split(":")
    #   puts "In file: #{line_array[0]}"
    #   puts "#{line_array[1]} :  #{line_array[2]}"
      
    #   puts ""
    end


  end

 
end
