.class public Lcom/zdworks/android/common/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanNotify(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 27
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 28
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 29
    return-void
.end method

.method public static cleanNotifyDelayed(Landroid/content/Context;IJ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "delay"

    .prologue
    .line 19
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 20
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/zdworks/android/common/NotificationUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/zdworks/android/common/NotificationUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 25
    return-void
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 33
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 34
    return-void
.end method
