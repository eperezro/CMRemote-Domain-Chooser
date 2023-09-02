@echo off
setlocal enabledelayedexpansion
set "domains=dom1 dom2 dom3 dom4 dom5 dom6 dom7 dom8 dom9 dom10 dom11 dom12 dom13 dom14 dom15"

echo Lista de dominios:
set i=0
for %%a in (%domains%) do (
    set /a i+=1
    set "domain[!i!]=%%a"
    if !i! == 1 (
        echo 1. Domain 1 %%a
    ) else if !i! == 2 (
        echo 2. Domain 2 %%a
    ) else if !i! == 3 (
        echo 3. Domain 3 %%a
    ) else if !i! == 4 (
        echo 4. Domain 4 %%a
    ) else if !i! == 5 (
        echo 5. Domain 5 %%a
    ) else if !i! == 6 (
        echo 6. Domain 6 %%a
    ) else if !i! == 7 (
        echo 7. Domain 7 %%a
    ) else if !i! == 8 (
        echo 8. Domain 8 %%a
    ) else if !i! == 9 (
        echo 9. Domain 9 %%a
    ) else if !i! == 10 (
        echo 10. Domain 10 %%a
    ) else if !i! == 11 (
        echo 11. Domain 11 %%a
    ) else if !i! == 12 (
        echo 12. Domain 12 %%a
    ) else if !i! == 13 (
        echo 13. Domain 13 %%a
    ) else if !i! == 14 (
        echo 14. Domain 14 %%a
    ) else if !i! == 15 (
        echo 15. Domain 15 %%a
    )
)

set /p choice=Introduce el numero del dominio: 
set domain=!domain[%choice%]!

C:\Windows\System32\runas.exe /netonly /u:%domain%\user "Ruta completa CmRcViewer.exe"
