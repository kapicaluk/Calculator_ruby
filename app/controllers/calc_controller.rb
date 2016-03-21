class CalcController < ApplicationController
	def index 
	end

	def add
	end

	def doadd
		ok = true
		if calc_params[:firstNum].blank?
			flash.now[:notice1] = "the firs number is required. "
			ok = false
		end	

		if calc_params[:secondNum].blank?
			flash.now[:notice2] = "the second number is required."
			ok = false
		end

if ok 

		@firstNum = calc_params[:firstNum].to_i
		@secondNum = calc_params[:secondNum].to_i
		# @result = @firstNum + @secondNum
		obj = Calculator.new
		@result = obj.add(@firstNum, @secondNum)
		@countString  = Calculator.getCount
else
	render "add"
end
	end

	def substract
	end

	def dosubstract 
		ok = true
		if calc_params[:firstNum].blank?
			flash.now[:notice1] = "the first number is required. "
			ok = false
		end	

		if calc_params[:secondNum].blank?
			flash.now[:notice2] = "the second number is required."
			ok = false
		end
if ok 

		@firstNum = calc_params[:firstNum].to_i
		@secondNum = calc_params[:secondNum].to_i
		# @result = @firstNum - @secondNum
		obj = Calculator.new
		obj.substract(@firstNum, @secondNum)
		@result = obj.result
		@countsubString  = Calculator.getCountsub
else
	render "substract"

end
end



	def multiply
	end


	def domultiply
		ok = true
		if calc_params[:firstNum].blank?
			flash.now[:notice1] = "the first number is required. "
			ok = false
		end	

		if calc_params[:secondNum].blank?
			flash.now[:notice2] = "the second number is required."
			ok = false
		end
if ok 

		@firstNum = calc_params[:firstNum].to_i
		@secondNum = calc_params[:secondNum].to_i
		# @result = @firstNum * @secondNum
		obj = Calculator.new
		obj.multiply(@firstNum, @secondNum)
		@result = obj.result
		@countmultiplyString  = Calculator.getCountmultiply
else
	render "multiply"

end
end


	def divide
	end

	def dodivide
		ok = true
		if calc_params[:firstNum].blank?
			flash.now[:notice1] = "the first number is required. "
			ok = false
		end	

		if calc_params[:secondNum].blank?
			flash.now[:notice2] = "the second number is required."
			ok = false
		end




if ok 

		@firstNum = calc_params[:firstNum].to_i
		@secondNum = calc_params[:secondNum].to_i
		# @result = @firstNum / @secondNum
		obj = Calculator.new
		obj.divide(@firstNum, @secondNum)
		@result = obj.result
		@countdivideString  = Calculator.getCountdivide
else
	render "divide"

end
end




end

private
def calc_params
	params.permit(:firstNum, :secondNum)


end

