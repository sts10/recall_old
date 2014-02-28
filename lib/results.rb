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
    return `grep -r -n -i --include=*.rb '#{@query}' /Users/samschlinkert/Documents/code/flatiron | sort -r`
  end

  Result = Struct.new(:file_path, :line_number, :code_snippet, :full_code) 

  def parse_results
    results = get_grep_results.split("\n")
  
    results.map do |result|
      line_array = []
      line_array = result.split(":")
      Result.new(line_array[0], line_array[1], line_array[2], [''])
    end 

  end

  def get_full_snippet 
    results = parse_results # array of Result structs

    results.each do |result| # iterate over the Result structs
    
      line_num = 0

      File.open("#{result.file_path}", "r") do |f|
        f.each_line do |line|
          line_num = line_num + 1 
          if line_num < (result.line_number.to_i - 5) || line_num > (result.line_number.to_i + 15)
            next
          else 
            result.full_code << line
          end
        end
      end

    end
  end 
 
end
