
class Game
    attr_accessor :question
    @@all = []
    def self.all
        @@all
    end
    def start_quiz
        input = nil
        while input != 'exit'
            current_question = 0
            
            while current_question < Question.all.size do
                @question = Question.choose_question(current_question)
                puts @question.title
                @question.display_answer
                input = gets.to_i - 1
                if valid_entry?(input)
                    answer_id = @question.answers[input].id
                    character = Character.find_by_id(answer_id)
                    character.counter += 1
                    #binding.pry
                    # puts "#{character.counter}"
                    current_question += 1
                else
                    puts "Nope"
                end
            end
        end
        #binding.pry
    end
    def valid_entry?(input)
        if (0..3).any? {|num| num == input}
          true
        else
          false
        end
    end 
    # def counting(input)
    #     if @question.answers[input].id == "7642"
    #         michael.counter += 1
    #     elsif @question.answers[input].id == "7643"
    #         dwight.counter += 1
    #     elsif  @question.answers[input].id == "7644"
    #         jim.counter += 1
    #     elsif  @question.answers[input].id == "7645"
    #         kelly.counter += 1
    #     elsif @question.answers[input].id == "7646"
    #         meredith.counter += 1
    #     elsif @question.answers[input].id == "7647"
    #         angela.counter += 1 
    #     end           
    # end
end