
class Question
    attr_accessor :title
    @@all = []
    
    def initialize
        @@all << self
    end
    def self.all
        @@all
    end
    def display_answers
        Answer.all.each.with_index(1) {|answer, idx| puts "#{idx}. #{answer.text}"}
    end
    def self.choose_question(input)
        Question.all[input]
    end
    def answer_selector
        Answer.all.select {|answer| answer.question == self }
    end
end

class Answer 
    attr_accessor :text, :id, :question
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
    def self.find_winner
        self.all.max {|x, y| x.counter <=> y.counter}
    end
end

