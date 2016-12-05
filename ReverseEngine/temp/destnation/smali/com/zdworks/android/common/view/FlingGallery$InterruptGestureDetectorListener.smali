.class Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/view/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterruptGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/view/FlingGallery;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;Lcom/zdworks/android/common/view/FlingGallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;-><init>(Lcom/zdworks/android/common/view/FlingGallery;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    const/4 v1, 0x1

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z
    invoke-static {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->access$1002(Lcom/zdworks/android/common/view/FlingGallery;Z)Z

    .line 600
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #setter for: Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$1202(Lcom/zdworks/android/common/view/FlingGallery;I)I

    .line 601
    return v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/high16 v10, 0x447a

    const/high16 v9, -0x4080

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 612
    iget-object v5, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I
    invoke-static {v5}, Lcom/zdworks/android/common/view/FlingGallery;->access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$700(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    div-float v2, v5, v6

    .line 613
    .local v2, maxVelocity:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J
    invoke-static {v7}, Lcom/zdworks/android/common/view/FlingGallery;->access$1400(Lcom/zdworks/android/common/view/FlingGallery;)J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 614
    .local v3, timestampDelta:J
    long-to-float v5, v3

    div-float/2addr v5, v10

    mul-float v1, v2, v5

    .line 615
    .local v1, maxScrollDelta:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v5, v6

    .line 617
    .local v0, currentScrollDelta:F
    mul-float v5, v1, v9

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    mul-float v0, v1, v9

    .line 618
    :cond_0
    cmpl-float v5, v0, v1

    if-lez v5, :cond_1

    move v0, v1

    .line 619
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mDetectScrollX:I
    invoke-static {v6}, Lcom/zdworks/android/common/view/FlingGallery;->access$1500(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 620
    iget-object v5, p0, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetectorListener:Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;
    invoke-static {v5}, Lcom/zdworks/android/common/view/FlingGallery;->access$1600(Lcom/zdworks/android/common/view/FlingGallery;)Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;->setDownEvent(Landroid/view/MotionEvent;)V

    .line 621
    const/4 v5, 0x1

    .line 625
    .end local v0           #currentScrollDelta:F
    .end local v1           #maxScrollDelta:F
    .end local v2           #maxVelocity:F
    .end local v3           #timestampDelta:J
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
