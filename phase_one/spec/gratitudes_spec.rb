require 'gratitudes'

RSpec.describe Gratitudes do
    it "Creates a list things to be grateful for" do
        gratitude = Gratitudes.new
        gratitude.add("home")
        gratitude.add("kids")
        output = gratitude.format
        expect(output).to eq "Be grateful for: home, kids"
    end
    
end
