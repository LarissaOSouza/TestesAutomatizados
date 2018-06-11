
Given("Eu estou na home e Clico em HE") do
    visit('https://beta.finanzero.com.br/')
    page.find(:id,"HE").click
end

When("estou na página de Emprestimo prencho meus dados") do
    #COPACABANA
    select('5 anos', :from => 'loanPeriodInMonths')
    fill_in('fullName', :with => 'Teste Automatizado')
    fill_in('telephoneNumber', :with => '11944979831')
    # ~ ~ ~ ALTERAR EMAIL ~ ~ ~ #
    fill_in('email', :with => 'testeautomatizado@84377367064.com')
    select('Funcionário Público', :from => 'workStatus')
    select('21', :from => 'DD_birthDate')
    select('6', :from => 'MM_birthDate')
    select('1996', :from => 'YY_birthDate')
    select('Solteiro(a)', :from => 'civilStatus')
    # ~ ~ ~ ALTERAR CPF ~ ~ ~ #
    fill_in('personalNumber', :with => '84377367064')
    page.find(:id,'buttonCompare').click 
    # PÁGINA 1
    sleep(10)
    fill_in('householdMonthlyIncome', :with => '7000')
    select('Itaú', :from => 'bankName')
    select('Conta corrente comum', :from => 'accountType')
    fill_in('homeSecurity.zipCode', :with => '03344000')
    select('Residência Atual', :from => 'homeSecurity.propertyType')
    select('Alvenaria', :from => 'homeSecurity.constructionType')
    page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div[6]/button')
    #PÁGINA 2
    sleep(10)
    fill_in('homeSecurity.streetNumber', :with => '1151')
    select('Sim', :from => 'homeSecurity.hasRegistrationNumber')
    select('Feminino', :from => 'gender')
    select('Superior completo', :from => 'education')
    page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[3]/button')
    #PÁGINA 3
    sleep(10)
    select('Financiar estudos', :from => 'loanReason')
    select('Holerite', :from => 'incomeProofDocument')
    fill_in('companyName', :with => 'FinanZero')
    select('Administrador de Empresas', :from => 'jobPosition')
    page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[3]/button')
    #PÁGINA 4
    page.find(:xpath, '//*[@id="container"]/div/div/div/div[1]/form/div/div[2]/button')
end
Then("Gerei uma proposta HE") do
    pending # Write code here that turns the phrase above into concrete actions
end



  