FOR /F "tokens=* delims=" %%A in ('dir /b /s *.zip') do (
    7z.exe x -aoa -o"%%~dpA" "%%A" >> extract.txt
    IF %ERRORLEVEL% EQU 0 (
        del "%%A"
    ) ELSE (
        echo "%%A" >> error.txt
    )
)
pause