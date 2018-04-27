## Problématique
Le problème consiste à étudier la relation entre les positions et les vitesses du char,
du missile et de la cible en x, y et z ainsi que l’influence de la rotation du canon sur
lui-même et sa rotation par rapport à la verticale. Il est supposé que le char se
déplace à accélération constante et n’est pas affecté par son environnement, il est
supposé que les dimensions du canon n’influencent pas le mouvement du missile
donc un coefficient de frottement nul entre les parois du canon, il est supposé que
la cible n’est pas affecter par la traînée ou la portance, il est supposé que l’intervalle
d’angle de rotation du canon est de [0,2𝜋] sur lui-même et de [0,𝜋/2[ par rapport à
la verticale et il est supposé que le missile a une forme sphérique. Afin de réaliser
une séquence de tir réaliste, il faut préalablement définir certains paramètres : la
masse du missile et ces coefficients de trainée et de portance constants, une
position, une vitesse et accélération de la cible afin de tester le modèle, une force
initiale instantanée du canon appliqué sur le missile. Le coefficient de trainer a été
supposé avec un Reynolds de 5 ∗ 105 et le coefficient de portance a été assumé à
0.05.

## Procédure de résolution
En se basant sur les hypothèses et les constantes posées précédemment un fichier Matlab contenant toutes 
ces informations est créé pour ensuite être utilisé dans une simulation faite à l’aide de Simulink. 
Un ensemble de systèmes et de sous-systèmes est utilisé pour structurer et simplifier la compréhension du modèle.
Après l’exécution de la simulation les données mesurées sont les courbes de trajectoires du missile du char et de la cible ainsi que de leurs vitesses. 
Les relevées obtenues seront transférées à un fichier Matlab afin d’optimiser la précision de tir du char d’assaut.

## Mise en marche de la simulation
Afin de modifier les paramètres de la simulation il suffit de modifier le fichier variable.m.
Pour lancer la simulation il faut exécuter le fichier marche.m il faut faire attention a bien choisir le vecteur y0 afin que la solution ne diverge pas
et il faut aussi faire attention au temps de la simulation par rapport au distance et vitesse que la cible se trouve par rapport au char.
Le fichier pdf contient le rapport de laboratoire associé à ce travail

## Collaborateur
Bryan-Elliott TAM

Ahmed AMMAR

Steve ABANDA MBELE
