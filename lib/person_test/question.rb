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

    def display_answer
        self.answers.each.with_index(1){|answer, idx| puts "#{idx}. #{answer.title}"}
    end

    def self.choose_question(input)
        Question.all[input]
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

class Character
    attr_accessor :name, :counter, :id
    
    @@all = []
    
    def initialize (name, counter, id)
        @name = name
        @counter = counter
        @id = id
        @@all << self
    end
    def self.all
        @@all
    end
    def self.find_by_id(id)
        @@all.find {|character| character.id == id}
    end
end

