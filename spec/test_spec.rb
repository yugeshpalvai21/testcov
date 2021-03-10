RSpec.describe "Outer Example Group" do
    describe "Inner Example Group One" do
        it "example one" do 
            name = "yugesh"
            expect(name.length).to eq 6
        end
    end
    context "Inner Example Group Two" do
        it "example two" do
            number = 8
            expect(number * number).to eq 64
        end
    end
end