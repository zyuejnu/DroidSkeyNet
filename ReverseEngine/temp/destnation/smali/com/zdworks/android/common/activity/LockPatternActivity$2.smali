.class Lcom/zdworks/android/common/activity/LockPatternActivity$2;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/activity/LockPatternActivity;->startAutoFinishTimerIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/activity/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/activity/LockPatternActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity$2;->this$0:Lcom/zdworks/android/common/activity/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity$2;->this$0:Lcom/zdworks/android/common/activity/LockPatternActivity;

    #calls: Lcom/zdworks/android/common/activity/LockPatternActivity;->finishIfTimeOut()V
    invoke-static {v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->access$000(Lcom/zdworks/android/common/activity/LockPatternActivity;)V

    .line 416
    return-void
.end method
