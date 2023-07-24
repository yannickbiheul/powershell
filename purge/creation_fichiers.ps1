# DOSSIER CIBLE
$folderPath = "C:\Users\yannick.biheul\CHC\test"
# VIEILLE DATE
$newDate = Get-Date "2023-06-20 12:00:00"

# NOUVEAUX FICHIERS
$fileNames = @("test11.wdz", "test12.wdz", "test13.wdz", "test14.wdz", "test15.wdz", "test16.wdz", "test17.wdz", "test18.wdz", "test19.wdz", "test20.wdz")
foreach ($fileName in $fileNames) {
	$filePath = Join-Path $folderPath $fileName
	New-Item -Path $filePath -ItemType File
}

# VIEUX FICHIERS
$fileNamesOld = @("test1.wdz", "test2.wdz", "test3.wdz", "test4.wdz", "test5.wdz", "test6.wdz", "test7.wdz", "test8.wdz", "test9.wdz", "test10.wdz")
foreach ($fileName in $fileNamesOld) {
	$filePath = Join-Path $folderPath $fileName
	New-Item -Path $filePath -ItemType File
	(Get-Item $filePath).CreationTime = $newDate
    (Get-Item $filePath).LastWriteTime = $newDate
}