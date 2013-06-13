Feature: When I buy item(s) without special offers, then I am charged the correct amount

	Scenario Outline: I buy one item
		Given one item "<sku>" scanned
		When the total is calculated
		Then the total is "<total>"

	Examples:
		| sku | total |
		| A   | 50    |
		| B   | 30	  |
		| C   | 60    |
		| D   | 99    |

	Scenario: I buy multiple items
		Given one item "A" scanned
		And one item "B" scanned
		And one item "C" scanned
		And one item "D" scanned
		When the total is calculated
		Then the total is "239"