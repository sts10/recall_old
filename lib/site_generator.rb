
class SiteGenerator 

  def parse_results(results_string)
    results = results.split("\n")
    
    
    array_of_arrays = all_results.map do |result|
      line_array = []
      line_array = result.split(":")
      # puts "In file: #{line_array[0]}"
      # puts "#{line_array[1]} :  #{line_array[2]}"
      
      # puts ""
    end 
  end

  def make_page!(results) 
    template_doc= File.open("lib/templates/example.html.erb", "r")

    template = ERB.new(template_doc.read)
    
    File.open("_site/page.html", "w") do |f|
      
        # new_example = Example.new    

        f.write(
          template.result(binding)
        )
      
      f.close
    end
  end

end