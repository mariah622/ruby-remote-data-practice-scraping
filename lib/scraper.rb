require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 

p doc.css(".tout__label.heading.heading--level-4")[0] 
p doc.css(".tout__label.heading.heading--level-4")[0].name
p doc.css(".tout__label.heading.heading--level-4")[0].attributes 