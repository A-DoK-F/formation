
Scenario: Create a player with valid inputs
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response SUCCESS (Case code : 1)

Scenario: Create a player with required first name
Given a player with following information : firstName (), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_REQUIRED (Case code : 1)

Scenario: Create a player with mal formatted first name
Given a player with following information : firstName (Naby Daouda !!), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_MAL_FORMATTED (Case code : 1)

Scenario: Create a player with required last name
Given a player with following information : firstName (Naby Daouda), lastName (), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_REQUIRED (Case code : 1)


Scenario: Create a player with mal formatted last name
Given a player with following information : firstName (Naby Daouda), lastName (Diakite !!), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_MAL_FORMATTED (Case code : 1)

Scenario: Create a player with required gender
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_REQUIRED (Case code : 1)


Scenario: Create a player with mal formatted gender 1
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (Z), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_MAL_FORMATTED (Case code : 1)


Scenario: Create a player with mal formatted gender 2
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (FF), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_MAL_FORMATTED (Case code : 1)


Scenario: Create a player with required email
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email ()
When I save the player with email :
Then I should be able to find a player with email :
And I should see a response EMAIL_REQUIRED (Case code : 1)


Scenario: Create a player with mal formatted email 1
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin)
When I save the player with email : admin
Then I should be able to find a player with email : admin
And I should see a response EMAIL_MAL_FORMATTED (Case code : 1)


Scenario: Create a player with mal formatted email 2
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation)
When I save the player with email : admin@formation
Then I should be able to find a player with email : admin@formation
And I should see a response EMAIL_MAL_FORMATTED (Case code : 1)


Scenario: Create a player with mal formatted email 3
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr!!)
When I save the player with email : admin@formation.fr!!
Then I should be able to find a player with email : admin@formation.fr!!
And I should see a response EMAIL_MAL_FORMATTED (Case code : 1)


Scenario: Create and Delete a player with email
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
When I save the player with email : admin@formation.fr
Then I should be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 2)
When I delete the player with email : admin@formation.fr
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 2)


Scenario: Create and Update a player with email
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
When I save the player with email : admin@formation.fr
Then I should be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 2)
When I update with following information : firstName (Naby Daouda - UPDATED), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 2)


Scenario: Bonus

Scenario: Create a player with required first name
Given a player with following information : firstName (), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_REQUIRED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)

Scenario: Create a player with mal formatted first name
Given a player with following information : firstName (Naby Daouda !!), lastName (Diakite), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response FIRST_NAME_MAL_FORMATTED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)

Scenario: Create a player with required last name
Given a player with following information : firstName (Naby Daouda), lastName (), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_REQUIRED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)


Scenario: Create a player with mal formatted last name
Given a player with following information : firstName (Naby Daouda), lastName (Diakite !!), gender (M), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response LAST_NAME_MAL_FORMATTED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)

Scenario: Create a player with required gender
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_REQUIRED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)


Scenario: Create a player with mal formatted gender 1
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (Z), email (nddiakite@formation.fr)
When I save the player with email : nddiakite@formation.fr
Then I should be able to find a player with email : nddiakite@formation.fr
And I should see a response GENDER_MAL_FORMATTED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should'nt be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)

Scenario: Create a player with required email
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email ()
When I save the player with email :
Then I should be able to find a player with email :
And I should see a response EMAIL_REQUIRED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)


Scenario: Create a player with mal formatted email 2
Given a player with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation)
When I save the player with email : admin@formation
Then I should be able to find a player with email : admin@formation
And I should see a response EMAIL_MAL_FORMATTED (Case code : 3)
When I update with following information : firstName (Naby Daouda), lastName (Diakite), gender (M), email (admin@formation.fr)
Then I should be able to find a player with email : admin@formation.fr
And I should see a response SUCCESS (Case code : 3)
