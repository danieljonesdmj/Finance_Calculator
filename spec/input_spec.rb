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
    end 
end