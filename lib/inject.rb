class Array

	def my_inject(starting_point = nil)
		copy = self.dup
		if starting_point
			memory = starting_point #it's memory starts with the starting_point argument
		else	
			memory = copy.shift #this removes the first from the array given and assigns it to memory
		end

		copy.each do |item| # it iterates through the new array 1 by 1
			memory = yield(memory, item) #it runs the given block passing it the memory and the items 1 by 1
		end

		memory # returns the total result	
	end
end


