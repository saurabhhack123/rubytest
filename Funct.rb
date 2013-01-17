module Funct

    def filter(&test)

		result = []

		self.each do  |n|

			if(test.call(n))

				result.push(n)

			end

		end

		return result

	end


	def find(&test)

		self.each do |n|
			if(test.call(n))

				return n

			end
        
		end
           
	end

end

#extending the module in array class
class Array
	extend Funct
end
