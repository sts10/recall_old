
class SiteGenerator 

  def initialize(results)
    @results = results
  end
  def make_page!
    template_doc= File.open("lib/templates/example.html.erb", "r")

    template = ERB.new(template_doc.read)
    
    File.open("_site/page.html", "w") do |f|

        f.write(
          template.result(binding)
        )
      
      f.close
    end
  end

end