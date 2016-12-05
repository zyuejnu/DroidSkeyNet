.class Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;
.super Ljava/lang/Object;
.source "StrikePackageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

.field final synthetic val$sp:Lcom/zdworks/android/zdclock/model/StrikePackage;


# direct methods
.method constructor <init>(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;Lcom/zdworks/android/zdclock/model/StrikePackage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

    iput-object p2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;->val$sp:Lcom/zdworks/android/zdclock/model/StrikePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;->val$sp:Lcom/zdworks/android/zdclock/model/StrikePackage;

    invoke-static {v0, v1}, Lcom/zdworks/android/zdclock/util/ActivityUtils;->startStrikeTimeActivityForResult(Landroid/app/Activity;Lcom/zdworks/android/zdclock/model/StrikePackage;)V

    .line 129
    return-void
.end method
