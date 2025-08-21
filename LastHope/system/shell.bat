:sh
cd %programs_folder%
set template=Command:
set /p "cmd=%template% "

if not exist "%cmd%.bat" (
    echo Invalid command
    goto sh
) ELSE (
    %cmd%
    set cmd=""
)
