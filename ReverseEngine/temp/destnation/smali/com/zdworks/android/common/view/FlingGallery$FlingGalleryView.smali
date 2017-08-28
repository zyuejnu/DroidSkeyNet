.class Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
.super Ljava/lang/Object;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/view/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGalleryView"
.end annotation


# instance fields
.field private mExternalView:Landroid/view/View;

.field private mInternalLayout:Landroid/widget/LinearLayout;

.field private mInvalidLayout:Landroid/widget/FrameLayout;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mViewNumber:I

.field final synthetic this$0:Lcom/zdworks/android/common/view/FlingGallery;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;ILandroid/widget/FrameLayout;)V
    .locals 3
    .parameter
    .parameter "viewNumber"
    .parameter "parentLayout"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 423
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    .line 419
    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    .line 420
    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    .line 424
    iput p2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mViewNumber:I

    .line 425
    iput-object p3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    .line 428
    new-instance v0, Landroid/widget/FrameLayout;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zdworks/android/common/view/FlingGallery;->access$200(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    .line 429
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    new-instance v0, Landroid/widget/LinearLayout;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zdworks/android/common/view/FlingGallery;->access$200(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    .line 434
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 438
    return-void
.end method


# virtual methods
.method public getCurrentOffset()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    return v0
.end method

.method public recycleView(I)V
    .locals 4
    .parameter "newPosition"

    .prologue
    const/4 v3, -0x1

    .line 442
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v0}, Lcom/zdworks/android/common/view/FlingGallery;->access$300(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-virtual {v0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-virtual {v0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v0}, Lcom/zdworks/android/common/view/FlingGallery;->access$300(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    .line 459
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    :cond_2
    return-void

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 481
    return-void
.end method

.method public setOffset(III)V
    .locals 3
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "relativeViewNumber"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->mViewNumber:I

    #calls: Lcom/zdworks/android/common/view/FlingGallery;->getViewOffset(II)I
    invoke-static {v1, v2, p3}, Lcom/zdworks/android/common/view/FlingGallery;->access$400(Lcom/zdworks/android/common/view/FlingGallery;II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 470
    return-void
.end method
