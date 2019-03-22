require 'input'

describe Input do
    it { is_expected.to respond_to :get_first_variable }
    
    describe '.get_first_variable' do
        it 'gets first variables from user' do
            input = Input.new
            input.get_first_variable
            expect(input.first_variable).to eq('t')
        end
    end
end