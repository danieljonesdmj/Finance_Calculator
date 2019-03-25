require 'input'

describe Input do
    let(:input) { Input.new }
    valid_inputs = ['i', 'p', 'r', 't'] 
    
    describe '.get_first_variable' do
        it 'gets first variable from user' do
            allow(input).to receive(:get_first_variable) { 't' }            
            expect(input.get_first_variable).to eq('t')
        end

        it 'checks user inputted variable is valid' do
            input.instance_variable_set(:@first_variable, 't')
            expect(valid_inputs).to include(input.first_variable)
        end

        it 'raises an error if user inputted variable is invalid' do            
            allow(input).to receive(:get_first_variable).and_raise(StandardError.new("error"))
        end

        it 'sets first_variables as variables hash key' do
            input.instance_variable_set(:@variables, {'t' => nil})
            expect(input.variables).to eq({'t' => nil})
        end        
    end

    describe '.get_first_value' do
        it 'gets first value from user' do
            allow(input).to receive(:get_first_value) { 1 }            
            expect(input.get_first_value).to eq(1)
        end

        it 'checks user inputted value is a float' do
            input.instance_variable_set(:@first_value, 1.234)
            expect(input.first_value).to be_instance_of(Float)
        end
    
        it 'raises an error if user inputted value is invalid' do
            allow(input).to receive(:get_first_value).and_raise(StandardError.new("error"))
        end

        it 'sets first_value as the hash value to first_variable key' do
            input.instance_variable_set(:@variables, {'t' => 1})
            expect(input.variables).to eq({'t' => 1})
        end
    end

    describe '.get_second_variable' do
        it 'gets second variable from user' do
            allow(input).to receive(:get_second_variable) { 'r' }            
            expect(input.get_second_variable).to eq('r')
        end

        it 'checks user inputted variable is valid' do
            input.instance_variable_set(:@second_variable, 'r')
            expect(valid_inputs).to include(input.second_variable)
        end

        it 'raises an error if user inputted variable is invalid' do
            allow(input).to receive(:get_second_variable).and_raise(StandardError.new("error"))
        end

        it 'adds second_variable as key to the variables hash' do
            input.instance_variable_set(:@variables, {'t' => 1, 'r' => nil})
            expect(input.variables).to eq({'t' => 1, 'r' => nil})
        end
    end 

    describe '.get_second_value' do
        it 'gets second value from user' do
            allow(input).to receive(:get_second_value) { 2 }            
            expect(input.get_second_value).to eq(2)
        end

        it 'checks user inputted value is a float' do
            input.instance_variable_set(:@second_value, 1.234)
            expect(input.second_value).to be_instance_of(Float)
        end
        
        it 'raises an error if user inputted value is invalid' do
            allow(input).to receive(:get_second_value).and_raise(StandardError.new("error"))
        end

        it 'sets second_value as the hash value to second_variable key' do
            input.instance_variable_set(:@variables, {'t' => 1, 'r' => 2})
            expect(input.variables).to eq({'t' => 1, 'r' => 2})
        end
    end

    describe '.get_third_variable' do
        it 'gets third variable from user' do
            allow(input).to receive(:get_third_variable) { 'i' }          
            expect(input.get_third_variable).to eq('i')
        end

        it 'checks user inputted variable is valid' do
            input.instance_variable_set(:@third_variable, 'i')
            expect(valid_inputs).to include(input.third_variable)
        end

        it 'raises an error if user inputted variable is invalid' do
            allow(input).to receive(:get_third_variable).and_raise(StandardError.new("error"))
        end

        it 'adds third_variable as key to the variables hash' do
            input.instance_variable_set(:@variables, {'t' => 1, 'r' => 2, 'i' => nil})
            expect(input.variables).to eq({'t' => 1, 'r' => 2, 'i' => nil})
        end
    end 

    describe '.get_third_value' do
        it 'gets third value from user' do
            allow(input).to receive(:get_third_value) { 3 }            
            expect(input.get_third_value).to eq(3)
        end

        it 'checks user inputted value is a float' do
            input.instance_variable_set(:@third_value, 1.234)
            expect(input.third_value).to be_instance_of(Float)
        end
        
        it 'raises an error if user inputted value is invalid' do
            allow(input).to receive(:get_third_value).and_raise(StandardError.new("error"))
        end

        it 'sets third_value as the hash value to third_variable key' do
            input.instance_variable_set(:@variables, {'t' => 1, 'r' => 2, 'i' => 3})
            expect(input.variables).to eq({'t' => 1, 'r' => 2, 'i' => 3})
        end
    end
end