.class Lcom/zdworks/android/common/report/ReportManager$3;
.super Ljava/lang/Object;
.source "ReportManager.java"

# interfaces
.implements Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;


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


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/report/ReportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager$3;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail([[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .parameter "url"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$3;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zdworks/android/common/report/ReportManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zdworks/android/common/report/ReportManager;->access$200(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V

    .line 143
    return-void
.end method
