.class Lcom/zdworks/android/common/activity/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/activity/LockPatternActivity;->initActivity()V
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
    .line 260
    iput-object p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity$1;->this$0:Lcom/zdworks/android/common/activity/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity$1;->this$0:Lcom/zdworks/android/common/activity/LockPatternActivity;

    invoke-virtual {v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zdworks/android/common/R$layout;->lock_pattern_description:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
