class Input

    attr_reader :first_variable, :first_value, :second_variable, :variables

    def initialize
        @valid_inputs = ['i', 'p', 'r', 't']    
        @variables = {}
    end
   
    def get_first_variable
        puts "What is the first variable?"
        @first_variable = gets.chomp
        valid_input(@first_variable)
        add_key(@first_variable)
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
        valid_input(@second_variable)
        add_key(@second_variable)
    end

    def valid_input(input)
        raise "invalid input, please try again" if !@valid_inputs.include? input
    end

    def add_key(key)
        if @valid_inputs.include? key
            @variables[key] = nil
        end
    end
end