require_relative "./person_test.cli"

class Scraper
#    @@michael = 0
#    @@dwight = 0
#    @@jim = 0
#    @@kelly = 0
#    @@meredith = 0
#    @@angela = 0
   
   url = 'https://www.thequiz.com/take-the-office-quiz-and-well-reveal-which-character-youre-most-like/'
   
   a = []
   hash = {q: [], a: []}

    def self.questions(url)
        html = Nokogiri::HTML(open(url))
        
        html.css(".w-question").each do |x|
            a << x
        end
        a.each do |x|
            question = x.css(".question-title").text
            hash[:q].push(question)
        end
    end
    
    
    def self.answers
        # upon scraping both answers and their ID must be collected. and compared to each other.
        html = Nokogiri::HTML(open(url))
        
    
    
    end 

end