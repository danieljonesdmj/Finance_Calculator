require 'input'

describe Input do
    let(:input) { Input.new }
    it { is_expected.to respond_to :get_first_variable }
    
    describe '.get_first_variable' do
        it 'gets first variable from user' do
            @first_variable = 't'
            expect(@first_variable).to eq('t')
        end

        it 'checks user inputted variable is valid' do
            valid_inputs = ['i', 'p', 'r', 't']    
            @first_variable = 't'
            expect(valid_inputs).to include(@first_variable)
        end

        it 'raises an error if user inputted variable is invalid' do
            @first_variable = 'e'
            expect { first_variable }.to raise_error
        end
    end

    describe '.get_first_value' do
        it 'gets first value from user' do
            expect(input.get_first_value).to eq(10)
        end
    end
end