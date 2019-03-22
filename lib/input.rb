class Input

    attr_reader :first_variable
   
    def get_first_variable
        puts "What is the first variable?"
        @first_variable = gets.chomp
    end

end