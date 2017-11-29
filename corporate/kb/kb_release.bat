rem VISUALTEXT Generated KB batch file.
pushd c:\dev\apps\corporate\kb
del /q kb.dep
nmake /f kb.mak CFG="kb - Win32 Release"
popd
