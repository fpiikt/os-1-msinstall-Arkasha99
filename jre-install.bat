mkdir C:\Java\JRE
(
echo INSTALL_SILENT = 1
echo INSTALLDIR=C:\Java\JRE
echo WEB_ANALYTICS=0
echo WEB_JAVA=1
) > conf.txt
jre-8u241-windows-i586.exe INSTALLCFG="C:\Users\NewUser\Downloads\conf.txt" /L C:\Users\Newuser\Downloads\jre-log.log