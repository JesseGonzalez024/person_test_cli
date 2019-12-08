#Our CLI controller, responsible for user interactions

class PersonTest
    def call
        # greeting
        # sleep(1)
        tester
        winner_results
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
        # puts " "
        # sleep(2)
        # puts "Please type in the number of your answer (1-4)"
        # puts " "
        
        Scraper.new
        game = Game.new
        game.start_quiz

    end
    def winner_results
        winner = Character.find_winner
        puts " "
        puts "The test is now complete."
        sleep(1)
        puts "The Office personality you resemble most is....."
        puts " "
        puts " "
        sleep(2)
        puts "#{winner.name}!!!"
        puts " "
        puts "Thanks for playing #{@user_name}!"
    end
end