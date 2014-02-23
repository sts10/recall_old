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
    return `grep -r -n -i --include=*.rb '#{@query}' /Users/samschlinkert/Documents/code/flatiron`
  end

  Result = Struct.new(:file_path, :line_number, :code_snippet) 

  def parse_results
    results = get_grep_results.split("\n")
  
    results.map do |result|
      line_array = []
      line_array = result.split(":")
      Result.new(line_array[0], line_array[1], line_array[2])
    end 

  end

 
end
