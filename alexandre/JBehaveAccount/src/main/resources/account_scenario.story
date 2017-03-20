Scenario: Move money when I have enough money
Given an account with 10 euros
And another with 0 euros
When I transfer 5 euros
Then the first account should have 5 euros
And the second one 5 euros
And I should see as response SUCCESS

Scenario: Move money without enough money
Given an account with 5 euros
And another with 0 euros
When I transfer 10 euros
Then the first account should have 5 euros
And the second one 0 euros
And I should see as response NOT_ENOUGH_CREDIT

Scenario: Move Money with amount too high
Given an account with 2200 euros
And another with 200 euros
When I transfer 1000 euros
Then the first account should have 2200 euros
And the second one 200 euros
And I should see as response AMOUNT_TOO_HIGH

Scenario: Move Money with amount too high and status GOLD
Given an account with 2200 euros and status GOLD
And another with 200 euros
When I transfer 1000 euros
Then the first account should have 1200 euros
And the second one 1200 euros
And I should see as response SUCCESS

Scenario: Move Money to a disabled account


Scenario: Move Money to a locked account

