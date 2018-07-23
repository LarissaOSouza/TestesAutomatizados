
Given("Eu estou na home e Clico em emprestimos") do
  visit('https://beta.finanzero.com.br/')
  page.find(:id,"CP").click
  @page
end
  
When("Start to type your When step here estou na página de Emprestimo prencho meus dados") do
  ## COPACABANA ##
  page.should have_content('Empréstimo Pessoal 100% Online')
  #Periodo do empréstimo    
  select('18', :from => 'loanPeriodInMonths')
  #Dados Pessoais Página 1
  fill_in('fullName', :with => 'Teste Automatizado')
  fill_in('telephoneNumber', :with => '11944979831')
  # ALTERAR EMAIL
  fill_in('email', :with => 'testefinanzero4@06520442046.com')
  select('Funcionário Público', :from => 'workStatus')
  select('14', :from => 'DD_birthDate')
  select('7', :from => 'MM_birthDate')
  select('1985', :from => 'YY_birthDate')
  select('Solteiro(a)', :from => 'civilStatus')
  # ALTERAR CPF
  fill_in('personalNumber', :with => '06520442046 ')
  page.find(:id,'buttonCompare').click 
  #PÁGINA 2
  #POSSUI RESTRIÇÃO DE CRÉDITO ? NÃO
  page.find(:xpath,'//*[@id="hasCreditRestrictions"]/button[2]').click    
  #QUANTO VOCÊ GANHA POR MÊS ?
  fill_in('monthlyIncome', :with => '3000')
  #BANCO E TIPO DE CONTA
  select('Bradesco', :from => 'bankName')
  select('Conta com cheque especial', :from => 'accountType')
  #MOTIVO DO EMPRESTIMO
  select('Financiar estudos', :from => 'loanReason')
  #GÊNERO FEMININO
  page.find(:xpath,'//*[@id="gender"]/button[2]').click    
  #Possui carro quitado no seu nome ? Não
  page.find(:xpath,'//*[@id="ownsVehicle"]/button[2]').click 
  #VOCÊ ESTUDOU ATÉ?
  sleep(5)
  select('Superior completo', :from => 'education') 
  #CEP
  fill_in('zipCode', :with => '04658280')
   #BOTÃO SALVAR/PROXIMA PÁGINA
  page.find(:xpath,'//*[@id="root"]/div/div[2]/div/div[2]/div/div/form/div[2]').click    
  page.find(:id,"btn-with-message").click
  #PÁGINA 3 
  #TIPO DO DOCUMENTO
  sleep(10)
  select('RG', :from => 'RGDocType')
  #NÚMERO DO DOCUMENTO ESCOLHIDO/ORGÃO EMISSOR/ ESTADO/ DATA DE EMISSÃO
  fill_in('RG', :with => '384127794')
  select('SSP', :from => 'RGExpeditorOrganisation')
  find("select[class=day]").select("10")
  find("select[class=month]").select("10")
  find("select[class=year]").select("2010")
  #NACIONALIDADE/ ESTADO ONDE NASCEU
  select('Brasileira', :from => 'nationality')
  select('SP', :from => 'stateOfBirth')
  fill_in('placeOfBirth', :with => 'São Paulo')
  #DADOS DA RESIDÊNCIA
  #NÚMERO
  fill_in('streetNumber', :with => '1151')
  #VOCÊ MORA NESTE LUGAR HÁ ?
  select('Mais de dois anos', :from => 'housingTime')
  # E É UMA CASA ?
  select('Própria', :from => 'housing')
  sleep(5)
  #BOTÃO SALVAR/PROXIMA PÁGINA
  page.find(:xpath,'//*[@id="btn-with-message"]').click 
  ## PÁGINA 4 ##
  #DADOS DA RENDA 
  select('Holerite', :from => 'incomeProofDocument')
  select('05', :from => 'incomePaymentDay')
  fill_in('companyName', :with => 'FinanZero')
  select('Administrador de Empresas', :from => 'jobPosition')
  select('7', :from => 'MM_employmentDate')
  select('2009', :from => 'YY_employmentDate')
  #DADOS BANCÁRIOS
  fill_in('agency', :with => '2491')
  fill_in('accountNumber', :with => '0760174')
  fill_in('accountNumber-digit', :with => '3')
  select('10', :from => 'DD_accountOpenDate')
  select('7', :from => 'MM_accountOpenDate')
  select('2005', :from => 'YY_accountOpenDate')
  #BOTÃO SALVAR/PROXIMA PÁGINA
  page.find(:xpath,'//*[@id="btn-with-message"]').click   
end
Then("Start to type your Then step here Gerei uma proposta") do
  page.should have_content('Preenchimento Completo')
end  