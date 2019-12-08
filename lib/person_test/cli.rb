#Our CLI controller, responsible for user interactions

class PersonTest
    def call
        # greeting
        # sleep(1)
        tester
        binding.pry
        #results
    end
    def greeting
        puts "Welcome to The Office personality test!"
        sleep(2)
        puts "Which Office character do you most resemble?"
        sleep(2)
        puts "Find out!"
        sleep(1)
        puts "Please enter your name..."
        @user_name = gets.chomp
        puts "
Your test is now starting #{@user_name}..."
    end
    def tester
        

        puts " "
        sleep(2)
        puts "Please type in the number of your answer"
        puts 'You may also type "exit" at any time'
        puts " "
        
        Scraper.new
        Game.new.start_quiz
        
        
        
# Question.all.each_with_index do |question, index|
#     puts " "
#     puts "#{index += 1 }.  #{question.title}"
#     puts " "
#     Game.all << question
#     answers = question.answers.each_with_index do |answer, index|
#       puts "#{index + 1}. #{answer.title}"   
#     end
#     input = gets.chomp
  #  binding.pry
    end
end