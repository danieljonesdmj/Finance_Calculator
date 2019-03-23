class Input

    attr_reader :first_variable, :variables, :first_value
   
    def get_first_variable
        valid_inputs = ['i', 'p', 'r', 't']    
        @variables = {}
        
        puts "What is the first variable?"
        @first_variable = gets.chomp
        raise "invalid input, please try again" if !valid_inputs.include? first_variable

        if valid_inputs.include? first_variable
            @variables[first_variable] = nil
        else
        end
    end

    def get_first_value
        puts "What is the value of the first variable?"
        @first_value = gets.to_f.round(2)
        @variables[first_variable] = @first_value
    end


end