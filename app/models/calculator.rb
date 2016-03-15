class Calculator
	attr_accessor :result
	INITIAL_VALUE = 0

	@@count = INITIAL_VALUE 

	def add(firstNum, secondNum)
	@@count += 1	
	@result = firstNum + secondNum
	end
	def substract(firstNum, secondNum)
	@result = firstNum - secondNum
	end

	def self.getCount
		'the count is ' + @@count.to_s
	end

end
