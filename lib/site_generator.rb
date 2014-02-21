
class SiteGenerator 


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