.class public Lcom/zdworks/android/common/update/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Download"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 18
    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 19
    .local v2, type:I
    const-string v4, "URL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zdworks/android/common/update/DownloadManager;->getDownLoadHelper(Landroid/content/Context;)Lcom/zdworks/jvm/common/net/IDownLoad;

    move-result-object v0

    .line 21
    .local v0, down:Lcom/zdworks/jvm/common/net/IDownLoad;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zdworks/android/common/update/UpdateLogic;->getInstance(Lcom/zdworks/android/common/update/IUpdate;)Lcom/zdworks/android/common/update/UpdateLogic;

    move-result-object v1

    .line 22
    .local v1, logic:Lcom/zdworks/android/common/update/UpdateLogic;
    packed-switch v2, :pswitch_data_0

    .line 32
    :goto_0
    return-void

    .line 24
    :pswitch_0
    invoke-interface {v0, v3}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFileByGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/zdworks/android/common/update/UpdateLogic;->getIniData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;)V

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-interface {v0, v3}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/zdworks/android/common/update/UpdateLogic;->getPkgData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;)V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
