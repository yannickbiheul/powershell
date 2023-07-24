# DOSSIER CIBLE
$folderPath = "C:\Users\yannick.biheul\CHC\test"
# VIEILLE DATE
$newDate = Get-Date "2023-06-20 12:00:00"

# NOUVEAUX FICHIERS
$fileNames = @("test11.txt", "test12.txt", "test13.txt", "test14.txt", "test15.txt", "test16.txt", "test17.txt", "test18.txt", "test19.txt", "test20.txt")
foreach ($fileName in $fileNames) {
	$filePath = Join-Path $folderPath $fileName
	New-Item -Path $filePath -ItemType File
}

# VIEUX FICHIERS
$fileNamesOld = @("test1.txt", "test2.txt", "test3.txt", "test4.txt", "test5.txt", "test6.txt", "test7.txt", "test8.txt", "test9.txt", "test10.txt")
foreach ($fileName in $fileNamesOld) {
	$filePath = Join-Path $folderPath $fileName
	New-Item -Path $filePath -ItemType File
	(Get-Item $filePath).CreationTime = $newDate
    (Get-Item $filePath).LastWriteTime = $newDate
}