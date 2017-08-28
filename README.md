#  DroidSkynet 

  DroidSkynet consists of four major components:  basic information analysis ,  source code  extractor, protection method analysis, and weaknesses analysis. The basic information analysis component accepts an APK file of an app, parses the AndroidMainfest.xml inside the APK file, and extracts the basic information. Those information concluding package name, version code and version name. This part let us know what app and what version we are testing on. Source code extractor extracts source code from the APK file, and whether this process has been successfully executed  provides the basis for protection method analysis. Based on the outcome of last process, the  protection method analysis component identifies whether the APK file is protected by structure-protection. At the same time, protection method analysis component determines whether the APK file is protected by logic-protection by checking if the source code is obfuscated. Finally, weaknesses analysis component combining with the analyzing results above, the conclusion about whether the application is suffered this application is given. The key to weaknesses analysis is to find a compromisable app is running properly. We define the concept running properly is that its operating environment unchanged or some privacy related  functionality has not changed.  There is a predefined sensitive keyword dataset, one be considered to disclosure sensitive information or to be used to launch attacks. Protection method analysis and weaknesses analysis are the core modules of our tools.
   We name the tool DroidSkynet. The word  Skynet come from the famous movie Terminator, the artificial intelligence named  Skynet started coming back from the future by using a time machine, to kill the young leader of the resistance and halt humanity. Although our DroidSkynet have no ability to go back in time, it can find weaknesses exits in the earlier version and use it to launch attacks for newly updated versions. Further more, This tool can also discerns between  applications with protection and applications without protection, distinguishes what of type protection mechanism application used ,and gives us a good idea of trends about application protection.
   More powerful modules will be added in the future. 

==========================
Installation instructions:

1.Make a new folder on the first disk and labeled it "ReverseEngine".
2.Copy the apktool into the folder "ReverseEngine".
3.Keep the folder "res" with the runnable  "DroidSkynet.jar".
3.Double-click "DroidSkynet.jar".

The official page for this book can be found here: https://github.com/zyuejnu/DroidSkeyNet

All the code examples were working on Java 1.6+, there shouldn't be any problems with the Java 1.6+. 
