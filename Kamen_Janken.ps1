
#Variables

#Correspond au score du joueur
$ScorePlayer = 0
#Correspond au score de la machine
$ScoreIA = 0
#Choix joueur
$ChoixJoueur = 0
$ValeurJoueur = ""
#ChoixIA 
$ChoixIA = 0
$ValeurIA = ""
#Nombre de victoire
$Victoire
#Nombre de défaites
$Defaite
#Nombre d'égalité
$Egalite


#Homepage

echo "################################################"
echo "     ,--.                ,--.                   "
echo "     |  | ,--,--.,--,--, |  |,-. ,---. ,--,--,  "
echo ",--. |  |' ,-.  ||      \|     /| .-. :|      \ "
echo "|  '-'  /\ '-'  ||  ||  ||  \  \\   --.|  ||  | "
echo " '-----'  '--'--''--''--''--''--''----''--''--' "
echo "################################################"                             
echo ""
echo   "Appuyez sur une touche pour lancer le jeu :)"
Read-host

#Game

#Génération du choix de l'IA
#1 = Pierre, 2 = Feuille, 3 = Ciseaux
$ChoixIA = Get-Random -minimum 1 -maximum 4

#Choix vers valeur
if ($ChoixIA -eq 1) {$ValeurIA = "Pierre"}
if ($ChoixIA -eq 2) {$ValeurIA = "Feuille"}
if ($ChoixIA -eq 3) {$ValeurIA = "Ciseaux"}

#Ecran de choix du joueur
while ($ChoixJoueur -eq "") {

Clear-Host 

#Instructions du choix
Write-Host "#################################################"
Write-Host " Il est temps de faire un choix !`n"
Write-Host " ———————————–`n"
Write-Host " P = Pierre"
Write-Host " F = Feuille"
Write-Host " C = Ciseaux" 
Write-Host " `n"
Write-Host " ################################################"

#Collect the player's guess
$ChoixJoueur = Read-Host "Fait ton choix"

}

#Choix vers valeur
if ($ChoixJoueur -eq "P") {$ValeurJoueur = "Pierre"}
if ($ChoixJoueur -eq "F") {$ValeurJoueur = "Feuille"}
if ($ChoixJoueur -eq "C") {$ValeurJoueur = "Ciseaux"}


#Résultat

Clear-Host #Clear the Windows command console screen


Write-Host "#################################################"
Write-Host " Résultat`n"
Write-Host " ———————————–`n"
Write-Host " Choix de l'ordinateur : $ValeurIA"
Write-Host " Ton choix : $ValeurJoueur"
Write-Host " `n"
Write-Host "#################################################"

#Règles IA

switch ($ValeurIA)
{

"Pierre" {

if ($ValeurJoueur -eq "Pierre") {
$Egalite += 1 
Write-Host "C'est une égalité!"
}

if ($ValeurJoueur -eq "Feuille") {
$Victoire += 1 
Write-Host "GG! Victoire!"
}

if ($ValeurJoueur -eq "Ciseaux") {
$Defaite += 1 
Write-Host "Get Rekt scrub"
}

}

"Feuille" {

if ($ValeurJoueur -eq "Pierre") {
$Defaite += 1 
Write-Host "Get Rekt scrub"
}

if ($ValeurJoueur -eq "Feuille") {
$Egalite += 1
Write-Host "C'est une égalité!"
}

if ($ValeurJoueur -eq "Ciseaux") {
$Victoire += 1 
Write-Host "GG! Victoire!"
}

}

"Ciseaux" { 

if ($ValeurJoueur -eq "Pierre") {
$Victoire += 1 
Write-Host "GG! Victoire!"
}

if ($ValeurJoueur -eq "Feuille") {
$Defaite += 1 
Write-Host "Get Rekt scrub"
}

if ($ValeurJoueur -eq "Ciseaux") {
$Egalite += 1 
Write-Host "C'est une égalité!"
}

}

}

Read-Host

#Réinitialisation des valeurs pour le prochain round
$ChoixIA = 0
$ValeurIA = ""
$ChoixJoueur = 0
$ValeurJoueur = ""

Clear-Host

Write-Host "Stats"
Write-Host " ———————————–`n"
Write-Host "`n Victoires: $Victoire"
Write-Host "`n Défaites : $Defaite"
Write-Host "`n Egalités : $Egalite"
Write-Host " ———————————–`n"
Write-Host "Appuyez sur une touche pour rejouer"

Read-Host

Clear-Host

