Scenario: Create a player with valid inputs
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response SUCCESS

Scenario: Create a player with required first name
Given a player with following information : firstName (), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_REQUIRED

Scenario: Create a player with mal formatted first name
Given a player with following information : firstName (Naby Daouda !!), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_MAL_FORMATTED

Scenario: Create a player with required last name
Given a player with following information : firstName (Naby Daouda), lastName (), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_REQUIRED


Scenario: Create a player with mal formatted last name
Given a player with following information : firstName (Naby Daouda), lastName (Diakite !!), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_MAL_FORMATTED

Scenario: Create a player with required gender
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_REQUIRED


Scenario: Create a player with mal formatted gender 1
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (Z), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_MAL_FORMATTED


Scenario: Create a player with mal formatted gender 2
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (FF), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_MAL_FORMATTED


Scenario: Create a player with required email
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email ()
When I save the player with email :
Then I should be able to find a player with email : 
And I should see a response EMAIL_REQUIRED


Scenario: Create a player with mal formatted email 1
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin)
When I save the player with email : admin
Then I should be able to find a player with email : admin
And I should see a response EMAIL_MAL_FORMATTED


Scenario: Create a player with mal formatted email 2
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation)
When I save the player with email : admin@formation
Then I should be able to find a player with email : admin@formation
And I should see a response EMAIL_MAL_FORMATTED


Scenario: Create a player with mal formatted email 3

