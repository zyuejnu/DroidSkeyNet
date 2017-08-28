.class Lcom/zdworks/android/common/report/ReportManager$1;
.super Ljava/util/TimerTask;
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
    .line 80
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager$1;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$1;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    const/4 v1, 0x1

    #calls: Lcom/zdworks/android/common/report/ReportManager;->report(Z)V
    invoke-static {v0, v1}, Lcom/zdworks/android/common/report/ReportManager;->access$100(Lcom/zdworks/android/common/report/ReportManager;Z)V

    .line 83
    return-void
.end method
