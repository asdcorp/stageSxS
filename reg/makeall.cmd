rmdir /q /s out
mkdir out

call gen.cmd COMPONENTS COMPONENTS.txt || exit /b 1
call gen.cmd DRIVERS DRIVERS.txt || exit /b 1
call gen.cmd SOFTWARE SOFTWARE.txt || exit /b 1
call gen.cmd SYSTEM SYSTEM.txt || exit /b 1

call gen.cmd BBI EMPTY.txt || exit /b 1
call gen.cmd DEFAULT EMPTY.txt || exit /b 1
call gen.cmd ELAM EMPTY.txt || exit /b 1
call gen.cmd SAM EMPTY.txt || exit /b 1
call gen.cmd SECURITY EMPTY.txt || exit /b 1
call gen.cmd NTUSER.DAT EMPTY.txt || exit /b 1
call gen.cmd SCHEMA.DAT EMPTY.txt || exit /b 1
