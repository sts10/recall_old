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

  def get_full_snippet 
    @results.each do |result|
      
      File.open("#{result.file_path}", "r") do |f|
        f.each_line do |line|
          if line < (result.line_number - 5) || line > (result.line_number + 15)
            next
          else 

          end
        end
      end

    end
  end 
 
end
