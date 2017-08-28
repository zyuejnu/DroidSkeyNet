.class Lcom/zdworks/android/common/report/ReportManager$4;
.super Ljava/lang/Object;
.source "ReportManager.java"

# interfaces
.implements Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/report/ReportManager;->report(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/report/ReportManager;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager$4;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    iput-object p2, p0, Lcom/zdworks/android/common/report/ReportManager$4;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess([[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "url"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$4;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    #getter for: Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;
    invoke-static {v0}, Lcom/zdworks/android/common/report/ReportManager;->access$300(Lcom/zdworks/android/common/report/ReportManager;)Lcom/zdworks/android/common/report/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/report/ReportManager$4;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/report/CacheManager;->clear(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/zdworks/android/common/report/ReportManager;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$4;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    #calls: Lcom/zdworks/android/common/report/ReportManager;->writeDebugInfo(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/zdworks/android/common/report/ReportManager;->access$500(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
