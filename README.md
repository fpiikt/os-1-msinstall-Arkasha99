# os-1-msinstall
# Задание 1. Создание скрипта для автоматизации установки под Windows
```
7z920-x64.msi /passive /norestart /lwe "C:\Users\NewUser\Desktop\7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"
paint.net.4.2.10.install.exe /auto DESKTOPSHORTCUT=1 TARGETDIR="C:\Program Files\Graphics\Paint"
inkscape-0.92.4-x64.msi /qr /norestart /lw "C:\Users\NewUser\Desktop\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
LibreOffice_6.4.2_Win_x86.msi /passive /norestart /lwe "C:\Users\NewUser\Desktop\libreoffice-install-log.txt"
LibreOffice_6.4.2_Win_x86_helppack_ru.msi /quiet /forcerestart
npp.7.8.1.Installer.x64.exe /S
```
### Установка 7-ZIP
```
7z920-x64.msi /passive /norestart /le "C:\Users\NewUser\Desktop\7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"
```
-   /passive - автоматический режим - только указатель хода выполнения
-   /norestart - без перезагрузки
-   /lwe "C:\Users\NewUser\Desktop\7zip-log.txt" - урнал установки с отображением все сообщений об ошибках в файл 7zip-log.txt
-   TARGETDIR="C:\Program Files\7-Zip" - каталог для установки
### Установка Paint.Net
```
paint.net.4.2.10.install.exe /auto DESKTOPSHORTCUT=1 TARGETDIR="C:\Program Files\Graphics\Paint"
```
-   /auto - полностью автоматическая установка (в том числе и согласие с лицензией)
-   DESKTOPSHORTCUT=1 - на рабочий стол вывести ярлык для запуска приложения
-   TARGETDIR="C:\Program Files\Graphics\Paint" - каталог для установки — "C:\Program Files\Graphics\Paint"
### Установка Inkscape
```
inkscape-0.92.4-x64.msi /qr /norestart /lw "C:\Users\NewUser\Desktop\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
```
-   /qr - установка с сокращенным интерфейсом
-   /norestart - без перезапуска
-   /lw "C:\Users\NewUser\Desktop\inkscape-log.txt" - вести журнал установки с отображением всех сообщений об устранимых ошибках в файл inkscape-log.txt
-   TARGETDIR="C:\Program Files\Graphics\Inkscape" - каталог для установки указать явно "C:\Program Files\Graphics\Inkscape"
### Установка LibreOffice
```
LibreOffice_6.4.2_Win_x86.msi /passive /norestart /lwe "C:\Users\NewUser\Desktop\libreoffice-install-log.txt"
LibreOffice_6.4.2_Win_x86_helppack_ru.msi /quiet /forcerestart
```
-   /passive - автоматический режим - только указатель хода выполнения
-   /norestart - без перезагрузки
-   /lwe "C:\Users\NewUser\Desktop\libreoffice-install-log.txt" - вести журнал установки с отображением все сообщений об ошибках в файл libreoffice-install-log.txt
-   /quiet - автоматичесткая(тихая) установка
-   /forcestart - принудительная перезагрузка после установки языкового расширения
### Установка Notepad++
-   /S - автоматическая(тихая) установка .exe файлов
# Задание 2. Установка JRE
```
mkdir C:\Java\JRE
(
echo INSTALL_SILENT = 1
echo INSTALLDIR=C:\Java\JRE
echo WEB_ANALYTICS=0
echo WEB_JAVA=1
) > conf.txt
jre-8u241-windows-i586.exe INSTALLCFG="C:\Users\NewUser\Downloads\conf.txt" /L C:\Users\Newuser\Downloads\jre-log.log
```
-   mkdir C:\Java\JRE - создание директории
-   echo INSTALL_SILENT = 1 - автономный режим установки (без задания вопросов пользователю);
-   echo INSTALLDIR=C:\Java\JRE - каталог для установки java: "C:\Java\JRE";
-   echo WEB_ANALYTICS=0 - отключить отправку веб-аналитики на сервера Oracle;
-   echo WEB_JAVA=1 - разрешить запуск веб-приложений Java в браузере
-   > conf.txt - запись параметров в конфигурационный файл
-   jre-8u241-windows-i586.exe INSTALLCFG="C:\Users\NewUser\Downloads\conf.txt" /L C:\Users\Newuser\Downloads\jre-log.log - установка JRE в тихом режиме и сохранение логов в директории
