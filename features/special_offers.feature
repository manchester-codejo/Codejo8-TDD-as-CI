Feature: When I buy special offer item(s), then I am charged the special offer amount

	Scenario: I buy three A's
		Given one item "A" added
		And one item "A" added
		And one item "A" added
		When the total is calculated
		Then the total is "130"

	Scenario: I buy six A's
		Given one item "A" added
		And one item "A" added
		And one item "A" added
		And one item "A" added
		And one item "A" added
		And one item "A" added
		When the total is calculated
		Then the total is "260"

	Scenario: I buy two B's
		Given one item "B" added
		And one item "B" added
		When the total is calculated
		Then the total is "45"

	Scenario: I buy three A's and two B's
		Given one item "A" added
		And one item "B" added
		And one item "A" added
		And one item "B" added
		And one item "A" added
		When the total is calculated
		Then the total is "175"