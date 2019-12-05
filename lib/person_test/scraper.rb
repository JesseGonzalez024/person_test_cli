require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative '../person_test/cli'
require_relative '../person_test/question'

class Scraper
    
    def initialize
        @url = 'https://www.thequiz.com/take-the-office-quiz-and-well-reveal-which-character-youre-most-like/'
        create_question
    end
    
    def create_question
        
        html = Nokogiri::HTML(open(@url))
        html.css(".w-question").each do |section|
            q = Question.new
            q.title = section.css(".question-title").text
            section.css("button.answer-btn").each do |answer|
                a = Answer.new
                a.title = answer.text.gsub("\n", "")
                a.id = answer.attribute("data-resultid").value
                q.answers << a
            end
           
        end
    end

        

        
            
    # scrape all possible questions and answers. answers belong to question object. each question has a series of answers. answers class belongs to paticular question object.   
    #answer has id attribute
    
    #instantiate a new question object/ save the value of object, 

     # Call upon setter methods for 
     # questions are going to be their own object/ answers attributes
     # add a question objext file, defines the attributes

        
        
    #     end
    #     # be able to call this line of code: Question.all (=the 35 questions)
   
  



end