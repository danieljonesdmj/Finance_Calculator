class Input

    attr_reader :first_variable
   
    def get_first_variable
        valid_inputs = ['i', 'p', 'r', 't']    
        variables = {}
        
        puts "What is the first variable?"
        @first_variable = gets.chomp

        if valid_inputs.include? first_variable
            variables[first_variable] = nil
        else
        end
    end

end