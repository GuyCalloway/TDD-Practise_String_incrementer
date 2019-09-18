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

    it "foo19 --> foo20" do
        expect(incrementer("foo19")).to eq("foo20")
    end

    it "foo0199 --> foo0200" do
        expect(incrementer("foo0199")).to eq("foo0200")
    end

    it "fo-o1 --> fo-o2" do
        expect(incrementer("fo-o1")).to eq("fo-o2")
    end

    it "fo-o1 --> fo-o2" do
        expect(incrementer("fo-o01")).to eq("fo-o02")
    end

    xit "f1oo1 --> f1oo2" do
        expect(incrementer("f1oo1")).to eq("f1oo2")
    end


end

