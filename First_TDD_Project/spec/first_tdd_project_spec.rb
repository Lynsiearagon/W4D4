require "first_tdd_project.rb"

# describe "#my_uniq" 
#     it "takes in an array" do 
#         expect { my_uniq([1,2,3])}.to_not raise_error
#     end 

#     it "should remove duplicates and return a new array" do 
#         expect (my_uniq([1,2,3,3,4,4])).to eq([1,2,3,4])
#     end

#     it "return the unique elements in the order they first appear" do 
#         expect (my_uniq([3,3,4,2,2,1])).to eq([3,4,2,1])
#     end 
# end


describe "#two_sum" do
    it "takes in an array" do
        expect { two_sum([-1,0,2,-2,1]) }.to_not raise_error
    end 

    it "returns new array ordered with pairs of sum equal to zero" do
        expect(two_sum([-1,0,2,-2,1])).to eq([[0,4],[2,3]])
    end
end