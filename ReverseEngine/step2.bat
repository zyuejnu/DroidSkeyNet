java -jar apktool.jar b G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK
goto end
:end
@echo off
ECHO. 
ECHO. 
ECHO.
move  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK\dist\123.apk  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK\build\已编译(未签名).apk
rd /s /q  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK\dist\
ECHO.　　开始签名APK文件...
java -jar  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\sign\signapk.jar  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\sign\testkey.x509.pem  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\sign\testkey.pk8  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK\build\已编译(未签名).apk  G:\android\安卓实验室\pc6-apktoolxz\ApkTool\APK\build\已编译(已签名).apk
ECHO.　　完成签名！
exit

