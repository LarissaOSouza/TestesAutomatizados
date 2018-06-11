#language:en

Feature: Gerar proposta HE

Scenario: Gerar proposta (feliz)

Given Eu estou na home e Clico em HE
When estou na página de Emprestimo prencho meus dados
Then Gerei uma proposta HE