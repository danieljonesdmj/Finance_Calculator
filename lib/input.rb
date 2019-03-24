class Input

    attr_reader :first_variable, :first_value, :second_variable

    def initialize
        @valid_inputs = ['i', 'p', 'r', 't']    
        @variables = {}
    end
   
    def get_first_variable
        puts "What is the first variable?"
        @first_variable = gets.chomp
        raise "invalid input, please try again" if !@valid_inputs.include? @first_variable
        
        if @valid_inputs.include? @first_variable
            @variables[@first_variable] = nil
        else
        end
    end

    def get_first_value
        puts "What is the value of the first value?"
        @first_value = gets.to_f.round(2)
        
        if @first_value > 0
            @variables[@first_variable] = @first_value
        else
            raise "invalid input, please try again"
        end
    end

    def get_second_variable
        puts "What is the second variable?"
        @second_variable = gets.chomp

        if @valid_inputs.include? @second_variable
            @variables[@second_variable] = nil
        else
        end
    end
end