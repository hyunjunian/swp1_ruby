require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://joongang.joins.com/"

page = Nokogiri::HTML(open(PAGE_URL))

articles = page.css('.main_article li a')

articles.each do |article|
    puts article.text
    puts Nokogiri::HTML(open(article['href'].to_s)).css('#article_body').text
end