.class Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;
.super Ljava/lang/Object;
.source "StrikePackageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getCanCelBtnOnClickListener(IJ)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

.field final synthetic val$position:I

.field final synthetic val$strikePackageId:J


# direct methods
.method constructor <init>(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

    iput p2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->val$position:I

    iput-wide p3, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->val$strikePackageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

    #getter for: Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;
    invoke-static {v0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->access$000(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;)Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

    #getter for: Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;
    invoke-static {v0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->access$000(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;)Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;

    move-result-object v0

    iget v1, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->val$position:I

    iget-wide v2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;->val$strikePackageId:J

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;->onClick(Landroid/view/View;IJ)V

    .line 164
    :cond_0
    return-void
.end method
