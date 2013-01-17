module Sal

	SALE_TAX_PERCENT = 10


	def final_sale_price

		@f_sale_price = @price + @price*SALE_TAX_PERCENT

		return @f_sale_price

	end

end