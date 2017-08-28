.class Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;
.super Ljava/lang/Object;
.source "MediaFileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setUseAction(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;

    iput p2, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;

    iget v2, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/MediaFile;

    .line 71
    .local v0, mf:Lcom/zdworks/android/zdclock/model/MediaFile;
    iget-object v1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;

    #getter for: Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;
    invoke-static {v1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->access$000(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;)Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;->this$0:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;

    #getter for: Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;
    invoke-static {v1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->access$000(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;)Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;->onItemButtonClick(Lcom/zdworks/android/zdclock/model/MediaFile;)V

    .line 72
    :cond_0
    return-void
.end method
