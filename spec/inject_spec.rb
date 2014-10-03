require 'inject'

describe Array do


	it 'should add like inject' do
		nums = [1,2,3,4]
		expect(nums.inject{|sum, item| sum + item }).to eq 10
		expect([1,2,3,4].my_inject{|sum, item| sum + item }).to eq 10
	end

	it "should times like inject" do

		nums = [1,2,3,4]
		expect(nums.inject{|sum, item| sum * item }).to eq 24
		expect(nums.my_inject{|sum, item| sum * item }).to eq 24

	end

	it "can add passing a starting point" do
		nums = [1,2,3,4]
		expect(nums.inject(10){|sum, item| sum + item }).to eq 20
		expect([1,2,3,4].my_inject(10){|sum, item| sum + item }).to eq 20
	end


end

# [1,2,3,4].inject do |acc, i|
 
# 	acc + i
# end




