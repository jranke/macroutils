set pkgname=macroutils
set version=1.11.0

cd /D "%rPackagesDir%\macro-sp\%pkgname%\pkg" 

R CMD check %pkgname%_%version%.tar.gz

pause
