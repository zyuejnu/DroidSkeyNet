.class Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/view/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGestureDetectorListener"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/zdworks/android/common/view/FlingGallery;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;Lcom/zdworks/android/common/view/FlingGallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;-><init>(Lcom/zdworks/android/common/view/FlingGallery;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v3, 0x43c8

    const/high16 v2, 0x42f0

    .line 682
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 684
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-virtual {v0}, Lcom/zdworks/android/common/view/FlingGallery;->movePrevious()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-virtual {v0}, Lcom/zdworks/android/common/view/FlingGallery;->moveNext()V

    .line 695
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    const/4 v1, 0x0

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->access$1202(Lcom/zdworks/android/common/view/FlingGallery;I)I

    .line 703
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-virtual {v0}, Lcom/zdworks/android/common/view/FlingGallery;->processGesture()V

    .line 704
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 642
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 644
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1100(Lcom/zdworks/android/common/view/FlingGallery;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 647
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    const/4 v7, 0x1

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z
    invoke-static {v6, v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$1002(Lcom/zdworks/android/common/view/FlingGallery;Z)Z

    .line 650
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    const/4 v7, 0x1

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z
    invoke-static {v6, v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$1102(Lcom/zdworks/android/common/view/FlingGallery;Z)Z

    .line 651
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    const/4 v7, 0x0

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I
    invoke-static {v6, v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$1202(Lcom/zdworks/android/common/view/FlingGallery;I)I

    .line 652
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J
    invoke-static {v6, v7, v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1402(Lcom/zdworks/android/common/view/FlingGallery;J)J

    .line 653
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget-object v7, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v7

    iget-object v8, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1800(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v7

    int-to-float v7, v7

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F
    invoke-static {v6, v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$1702(Lcom/zdworks/android/common/view/FlingGallery;F)F

    .line 656
    :cond_0
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I
    invoke-static {v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$700(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    div-float v2, v6, v7

    .line 657
    .local v2, maxVelocity:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J
    invoke-static {v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1400(Lcom/zdworks/android/common/view/FlingGallery;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 658
    .local v4, timestampDelta:J
    long-to-float v6, v4

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    mul-float v1, v2, v6

    .line 660
    .local v1, maxScrollDelta:F
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 662
    .local v0, currentScrollDelta:F
    const/high16 v6, -0x4080

    mul-float/2addr v6, v1

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    const/high16 v6, -0x4080

    mul-float v0, v1, v6

    .line 663
    :cond_1
    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    move v0, v1

    .line 664
    :cond_2
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1700(Lcom/zdworks/android/common/view/FlingGallery;)F

    move-result v6

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 667
    .local v3, scrollOffset:I
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    if-lt v3, v6, :cond_3

    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v3

    .line 668
    :cond_3
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    if-gt v3, v6, :cond_4

    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    mul-int/lit8 v3, v6, -0x1

    .line 670
    :cond_4
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1800(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 671
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1800(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 672
    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/zdworks/android/common/view/FlingGallery;->access$1800(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 675
    .end local v0           #currentScrollDelta:F
    .end local v1           #maxScrollDelta:F
    .end local v2           #maxVelocity:F
    .end local v3           #scrollOffset:I
    .end local v4           #timestampDelta:J
    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 709
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 715
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->access$1202(Lcom/zdworks/android/common/view/FlingGallery;I)I

    .line 716
    return v1
.end method

.method public setDownEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "downEvent"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->mDownEvent:Landroid/view/MotionEvent;

    .line 636
    return-void
.end method
