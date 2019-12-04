#Our CLI controller, responsible for user interactions

class PersonTest::CLI
    
    
    def call
        greeting
        sleep(1)
        tester
        # results method
    end
    
    def greeting
        # #allows name/ collects name and greets user by name
        puts "Welcome to The Office personality test!"
        sleep(2)
        puts "Which Office character do you most resemble?"
        sleep(2)
        puts "Find out!"
        sleep(2)
        puts "Please enter your name..."
        @user_name = gets.chomp
        puts "
        
Your test is now starting #{@user_name}..."
        puts 'You may also type "exit" at any time'
end
    
    def tester
        @character_hash = {
            michael => [name: "Michael Scott", counter: 0, digit: "7642"]
            dwight => [name: "Dwight Schrute", counter: 0, digit: "7643"]
            jim => [name: "Jim Halpert", counter: 0, digit: "7644"]
            kelly => [name: "Kelly Kapoor", counter: 0, digit: "7645"]
            meredith => [name: "Meredith Palmer", counter: 0, digit: "7647"]
            angela => [name: "Angela Martin", counter: 0, digit: "7648"]
        }
        
        while input != 'exit'
            puts "Please type in the number of your answer"
            
            #display questions
            #display answers
            
            input = gets.chomp
            case input
                if input == #if user input matches an answer saved under a character (7642)
                    hash[:michael][:counter] += 1
                if input == (7643)
                    hash[:dwight][:counter] += 1
                if input == (7644)
                    hash[:jim][:counter] += 1
                if input == (7645)
                    hash[:kelly][:counter] += 1
                if input == (7646)
                    hash[:meredith][:counter] += 1
                if input == (7647)
                    hash[:angela][:counter] += 1
                else
                    puts "Please type a number based on the answers listed."
                end
            end
        
        
        #accepts answers
        #saves answer
    end
    def results
        # calculates majority of answers
        # compares answers to chacter profiles
        # return majority character resemblance
    end


end
PersonTest.new.call