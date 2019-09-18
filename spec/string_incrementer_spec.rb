require 'string_incrementer'

describe "string Incrementer" do
    it "adds 1 to empty string" do
        expect(incrementer("")).to eq("1")
    end
end