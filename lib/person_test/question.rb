#                               ruby lib/person_test/question.rb


class Question
    attr_accessor :title, :answers
    @@all = []
    
    def initialize
        @@all << self
        @answers = []
    end
    
    def self.all
        @@all
    end

end

class Answer 
    attr_accessor :title, :id
    @@all = []
    
    def initialize
        @@all << self
    end
    
    def self.all
        @@all
    end
  

end