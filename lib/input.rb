class Input

    attr_reader :first_variable, :first_value, :second_variable, :variables, :second_value, :third_variable, :third_value, :interest

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

    def get_second_value
        puts "What is the value of the second value?"
        @second_value = gets.to_f.round(2)

        if @second_value > 0
            @variables[@second_variable] = @second_value
        else
            raise "invalid input, please try again"
        end
    end

    def get_third_variable
        puts "What is the third variable?"
        @third_variable = gets.chomp
        valid_input(@third_variable)
        add_key(@third_variable)
    end

    def get_third_value
        puts "What is the value of the third value?"
        @third_value = gets.to_f.round(2)

        if @third_value > 0
            @variables[@third_variable] = @third_value
        else
            raise "invalid input, please try again"
        end
    end

    def valid_input(input)
        raise "invalid input, please try again" if !@valid_inputs.include? input
    end

    def add_key(key)
        if @valid_inputs.include? key
            @variables[key] = nil
        end
    end

    def calculate_interest(amount, rate, time)
        rate = rate/100.to_f    
        @interest = amount * rate * time
    end
end