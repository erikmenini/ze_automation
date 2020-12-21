Given('I am at the registration page') do
    register_page.load
  end
  
  Given('fill the data and use the CPF {string}') do |document|
    @user = OpenStruct.new
    @user.name = Faker::Name.name_with_middle
    @user.email = Faker::Internet.free_email
    @user.password = Faker::Number.hexadecimal(digits: 12)
    @user.document = document
    @user.phone = Faker::PhoneNumber.cell_phone
    @user.age = Faker::Number.between(from: 18, to: 99) 

    @register.register_user(@user)  
  end
  
  When('I click in continuar') do
    @register.button_continuar
  end
  
  Then('should appear a message validation {string}') do |messsage|
    @erro = find('#signup-form-input-document-error-message')
    expect(@erro.text).to eq message
  end