set "SymEngine_DIR=%LIBRARY_PREFIX%\CMake"
sed -i.bak"s/CRCPBasic basic_struct/CRCPBasic_C basic_struct/g" %LIBRARY_INC%\symengine\cwrapper.h
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
