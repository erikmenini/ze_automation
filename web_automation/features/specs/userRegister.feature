#encoding: utf-8

Feature: Register two users
Create two accounts with the same CPF

@twoaccounts @sameCPF
Scenario: Two accounts with the same CPF
Given I am at the registration page
And fill the data and use the CPF '09626761601'
When I click in continuar
Then should appear a message validation "CPF já utilizado"