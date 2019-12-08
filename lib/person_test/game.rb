
class Game
    attr_accessor :question
    @@all = []
    def self.all
        @@all
    end
    def start_quiz
        input = nil
        if Game.all.size <= 35 
                while input != 'exit' 
                    @q_count = 0
                    Question.all.each_with_index do |question, index|
                        puts " "
                        puts "##{index + 1}. #{question.title}"
                        puts " "
                        @q_count += 1 
                        @answers = question.answers.each_with_index do |answer, idx|
                            puts "#{idx + 1}. #{answer.title}"
                            end
                            user_input = gets.strip
                            if valid_entry? (user_input)
                                @@all << 1
                            else
                             redo_question
                            end
                            binding.pry
                    end
                end
            puts "Thanks for playing"
        end
    end
    def valid_entry?(user_input)
        if (1..4).any? {|num| num == user_input.to_i}
            true
            counting (user_input)
        else
            false
            puts " "
            puts "Please enter a number 1-4"
            puts " "
        end
    end
    def redo_question
        Question.all[@q_count - 1].answers do |x|
            puts x.title
        end
    end
    def counting(user_input) 

        result = user_input.to_i
        
        if @answers[result].id == "7642"
            michael.counter += 1
        elsif @answers[result].id == "7643"
            dwight.counter += 1
        elsif @answers[result].id == "7644"
            jim.counter += 1
        elsif @answers[result].id == "7645"
            kelly.counter += 1
        elsif @answers[result].id == "7646"
            meredith.counter += 1
        elsif @answers[result].id == "7647"
            angela.counter += 1 
        end               
    end
end