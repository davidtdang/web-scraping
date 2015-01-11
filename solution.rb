# require 'open-uri'
require 'nokogiri'
# require 'restclient'
# require 'rubygems'

file = File.open("data/fat_angel.html", "r") ## retrieves string
doc = Nokogiri::HTML(file.read)  ## turns into nokogiri object so that we can use nokogiri methods


review = doc.css('ul.reviews li')[0]   ### by assigning review to [0], don't have to specify [0] for rest of scraping    ### raw HTML string
puts review

puts review.css('meta[itemprop="datePublished"]').attr("content")
puts review.css('.user-display-name').text
puts review.css('p[itemprop="description"]').text
puts review.css('meta[itemprop="ratingValue"]').attr("content")
#### puts review.css('meta[itemprop="author"]').attr("content")

## if we wanted multiple reviews with looping, without assigning review
# 0.upto(10) do |num|
#   puts doc.css('meta[itemprop="datePublished"]')[num].attr("content")
#   puts doc.css(".reviews .user-display-name")[num].text
#   puts doc.css('p[itemprop="description"]')[num].text
# end

##### if only doing for one review without looping
# puts doc.css('meta[itemprop="datePublished"]')[0].attr("content")
# puts doc.css(".reviews .user-display-name")[0].text
# puts doc.css('p[itemprop="description"]')[0].text
