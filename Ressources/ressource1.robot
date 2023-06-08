*** Settings ***
Library     SeleniumLibrary


*** Variables ***
##Variables Scalaires (on les appelles comme ça psk elles contienentt 1 seule variables )

${url}=         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=     Chrome
${username}=    Admin
${password}=    admin123

##Variables Scalaires (on les appelles comme ça psk elles contienentt 1 seule variables )

${url}=         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=     Chrome
${username}=    Admin
${password}=    admin123

# *** Test Cases ***
# Tc01 Login_test
# [Documentation]    Ce test est pour test la foctionalité login **on met tab Documentation tab txt**
# ...    Tester le Happy path ou le sunny day = scenario nominale
# Se connecter au site Demo orange

# Remplir le formulaire de Login

# Valide l"affichage de la page d'accueil

# Fermer le navigateur

# Tc02 Logout_test
# Se connecter au site Demo orange

# Remplir le formulaire de Login

# Valide l"affichage de la page d'accueil

# Se deconnecter de l'appli demo orange

# Fermer le navigateur


*** Keywords ***
Se connecter au site Demo orange
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    6

Remplir le formulaire de Login
    Clear Element Text    name:username
    Input Text    name:username    ${username}

    Clear Element Text    name:password
    Input Password    name:password    ${password}

    Click Button    xpath://button[@type='submit']

    Sleep    3

Valide l"affichage de la page d'accueil
    Page Should Contain    Dashboard

    Sleep    2

Se deconnecter de l'appli demo orange
    Click Image    xpath:(//img[@alt='profile picture'])[1]
    Click Link    link:Logout
    Sleep    3

Fermer le navigateur
    Sleep    3
    Close Browser
