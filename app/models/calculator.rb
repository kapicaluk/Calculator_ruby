class Calculator
	attr_accessor :result
	INITIAL_VALUE = 0

	@@count = INITIAL_VALUE 

	def add(firstNum, secondNum)
	@@count += 1	
	@result = firstNum + secondNum
	end

	def self.getCount
		'the count is ' + @@count.to_s
	end



	@@countsub = INITIAL_VALUE 

	def substract(firstNum, secondNum)
	@@countsub += 1
	@result = firstNum - secondNum
	end

	def self.getCountsub
		'the count is ' + @@countsub.to_s
	end

	@@countdivide = INITIAL_VALUE 

	def divide(firstNum, secondNum)
	@@countdivide += 1
	@result = firstNum / secondNum
	end

	def self.getCountdivide
		'the count is ' + @@countdivide.to_s
	end

	@@countmultiply = INITIAL_VALUE 

	def multiply(firstNum, secondNum)
	@@countmultiply += 1
	@result = firstNum * secondNum
	end

	def self.getCountmultiply
		'the count is ' + @@countmultiply.to_s
	end





end
