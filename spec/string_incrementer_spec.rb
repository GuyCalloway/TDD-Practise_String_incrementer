require 'string_incrementer'

describe "string Incrementer" do
    it "adds 1 to empty string" do
        expect(incrementer("")).to eq("1")
    end

    it "adds 1 to string" do
        expect(incrementer("string")).to eq("string1")
    end

    it "string1 -> string2" do
        expect(incrementer("string1")).to eq("string2")
    end

    it "string12 -> string13" do
        expect(incrementer("string12")).to eq("string13")
    end


    it "foo0042 +=1 " do
        expect(incrementer("foo0042")).to eq("foo0043")
    end

    it "foo9 --> foo10" do
        expect(incrementer("foo9")).to eq("foo10")
    end
end