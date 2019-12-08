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
        
        michael = Character.new("Michael Scott", 0, "7642")
        dwight = Character.new("Dwight Schrute", 0, "7643")
        jim = Character.new("Jim Halpert", 0, "7644")
        kelly = Character.new("Kelly Kapoor", 0, "7645")
        meredith = Character.new("Meredith Palmer", 0, "7647")
        angela = Character.new("Angela Martin", 0, "7648")
        
        puts "Please type in the number of your answer"
        puts 'You may also type "exit" at any time'
        puts " "

        Game.new
        Scraper.new
        
        Question.all.each_with_index do |question, index|
            puts " "
            puts "#{index += 1 }.  #{question.title}"
            puts " "

            Game.all << question

            answers = question.answers.each_with_index do |answer, index|
              puts "#{index + 1}. #{answer.title}"   
            end
            
            input = gets.chomp

            binding.pry
            
           

            

            
            
            
            # def results
            
            
            
            #     puts "Your test is now complete"
            #     # puts "Calculating."
            #     # puts "Calculating.."          Simulate Loading/ Thinking response
            #     # puts "Calculating..."
            #     # puts "Calculating...."
            #     puts " "
            #     puts "#{@user_name}, the Office character you most resemble is: "   #Why wont' name return?
            #     puts " "
            #     puts "#{v[:name]}"            #Add Character Bio
            #     puts " "
            #     puts "Thanks for playing!"
            
            # end
        end
    end
end
