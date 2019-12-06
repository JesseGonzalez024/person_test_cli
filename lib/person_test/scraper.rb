
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

      
    # Attempt to scrap all sought after data once. Avoid scraping multiple times. 
    # All written out questions belong to the Question object class. 
    # All answers are attributes of each Question object insatnce and therefore "belonging". 
    # Each Question instance has 4 answers. Answers are attributes.  
    # Each Answer has an ID attribute.
    # When Question.all is called all 35 questions must be stored. Along with their 4 Answer attributes.

end