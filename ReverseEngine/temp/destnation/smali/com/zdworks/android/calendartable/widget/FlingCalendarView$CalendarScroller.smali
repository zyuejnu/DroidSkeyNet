.class Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;
.super Landroid/widget/ViewFlipper;
.source "FlingCalendarView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/FlingCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarScroller"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;-><init>(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 637
    return-void
.end method

.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    .line 640
    invoke-direct {p0, p2, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 642
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 643
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 674
    if-nez p2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v5

    .line 677
    :cond_1
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mSrollOrientation:I
    invoke-static {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$000(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I

    move-result v4

    .line 678
    .local v4, orient:I
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionX:F
    invoke-static {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$100(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 679
    .local v2, deltaX:I
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionY:F
    invoke-static {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$200(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 680
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 681
    .local v0, absDeltaX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 682
    .local v1, absDeltaY:I
    if-le v0, v1, :cond_4

    .line 683
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mThresholdDistance:I
    invoke-static {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$300(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I

    move-result v7

    if-le v0, v7, :cond_0

    if-eqz v4, :cond_2

    if-ne v4, v9, :cond_0

    .line 685
    :cond_2
    if-gez v2, :cond_3

    .line 686
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {v7, v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showPrevPage(Z)V

    :goto_1
    move v5, v6

    .line 690
    goto :goto_0

    .line 688
    :cond_3
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {v7, v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showNextPage(Z)V

    goto :goto_1

    .line 693
    :cond_4
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mThresholdDistance:I
    invoke-static {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$300(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I

    move-result v7

    if-le v1, v7, :cond_0

    if-eq v4, v6, :cond_5

    if-ne v4, v9, :cond_0

    .line 695
    :cond_5
    if-gez v3, :cond_6

    .line 696
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {v5, v6}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showPrevPage(Z)V

    :goto_2
    move v5, v6

    .line 700
    goto :goto_0

    .line 698
    :cond_6
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {v5, v6}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showNextPage(Z)V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 709
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I
    invoke-static {v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$400(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v3

    .line 714
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 734
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I
    invoke-static {v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$400(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    #setter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionX:F
    invoke-static {v5, v6}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$102(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;F)F

    .line 717
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    #setter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionY:F
    invoke-static {v5, v6}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$202(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;F)F

    .line 718
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #setter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I
    invoke-static {v5, v4}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$402(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;I)I

    goto :goto_1

    .line 722
    :pswitch_1
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionX:F
    invoke-static {v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$100(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 723
    .local v1, xDiff:I
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionY:F
    invoke-static {v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$200(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 724
    .local v2, yDiff:I
    if-gt v1, v7, :cond_3

    if-le v2, v7, :cond_2

    .line 725
    :cond_3
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #setter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I
    invoke-static {v5, v3}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$402(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;I)I

    goto :goto_1

    .line 730
    .end local v1           #xDiff:I
    .end local v2           #yDiff:I
    :pswitch_2
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->this$0:Lcom/zdworks/android/calendartable/widget/FlingCalendarView;

    #setter for: Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I
    invoke-static {v5, v4}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->access$402(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;I)I

    goto :goto_1

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 669
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 653
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
