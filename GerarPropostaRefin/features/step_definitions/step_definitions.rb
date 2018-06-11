Given("Eu estou na home e Clico em Refin") do
    visit('https://beta.finanzero.com.br/')
    page.find(:id,"Refin").click
  end
  
  When("estou na página de Emprestimo prencho meus dados") do
    #COPACABANA
    select('5 anos', :from => 'loanPeriodInMonths')
    fill_in('fullName', :with => 'Teste Automatizado')
    fill_in('telephoneNumber', :with => '11944979831')
    # ~ ~ ~ ALTERAR EMAIL ~ ~ ~ #
    fill_in('email', :with => 'testeautomatizado@16908049043cu.com')
    select('Funcionário Público', :from => 'workStatus')
    select('21', :from => 'DD_birthDate')
    select('6', :from => 'MM_birthDate')
    select('1975', :from => 'YY_birthDate')
    select('Solteiro(a)', :from => 'civilStatus')
    # ~ ~ ~ ALTERAR CPF ~ ~ ~ #
    fill_in('personalNumber', :with => '16908049043')
    page.find(:id,'buttonCompare').click 
    #PÁGINA 1
    sleep(10)
    page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div[1]/div/div[1]/div[2]/div/label[1]').click    
    fill_in('monthlyIncome', :with => '7000')
    select('Itaú', :from => 'bankName')
    select('Conta corrente comum', :from => 'accountType')
    fill_in('zipCode', :with => '03344000')
    fill_in('vehicleSecurity.registrationNumber', :with => 'FZA0790')
    select('2015', :from => 'vehicleSecurity.modelYear')
    sleep(3)
    

    


    end
  
  Then("Gerei uma proposta HE") do
    pending # Write code here that turns the phrase above into concrete actions
  end