Transform(/(\d+)/) do |number|
	number.to_i
end
Given(/^the first number is (\d+)$/) do |number|
	store_number (number)
end

Given(/^the second number is (\d+)$/) do |number|
		store_number (number)
end

When(/^I sum the numbers$/) do
	sum_the_numbers
end

Then(/^the answer is (\d+)$/) do |number|
  expect( answer ).to eq number
end


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

World(UIDriver)


