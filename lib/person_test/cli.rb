#Our CLI controller, responsible for user interactions

class PersonTest
    
    
    def call
        greeting
        sleep(1)
        tester
        # results method
    end
    
    def greeting
        #A llows name/ collects name and greets user by name
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
        character = {
            michael: [name: "Michael Scott", counter: 0, digit: "7642"],
            dwight: [name: "Dwight Schrute", counter: 0, digit: "7643"],
            jim: [name: "Jim Halpert", counter: 0, digit: "7644"],
            kelly: [name: "Kelly Kapoor", counter: 0, digit: "7645"],
            meredith: [name: "Meredith Palmer", counter: 0, digit: "7647"],
            angela: [name: "Angela Martin", counter: 0, digit: "7648"]
        }
        
        puts "Please type in the number of your answer"
        puts 'You may also type "exit" at any time'
        puts " "
        
        Scraper.new 
        Question.all.each_with_index do |question, index|
            puts " "
            puts "#{index += 1 }.  #{question.title}"
            puts " "
            answers  = question.answers.each_with_index do |answer, index|
                puts "#{index + 1}. #{answer.title}"
                        end   
                        input = gets.chomp
                        result = input.to_i - 1
                            
                            #binding.pry
                            if answers[result].id == "7642"
                                character[:michael][:counter] + 1

                            elsif answers[result].id == "7643"
                                character[:dwight][:counter] + 1

                            elsif answers[result].id == "7644"
                                character[:jim][:counter] + 1
                            
                            elsif answers[result].id == "7645"
                                character[:kelly][:counter] + 1

                            elsif answers[result].id == "7646"
                                character[:meredith][:counter] + 1

                            elsif answers[result].id == "7647"
                                character[:angela][:counter] + 1
                            end
                    end
    end
    
    
    
    def results
        # calculates majority of answers
        # compares answers to chacter profiles
        # return majority character resemblance
    end


end