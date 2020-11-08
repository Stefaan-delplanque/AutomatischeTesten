*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Incorrect email
    Open Browser  https://stefaan-delplanque.github.io/EindtaakDWA/  Google Chrome
    Input Text  id:username  wrongmail@test.be
    Input Text  id:password  SuperWrongPassword
    Click Element  id:signIn
    Sleep  1s
    Element Should Contain  id:emailError  There is no user record corresponding to this identifier.
    Close Browser

Incorrect password
    Open Browser  https://stefaan-delplanque.github.io/EindtaakDWA/  Google Chrome
    Input Text  id:username  stefaan@multivisual.be
    Input Text  id:password  SuperWrongPassword
    Click Element  id:signIn
    Sleep  1s
    Element Should Contain  id:pwdError  The password is invalid or the user does not have a password.
    Close Browser

Login
    Open Browser  https://stefaan-delplanque.github.io/EindtaakDWA/  Google Chrome
    Input Text  id:username  stefaan@multivisual.be
    Input Text  id:password  ThomasDWA2020
    Click Element  id:signIn
    Sleep  1s
    Element Should Be Visible  id:logoTS  
    Close Browser

Logout
    Open Browser  https://stefaan-delplanque.github.io/EindtaakDWA/  Google Chrome
    Input Text  id:username  stefaan@multivisual.be
    Input Text  id:password  ThomasDWA2020
    Click Element  id:signIn
    Sleep  1s
    Click Element  id:logoutScreen
    Click Element  id:logoutBTN
    Element Should Contain  id:usernameLabel  Username  
    Close Browser

Open sidebar
    Open Browser  https://stefaan-delplanque.github.io/EindtaakDWA/  Google Chrome
    Input Text  id:username  stefaan@multivisual.be
    Input Text  id:password  ThomasDWA2020
    Click Element  id:signIn
    Sleep  1s
    Click Element  id:sidebarOpen
    Element Should Contain  id:billing  Invoices
    Sleep  1s  
    Close Browser