require 'input'

describe Input do
    let(:input) { Input.new }
    it { is_expected.to respond_to :get_first_variable }
    
    describe '.get_first_variable' do
        it 'gets first variables from user' do
            input.get_first_variable
            expect(input.first_variable).to eq('t')
        end

        it 'checks user input is valid' do
            valid_inputs = ['i', 'p', 'r', 't']    
            input.get_first_variable
            expect(valid_inputs).to include(input.first_variable)
        end
    end
end