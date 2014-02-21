
class SiteGenerator 

  
  def make_page! 
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

end