require 'pry'

 
class Results   
  attr_accessor :results_string

  ALL = []

  def initialize(query)
    @query = query
  end

  def url 
    "#{@query.downcase.gsub(" ", "_")}.html"
  end 


  def get_grep_results
    return `grep -r -n --include=*.rb '#{@query}' /Users/samschlinkert/Documents/code/flatiron`
  end

  def parse_results
    results = get_grep_results.split("\n")
    
    
    array_of_arrays = results.map do |result|
      line_array = []
      line_array = result.split(":")
 
    end 
  end

 

 
end
