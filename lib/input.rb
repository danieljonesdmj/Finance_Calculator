class Input

    attr_reader :first_variable, :first_value, :second_variable, :variables, :second_value, :third_variable, 
    :third_value, :interest, :amount, :time, :rate, :formatted_output, :funky_font, :result, :decimal_place_count

    def initialize
        @valid_inputs = ['i', 'p', 'r', 't']    
        @variables = {}
    end
   
    def get_first_variable
        @first_variable = ''
        @valid_inputs = ['i', 'p', 'r', 't']    
        until @valid_inputs.include? @first_variable
            puts "What will the first variable be?"
            @first_variable = gets.chomp
        end
        
        @valid_inputs.delete(@first_variable)
            add_key(@first_variable)
            get_first_value
    end

    def get_first_value
        puts "What is the value of the first variable?"
        @first_value = gets.strip
        
        if  @first_value.to_f > 0  
            if @first_value.include?('.')
                decimal_place_counter(@first_value)

                if decimal_place_count < 3
                    @variables[@first_variable] = @first_value.to_f
                    get_second_variable
                else
                    get_first_value
                end
            else
                @variables[@first_variable] = @first_value.to_f
                get_second_variable
            end
        else
            get_first_value
        end
    end

    def get_second_variable
        @second_variable = ''
        until @valid_inputs.include? @second_variable
            puts "What will the second variable be?"
            @second_variable = gets.chomp
        end
        
            @valid_inputs.delete(@second_variable)
            add_key(@second_variable)
            get_second_value
    end

    def get_second_value
        puts "What is the value of the second variable?"
        @second_value = gets.strip
        
        if  @second_value.to_f > 0  
            if @second_value.include?('.')
                decimal_place_counter(@second_value)

                if decimal_place_count < 3
                    @variables[@second_variable] = @second_value.to_f
                    get_third_variable
                else
                    get_second_value
                end
            else
                @variables[@second_variable] = @second_value.to_f
                get_third_variable
            end
        else
            get_second_value
        end
    end

    def get_third_variable
        @third_variable = ''
        until @valid_inputs.include? @third_variable
            puts "What will the third variable be?"
            @third_variable = gets.chomp
        end
        
            @valid_inputs.delete(@third_variable)
            add_key(@third_variable)
            get_third_value
    end

    def get_third_value
        puts "What is the value of the third variable?"
        @third_value = gets.strip
        
        if  @third_value.to_f > 0  
            if @third_value.include?('.')
                decimal_place_counter(@third_value)

                if decimal_place_count < 3
                    @variables[@third_variable] = @third_value.to_f
                    calculate
                else
                    get_third_value
                end
            else
                @variables[@third_variable] = @third_value.to_f
                calculate
            end
        else
            get_third_value
        end
    end

    def decimal_place_counter(input)
        @decimal_place_count = input[input.index('.')..-1].delete('.').size   
    end

    def add_key(key)
        if @valid_inputs.include? key
            @variables[key] = nil
        end
    end

    def calculate_interest(amount, rate, time)
        rate = rate/100.to_f    
        @interest = amount * rate * time
        output(@interest)
    end

    def calculate_amount(interest, rate, time)
        @amount = interest * rate * time
        output(@amount)
    end

    def calculate_time(amount, rate, interest)
        rate = rate/100.to_f    
        @time = interest/(amount * rate)
        output(@time)
    end

    def calculate_rate(amount, interest, time)
        @rate = time/(amount / interest)
        output(@rate)
    end

    def calculate
        if !@variables.include?('i')
            calculate_interest(@variables['p'], @variables['r'], @variables['t'])
        elsif !@variables.include?('p')
            calculate_amount(@variables['i'], @variables['r'], @variables['t'])
        elsif !@variables.include?('t')
            calculate_time(@variables['p'], @variables['r'], @variables['i'])
        elsif !@variables.include?('r')
            calculate_rate(@variables['p'], @variables['i'], @variables['t'])
        else 
        end
    end

    def output(calculated_value)
        @formatted_output = calculated_value.to_f.round(2)
        @result = @formatted_output.to_s.split(//)
        create_funky_font(@result)
    end

    def create_funky_font(output)
        @funky_font_numbers = {'0' => 
            '
            ===
            @@@
            @ @
            @ @
            @ @
            @@@
            ===',
            
            '1' => 
            '
            =
            @
            @
            @
            @
            @
            =', 
            
            '2' =>
            '
            ===
            @@@
              @
            @@@
            @
            @@@
            ===',
            
            '3' =>
            '
            ===
            @@@
              @
            @@@
              @
            @@@
            === ',
            
            '4' => 
            '
            ===
            @ @
            @ @ 
            @@@
              @
              @
            ===',
        
            '5' => 
            '
            ===
            @@@
            @ 
            @@@
              @
            @@@
            ===',
            
            '6' => 
            '
            ===
            @@@
            @ 
            @@@
            @ @
            @@@
                
            ===',
            
            '7' =>
            '
            ===
            @@@
              @
              @
              @
              @
            ===',
                
            '8' =>
            '
            ===
            @@@
            @ @
            @@@
            @ @
            @@@
            ===',
                
            '9' =>
            '
            ===
            @@@
            @ @
            @@@
              @
            @@@
            ===',
            
            '.' =>
            '
              =
            
            
            
              @
              =',
    
            ' ' =>
            '=
            
            
            
            
            
            ='
        }
        
        @funky_font = []
        output.each { |e| @funky_font.push(@funky_font_numbers[e])  }
        @joined_font = @funky_font.join()
        print @joined_font
        continue_or_quit
    end

    def welcome
        puts 'Welcome to Funky Finance!'
        get_first_variable
    end

    def continue_or_quit
        @user = ''
        input = ['c', 'q']
        until input.include? @user
            puts 'Continue or quit?'
            @user = gets.chomp

            if @user == 'c'
                @variables.clear
                get_first_variable
            elsif @user == 'q' 
            end
        end
    end
end