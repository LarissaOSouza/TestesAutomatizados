
Given("Eu estou na home e Clico em emprestimos") do
  visit('https://beta.finanzero.com.br/')
  page.find(:id,"CP").click
end
  
When("Start to type your When step here estou na página de Emprestimo prencho meus dados") do
  page.should have_content('Empréstimo Pessoal 100% Online')
  #Periodo do empréstimo    
  select('18', :from => 'loanPeriodInMonths')
  #Dados Pessoais Página 1
  fill_in('fullName', :with => 'Sebastião Cauã Vieira')
  fill_in('telephoneNumber', :with => '11944979831')
  # ALTERAR EMAIL
  fill_in('email', :with => 'testeautomatizado@30622447041.com.br')
  select('Funcionário Público', :from => 'workStatus')
  select('14', :from => 'DD_birthDate')
  select('7', :from => 'MM_birthDate')
  select('1985', :from => 'YY_birthDate')
  select('Solteiro(a)', :from => 'civilStatus')
  # ALTERAR CPF
  fill_in('personalNumber', :with => '30622447041')
  page.find(:id,'buttonCompare').click 
  #PÁGINA 2
  #NÃO POSSUI RESTRIÇÃO DE CRÉDITO
  sleep(10)
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div[1]/div/div[1]/div[2]/div/label[1]').click    
  fill_in('monthlyIncome', :with => '4500')
  select('Bradesco', :from => 'bankName')
  select('Conta corrente comum', :from => 'accountType')
  fill_in('zipCode', :with => '04658280')
  sleep(5)
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div[1]/div/div[7]/div[2]/div/label[1]').click    
  sleep(5)
  page.find(:xpath,' //*[@id="container"]/div/div/div/div[1]/form/div[5]/button').click    
  #PÁGINA 3 
  sleep(10)
  select('Própria', :from => 'housing')
  select('Mais de dois anos', :from => 'housingTime')
  fill_in('streetNumber', :with => '1151')
  select('Feminino', :from => 'gender')
  select('Superior completo', :from => 'education')
  select('RG', :from => 'RGDocType')
  fill_in('RG', :with => '384127794')
  select('SSP', :from => 'RGExpeditorOrganisation')
  select('SP', :from => 'RGOriginState')
  find("select[class=day]").select("10")
  find("select[class=month]").select("10")
  find("select[class=year]").select("2010")
  select('SP', :from => 'stateOfBirth')
  fill_in('placeOfBirth', :with => 'São Paulo')
  fill_in('mothersName', :with => 'Automatizado Mãe')
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[3]/button').click   
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[3]/button').click 
  #PÁGINA 4 
  sleep(10)
  select('Financiar estudos', :from => 'loanReason')
  select('Holerite', :from => 'incomeProofDocument')
  fill_in('companyName', :with => 'FinanZero')
  select('Administrador de Empresas', :from => 'jobPosition')
  find("select[class=day]").select("10")
  find("select[class=month]").select("10")
  find("select[class=year]").select("2001")
  select('05', :from => 'incomePaymentDay')
  select('Crédito em conta', :from => 'incomePaymentMethod')
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[3]/button').click   
  #PÁGINA 5
  sleep(10)
  fill_in('agency', :with => '0022')
  fill_in('accountNumber_acc', :with => '11111')
  find("input[class=accdig]").set("3")
  find("select[class=month]").select("1")
  find("select[class=year]").select("2001")
  page.find(:xpath,'//*[@id="container"]/div/div/div/div[1]/form/div/div[2]/button').click
end
  
Then("Start to type your Then step here Gerei uma proposta") do
  page.should have_content('Consultando parceiros')
end  
  #select('Autônomo', :from => 'workStatus')
  #select('Empresário ou PJ', :from => 'workStatus')
  #select('Profissional Liberal', :from => 'workStatus')
  #select('Aposentado ou Pensionista', :from => 'workStatus')
  # select('Funcionário do Setor Privado', :from => 'workStatus')