require 'nokogiri'
require 'open-uri'


class ArticleParser

  def parse(url)
    
    page = self.getHtmlData(url)

    # Get all the 'rows' from the page.  The rows alternate
    # between the 'title' row and the corresponding 'subtext' row
    # that contains other info
    htmlRows = self.getHtmlRows(page)


  end

  def getHtmlData(url)
    Nokogiri::HTML(open(url))
  end

  def getHtmlRows(page)
    page.xpath("//table/tr")
  end


end



