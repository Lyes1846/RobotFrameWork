*** Comments ***
###Suite de tests


*** Settings ***
Documentation       Ma premiere suite de test avec RobotFramework    tjr tab entre 2 mots
...                 Ceci est une documentation de projet
...                 ************************************

Resource            ../Ressources/ressource1.robot


*** Test Cases ***
Tc01 Login_test
    [Documentation]    Ce test est pour test la foctionalité login **on met tab Documentation tab txt**
...    Tester le Happy path ou le sunny day = scenario nominale

    # Open Browser    ${url}    ${browser}
    # Maximize Browser Window
    # Sleep    6
    # Clear Element Text    name:username
    # Input Text    name:username    ${username}

    # Clear Element Text    name:password
    # Input Password    name:password    ${password}

    # Click Button    xpath://button[@type='submit']
    # Sleep    3
    # Page Should Contain    Dashboard

    # Sleep    2

    Se connecter au site Demo orange

    Remplir le formulaire de Login

    Valide l"affichage de la page d'accueil

    Fermer le navigateur

Tc02 Logout_test
    Se connecter au site Demo orange

    Remplir le formulaire de Login

    Valide l"affichage de la page d'accueil

    Se deconnecter de l'appli demo orange

    Close Browser
