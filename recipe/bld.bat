set "SymEngine_DIR=%LIBRARY_PREFIX%\CMake"
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
