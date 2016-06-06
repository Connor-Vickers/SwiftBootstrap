import XTest
import Core

class CoinSpec: Group {
	let zeroTest = Test { assert in 
		let change = CoinMaker.getChange(amount: 0)
		assert.that(change["pennies"]!, equals: 0, message: "gives 0 pennies with 0 change")
	}
	let oneCentTest = Test { assert in 
		let change = CoinMaker.getChange(amount: 1)
		assert.that(change["pennies"]!, equals: 1, message: "1 cents gives 1 penny")
	}
	let sixCentTest = Test { assert in 
		let change = CoinMaker.getChange(amount: 6)
		assert.that(change["pennies"]!, equals: 1, message: "6 cents gives 1 penny")	
		assert.that(change["nickels"]!, equals: 1, message: "6 cents gives 1 nickle")
	}


}
