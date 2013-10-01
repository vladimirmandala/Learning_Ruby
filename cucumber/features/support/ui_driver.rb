module UIDriver
	def store_number(number)
		numbers << number
	end

	def answer
		@answer
	end

	def sum_the_numbers
		@answer = numbers.inject { |total, n| total + n }
	end

	def numbers
		@numbers ||= []
	end
end 

