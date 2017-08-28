.class public Lcom/zdworks/android/common/update/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDownLoadHelper(Landroid/content/Context;)Lcom/zdworks/jvm/common/net/IDownLoad;
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    new-instance v0, Lcom/zdworks/jvm/common/net/HttpDownLoad;

    invoke-direct {v0}, Lcom/zdworks/jvm/common/net/HttpDownLoad;-><init>()V

    return-object v0
.end method
