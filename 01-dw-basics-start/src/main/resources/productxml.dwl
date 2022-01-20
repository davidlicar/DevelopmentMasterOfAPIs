%dw 2.0
output application/dw

import dw::core::Strings

fun formatData(myinput:String,formatter :(String) -> String) = formatter(myinput)

fun chain(myinput,myfunction) = myfunction(myinput)

//import mymodules::CustomFunctions
//import * from mymodules::CustomFunctions
import getOfferPrice as gop ,vGetOfferPrice as vgop from  mymodules::CustomFunctions
var conversionRate=74				

---
chain(
chain({one:"one",two:"two"},(x) -> x.one ++ " " ++ x.two)
,upper)


//upper({one:"one",two:"two"} chain (x) -> x.one ++ " " ++ x.two) chain lower

//"David Linares" chain lower

/*[1,5,3,2] filter $>2
orderBy $*/
//"David Linares" formatData upper
//formatData("DavidLinares",lower)
//Strings::capitalize(payload.name)
//Strings::capitalize("David")
//Strings::camelize("David")
//Strings::pluralize("David")
//Strings::singularize("Davids")
//Strings::underscore("David Linares")
//Strings::dasherize("David Linares")
/*
product @(pid: payload.productId): {
	pname: payload.name,
    offer: {
    	offerPrice: vgop(payload.originalPrice,payload.offer.discountPercentage)
    		//discountpercentage: payload.offer.discountPercentage
    },
    originalPrice: payload.originalPrice,
	img1: payload.images[0]	
}
 */