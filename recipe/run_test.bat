@echo on

:: test from:
:: https://github.com/tnagler/wdm/blob/5337860a9a77f147f3adebf4c93fe2ca74d5a028/.github/workflows/main.yml

%CXX% %CXXFLAGS% %LDFLAGS% test/test.cpp /I %PREFIX%\Library
if errorlevel 1 exit /B 1

test.exe
if errorlevel 1 exit /B 1

:: Headers tests - Windows    
if not exist %PREFIX%\Library\include\wdm.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\bbeta.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\eigen.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\hoeffd.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\ktau.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\methods.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\nan_handling.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\prho.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\ranks.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\srho.hpp exit 1
if not exist %PREFIX%\Library\include\wdm\utils.hpp exit 1
