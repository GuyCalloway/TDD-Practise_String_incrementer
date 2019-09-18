require 'string_incrementer'

describe "string Incrementer" do
    it "adds 1 to empty string" do
        expect(incrementer("")).to eq("1")
    end

    it "adds 1 to string" do
        expect(incrementer("string")).to eq("string1")
    end
end