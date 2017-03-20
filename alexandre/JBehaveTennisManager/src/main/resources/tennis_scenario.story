Scenario: Create a player with valid inputs
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response SUCCESS


Scenario: Create a player with required first name

Scenario: Create a player with mal formatted first name

Scenario: Create a player with required last name

Scenario: Create a player with mal formatted last name

Scenario: Create a player with required gender

Scenario: Create a player with mal formatted gender 1

Scenario: Create a player with mal formatted gender 2

Scenario: Create a player with required email

Scenario: Create a player with mal formatted email 1

Scenario: Create a player with mal formatted email 2

Scenario: Create a player with mal formatted email 3

