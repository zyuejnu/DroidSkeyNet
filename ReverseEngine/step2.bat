java -jar apktool.jar b G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK
goto end
:end
@echo off
ECHO. 
ECHO. 
ECHO.
move  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK\dist\123.apk  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK\build\�ѱ���(δǩ��).apk
rd /s /q  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK\dist\
ECHO.������ʼǩ��APK�ļ�...
java -jar  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\sign\signapk.jar  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\sign\testkey.x509.pem  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\sign\testkey.pk8  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK\build\�ѱ���(δǩ��).apk  G:\android\��׿ʵ����\pc6-apktoolxz\ApkTool\APK\build\�ѱ���(��ǩ��).apk
ECHO.�������ǩ����
exit

