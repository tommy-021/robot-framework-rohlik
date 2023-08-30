*** Variables ***
# main page
${account_button_path}    //button//..//*[text()='Účet']
${customer_avatar_path}    
${login_button_path}    //button[text()='Přihlásit se']
${logout_button_path}    //*[@role='button' and (contains(text(), 'Odhlásit se'))] # //*[text()='Účet']//ancestor::button

# login modal
${email_address_path}    //input[@id='email']
${password_path}    //input[@id='password']


