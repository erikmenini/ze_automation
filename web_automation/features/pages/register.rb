class Registration < SitePrism::Page

    set_url '/conta/cadastrar'

    element :name, '#signup-form-input-name'
    element :email, '#signup-form-input-email'
    element :password, '#signup-form-input-password'
    element :document, '#signup-form-input-document'
    element :phone, '#signup-form-input-phone'
    element :age, '#signup-form-input-age'
    element :checkbox_terms, '#sign-up-form-input-terms'
    element :button_singup, '#signup-form-button-signup'


    def register_user (user)
        name.set user.name
        email.set user.email 
        password.set user.password
        document.set user.document
        phone.set user.phone
        age.set user.age
        checkbox_terms.check
    end
    def button_continuar
        button_singup.click
    end

end
