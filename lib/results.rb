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

  Result = Struct.new(:file_path, :line_number, :code_snippet) 

  def parse_results
    results = get_grep_results.split("\n")
  
    array_of_result_structs = []
  
    results.each do |result|
      line_array = []
      line_array = result.split(":")
      this_result = Result.new(line_array[0], line_array[1], line_array[2])
      array_of_result_structs << this_result
    end 

    return array_of_result_structs

  end

  

 
end
