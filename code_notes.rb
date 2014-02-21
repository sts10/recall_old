require 'pry'

# Example: Run this from code directory: 


# grep -r -n --include=*.rb '.to_s' flatiron

# grep -r -n --include=*.rb '.to_s' /Users/samschlinkert/Documents/code/flatiron


# how to do this in ruby 
class Example  
  attr_accessor :query, :url 

  ALL = []

  def url 
    "#{query.downcase.gsub(" ", "_")}.html"
  end 

  def self.all 
    ALL 
  end 


  def run_grep
    puts "what would you like to search for?"
    query = gets.chomp
    # results = shell %Q[grep -r -n --include=*.rb '.to_s' /Users/samschlinkert/Documents/code/flatiron]

    results = `grep -r -n --include=*.rb '#{query}' /Users/samschlinkert/Documents/code/flatiron`
    # file_path, line_num, code = results.split(":")
    # puts results2.class
    # puts results2
    all_results = results.split("\n")
    
    all_results.each do |result|
      line_array = []
      line_array = result.split(":")
      puts "In file: #{line_array[0]}"
      puts "#{line_array[1]} :  #{line_array[2]}"
      
      puts ""
    end

  end

 
end

  def make_page
    template_doc= File.open("lib/templates/example.html.erb", "r")

    template = ERB.new(template_doc.read)
    
    File.open("_site/#{Example.url}", "w") do |f|
      Example.all.each do |example|      
        f.write(
          template.result(binding)
        )
      end
      f.close
    end
  end


run_grep
make_page
# So our “consult” gem would do the following: 

# $ consult “to_s” [ruby]

# —> grep -r -n —include=*.rb ‘.to_s CODEDIRECTORY 

# Try to pipe this result into that select menu. 