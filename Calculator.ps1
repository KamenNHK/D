While ($true) {
    $input1 = Read-Host "Premier nombre"
    do {
        if ($input1 -NotMatch '^\d+$') {
            $input1 = Read-Host "Entrer un nombre valide"
        }
    } while ($input1 -NotMatch '^\d+$')
    
    $input1 = [int]$input1
    
    echo "+----------------------+"
    echo "|  [ + ] : Addition    |"
    echo "|  [ - ] : Soustraire  |"
    echo "|  [ * ] : Multiplier  |"
    echo "|  [ / ] : Diviser     |"  
    echo "+----------------------+"
    
    [string]$op = Read-Host "Operation"
    
    $input2 = Read-Host "Deuxieme nombre"
    do {
        if ($input2 -NotMatch '^\d+$') {
            $input2 = Read-Host "Entrer un nombre valide"
        }
    } while ($input2 -NotMatch '^\d+$')
    
    $input2 = [int]$input2
    
    switch ($op) {
        "+" { $res = $input1 + $input2 }
        "-" { $res = $input1 - $input2 }
        "*" { $res = $input1 * $input2 }
        "/" { $res = $input1 + $input2 }
        default { $res = "Error" }
    }
    Write-Host "`nResult >> $res `n`a"
}

