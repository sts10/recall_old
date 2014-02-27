
class SiteGenerator 

  def initialize(results)
    @results = results
  end
  def make_page!
    template_doc= File.open("lib/templates/sublime.rb.erb", "r")

    template = ERB.new(template_doc.read)
    
    File.open("_site/ruby_file.rb", "w") do |f|

        f.write(
          template.result(binding)
        )
      
      f.close
    end

    `open _site/ruby_file.rb` 
  end

end