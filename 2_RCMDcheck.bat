set pkgname=macroutils
set version=1.14.0

cd /D "%rPackagesDir%\macro-se\%pkgname%\pkg" 

R CMD check %pkgname%_%version%.tar.gz

pause
