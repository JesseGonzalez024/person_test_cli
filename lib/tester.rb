require 'open-uri'
require 'nokogiri'
require 'pry'

url = 'https://www.thequiz.com/take-the-office-quiz-and-well-reveal-which-character-youre-most-like/'

 
html = Nokogiri::HTML(open(url))
a = [] 
hash = {q: [], a: []}

html.css(".w-question").each do |x|
   a << x
end
  

a.each do |a|
        
        questions = a.css(".question-title").text
        hash[:q].push(questions)
  
  
        binding.pry      
        answers = a.css("button .answer-btn").text
        hash[:a].push(answers)
        

end









#                      ruby lib/tester.rb