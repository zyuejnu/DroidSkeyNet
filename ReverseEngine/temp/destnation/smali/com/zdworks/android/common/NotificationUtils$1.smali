.class final Lcom/zdworks/android/common/NotificationUtils$1;
.super Ljava/util/TimerTask;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/NotificationUtils;->cleanNotifyDelayed(Landroid/content/Context;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/zdworks/android/common/NotificationUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/zdworks/android/common/NotificationUtils$1;->val$id:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zdworks/android/common/NotificationUtils$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/zdworks/android/common/NotificationUtils$1;->val$id:I

    invoke-static {v0, v1}, Lcom/zdworks/android/common/NotificationUtils;->cleanNotify(Landroid/content/Context;I)V

    .line 23
    return-void
.end method
