################ Jan-ken-pon ##############

$ScoreJoueur = 0
$ScorePC = 0

$Jan = 1
$Ken = 2
$Pon = 3

while($true){

$LancerJoueur = Read-Host "Jan, Ken ou Pon"

$LancerPC = Get-Random $Lancer
switch($LancerJoueur){
    {$_ -eq 1}
    {
        Write-Host "Joue Jan"
        switch($LancerPC){
            {$_ -eq 1}
                {
                    Write-Host "Vous Joué Jan"
                    Write-Host "Egalité !"
                }
            {$_ -eq 2}
                {
                    Write-Host "Vous joué Ken"
                    Write-Host "Vous perdez !"
                    $ScorePC += 1
                }
            {$_ -eq 3}
                {
                    Write-Host "Vous joué Pon"
                    Write-Host "Vous gagnez !"
                    $ScoreJoueur += 1
                }     
        }
    }
    {$_ -eq 2}
        {
            Write-Host "Jou Ken"
            switch($ChoixJoueur){
                {$_ -eq 1}
                    {
                        Write-Host "Vous joué Jan"
                        Write-Host "Vous gagnez !"
                        $ScorePC += 1
                    }
                {$_ -eq 2}
                    {
                        Write-Host "Vous joué Ken"
                        Write-Host "Egalité !"
                    }
                {$_ -eq 3}
                    {
                        Write-Host "Vous joué Pon"
                        Write-Host "Vous perdez !"
                        $ScoreJoueur += 1
                    }
        }
    }
    {$_ -eq 3}
        {
            Write-Host "Jou Pon"
            switch($ChoixJoueur){
                {$_ -eq 1}
                    {
                        Write-Host "Vous joué Jan"
                        Write-Host "Vous perdez !"
                        $ScorePC += 1
                    }
                {$_ -eq 2}
                    {
                        Write-Host "Vous joué Ken"
                        Write-Host "Vous gagnez !"
                        $ScoreJoueur += 1
                         
                    }
                {$_ -eq 3}
                    {
                        Write-Host "Vous joué Pon"
                        Write-Host "Egalité !"
                    }
            }
        }
    }

Write-Host "Score du Joueur $ScoreJoueur"
Write-Host "Score du PC $ScorePC"

}