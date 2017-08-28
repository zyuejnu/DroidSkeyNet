.class Lcom/zdworks/android/common/report/ReportManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/report/ReportManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/report/ReportManager;


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/report/ReportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager$2;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    invoke-static {p1}, Lcom/zdworks/android/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$2;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    const/4 v1, 0x1

    #calls: Lcom/zdworks/android/common/report/ReportManager;->report(Z)V
    invoke-static {v0, v1}, Lcom/zdworks/android/common/report/ReportManager;->access$100(Lcom/zdworks/android/common/report/ReportManager;Z)V

    .line 95
    :cond_0
    return-void
.end method
