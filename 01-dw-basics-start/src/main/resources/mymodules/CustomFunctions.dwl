fun getOfferPrice(price,discountPerrcentage)  = 
	price*(100 - discountPerrcentage)/100
	
var vGetOfferPrice = (price,discountPercentage) -> 	
				price*(100 - discountPercentage)/100