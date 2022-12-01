require "first_tdd_project.rb"
describe Array do
    describe "#my_uniq" do
        it "should remove duplicates from array and return a new array" do 
            expect([1, 2, 3, 3, 4, 4].my_uniq).to eq([1, 2, 3, 4])
        end

        it "return the unique elements in the order they first appear" do 
            expect([3,3,4,2,2,1].my_uniq).to eq([3,4,2,1])
        end 

        it "should not call Array#uniq" do 
            array = [1, 2, 3, 3, 4, 4]
            expect(array).to_not receive(:uniq)
            (array).my_uniq
        end 
    end
end 

describe "#two_sum" do
    it "takes in an array" do
        expect { two_sum([-1,0,2,-2,1]) }.to_not raise_error
    end 

    it "returns new array ordered with pairs of sum equal to zero" do
        expect(two_sum([-1,0,2,-2,1])).to eq([[0,4],[2,3]])
    end
end

describe "#my_transpose" do 
    it "takes in a 2D array" do
        expect { my_transpose([[0,1,2],[3,4,5],[6,7,8]]) }.to_not raise_error
    end

    it "switches each element's row and col and returns a new 2D array" do
        expect(my_transpose([[0,1,2],[3,4,5],[6,7,8]])).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end

    it "should not call Array#transpose" do 
        array = [[0,1,2],[3,4,5],[6,7,8]]
        expect(array).to_not receive(:transpose)
        (array).my_transpose
    end 

end 

