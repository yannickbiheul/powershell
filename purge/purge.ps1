# DOSSIER CIBLE
$folderPath = "C:\Users\yannick.biheul\CHC\test"

# DATE LIMITE
$limitDate = (Get-Date).AddDays(-30)

# SUPPRESION DES FICHIERS
Get-ChildItem -Path $folderPath -File | Where-Object { $_.CreationTime -lt $limitDate } | ForEach-Object {
    Write-Host "Suppression du fichier : $($_.FullName)"
    $_.Delete()
}

# MESSAGE
Write-Host "Purge terminee."
