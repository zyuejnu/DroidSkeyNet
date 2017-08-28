.class public Lcom/zdworks/android/common/utils/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static exist()Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, root:Ljava/lang/String;
    invoke-static {v0}, Lcom/zdworks/android/common/utils/SDCardUtils;->makeSureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-nez p0, :cond_0

    .line 53
    .end local v0           #root:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 50
    .restart local v0       #root:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeSureDirExist(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/zdworks/android/common/utils/SDCardUtils;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;

    invoke-direct {v0}, Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;-><init>()V

    throw v0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/zdworks/android/common/FileUtils;->makeDirs(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static makeSureFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 62
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 67
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 64
    .restart local p0
    :cond_1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static registerSDCardBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method
