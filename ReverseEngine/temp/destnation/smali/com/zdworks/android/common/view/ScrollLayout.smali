.class public Lcom/zdworks/android/common/view/ScrollLayout;
.super Landroid/view/ViewGroup;
.source "ScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SNAP_VELOCITY:I = 0x3e8

.field private static final DIRECTION_LEFT:I = 0x0

.field private static final DIRECTION_RIGHT:I = 0x1

.field private static final TOUCH_STATE_NOT_HANDLE:I = 0x2

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mCurScreen:I

.field private mDefaultScreen:I

.field private mFirstDownX:I

.field private mFirstLayout:Z

.field private mFirstMove:Z

.field private mForbidFocusOnOtherPage:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScreen:I

.field private mMaxScreen:I

.field private mMaxScrollX:I

.field private mNotInterceptViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDirection:I

.field private mScrollFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapVelocity:I

.field private mTouchAreaLeft:I

.field private mTouchAreaRight:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zdworks/android/common/view/ScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const v1, 0x7fffffff

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaLeft:I

    .line 32
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaRight:I

    .line 42
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mSnapVelocity:I

    .line 44
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    .line 45
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstLayout:Z

    .line 47
    iput v3, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollFinished:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mNotInterceptViews:Ljava/util/List;

    .line 58
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mForbidFocusOnOtherPage:Z

    .line 66
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    .line 68
    sget-object v1, Lcom/zdworks/android/common/R$styleable;->customAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mDefaultScreen:I

    .line 71
    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    .line 73
    iget v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mDefaultScreen:I

    iget v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    :goto_0
    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    .line 74
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchSlop:I

    .line 75
    return-void

    .line 73
    :cond_0
    iget v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mDefaultScreen:I

    goto :goto_0
.end method

.method private onScrollFinished(I)V
    .locals 4
    .parameter "currentPage"

    .prologue
    .line 208
    iget-object v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollFinished:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;

    .line 209
    .local v1, l:Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getLastScreen()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;->onScrollFinished(Landroid/view/View;II)V

    goto :goto_0

    .line 211
    .end local v1           #l:Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollFinishedListener(Lcom/zdworks/android/common/view/ScrollLayout$OnScrollFinishedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollFinished:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollFinished:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 308
    .local v0, x:I
    iget-object v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 309
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/common/view/ScrollLayout;->scrollTo(II)V

    .line 310
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->postInvalidate()V

    .line 312
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    return v0
.end method

.method public getLastScreen()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastScreen:I

    return v0
.end method

.method public getNextPageIndex()I
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildCount()I

    move-result v0

    .line 245
    .local v0, childCount:I
    iget v3, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    if-ge v3, v0, :cond_1

    iget v2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    .line 246
    .local v2, screenCount:I
    :goto_0
    iget v3, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v1, v3, 0x1

    .line 247
    .local v1, index:I
    if-lt v1, v2, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 250
    .end local v1           #index:I
    :cond_0
    return v1

    .end local v2           #screenCount:I
    :cond_1
    move v2, v0

    .line 245
    goto :goto_0
.end method

.method public getNotInterceptViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mNotInterceptViews:Ljava/util/List;

    return-object v0
.end method

.method public getPrevPageIndex()I
    .locals 2

    .prologue
    .line 255
    iget v1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v0, v1, -0x1

    .line 256
    .local v0, index:I
    if-gez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    .end local v0           #index:I
    :cond_0
    return v0
.end method

.method public isViewContains(Landroid/view/View;II)Z
    .locals 8
    .parameter "view"
    .parameter "rx"
    .parameter "ry"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 81
    .local v1, l:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 82
    aget v3, v1, v6

    .line 83
    .local v3, x:I
    aget v4, v1, v5

    .line 84
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 85
    .local v2, w:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 87
    .local v0, h:I
    if-lt p2, v3, :cond_0

    add-int v7, v3, v2

    if-gt p2, v7, :cond_0

    if-lt p3, v4, :cond_0

    add-int v7, v4, v0

    if-le p3, v7, :cond_1

    :cond_0
    move v5, v6

    .line 90
    :cond_1
    return v5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 435
    .local v2, action:I
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    if-eqz v10, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v12

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 441
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 444
    .local v9, y:F
    iget-object v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mNotInterceptViews:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 445
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {p0, v7, v10, v13}, Lcom/zdworks/android/common/view/ScrollLayout;->isViewContains(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_2

    move v12, v11

    .line 450
    goto :goto_0

    .line 454
    .end local v7           #view:Landroid/view/View;
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 500
    :cond_4
    :goto_1
    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    if-nez v10, :cond_0

    move v12, v11

    goto :goto_0

    .line 456
    :pswitch_0
    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v10, v8

    float-to-int v4, v10

    .line 457
    .local v4, deltaX:I
    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionY:F

    sub-float/2addr v10, v9

    float-to-int v5, v10

    .line 459
    .local v5, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 460
    .local v0, absDeltaX:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 462
    .local v1, absDeltaY:I
    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchSlop:I

    if-lt v0, v10, :cond_5

    if-le v1, v0, :cond_6

    .line 463
    :cond_5
    iput v11, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto :goto_1

    .line 468
    :cond_6
    if-gez v4, :cond_7

    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstDownX:I

    iget v13, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaLeft:I

    if-gt v10, v13, :cond_8

    :cond_7
    if-lez v4, :cond_9

    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstDownX:I

    iget v13, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaRight:I

    if-ge v10, v13, :cond_9

    .line 470
    :cond_8
    iput v11, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto :goto_1

    .line 471
    :cond_9
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v13, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchSlop:I

    if-le v10, v13, :cond_4

    .line 472
    iput v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto :goto_1

    .line 477
    .end local v0           #absDeltaX:I
    .end local v1           #absDeltaY:I
    .end local v4           #deltaX:I
    .end local v5           #deltaY:I
    :pswitch_1
    iput v8, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionX:F

    .line 478
    iput v9, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionY:F

    .line 479
    float-to-int v10, v8

    iput v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstDownX:I

    .line 480
    iget-object v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v11

    :goto_2
    iput v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    .line 484
    iget-boolean v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mForbidFocusOnOtherPage:Z

    if-eqz v10, :cond_4

    .line 485
    iget v10, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0, v10}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 486
    .local v3, current:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {p0, v3, v10, v13}, Lcom/zdworks/android/common/view/ScrollLayout;->isViewContains(Landroid/view/View;II)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_0

    .end local v3           #current:Landroid/view/View;
    :cond_a
    move v10, v12

    .line 480
    goto :goto_2

    .line 496
    :pswitch_2
    iput v11, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    .line 497
    iput-boolean v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    goto :goto_1

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getWidth()I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 116
    .local v6, childWidthSpec:I
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getHeight()I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 118
    .local v2, childHeightSpec:I
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildCount()I

    move-result v7

    .line 119
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 120
    invoke-virtual {p0, v8}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 119
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 126
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    iget v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 127
    iget v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {p0, v0, v6, v12}, Lcom/zdworks/android/common/view/ScrollLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p0, v0, v6, v2}, Lcom/zdworks/android/common/view/ScrollLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    .line 136
    .end local v0           #child:Landroid/view/View;
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v3, 0x0

    .line 137
    .local v3, childLeft:I
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildCount()I

    move-result v1

    .line 138
    .local v1, childCount:I
    iget v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    if-ge v12, v1, :cond_4

    iget v11, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    .line 140
    .local v11, screenCount:I
    :goto_2
    const/4 v5, 0x0

    .line 141
    .local v5, childWidth:I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v11, :cond_5

    .line 142
    invoke-virtual {p0, v8}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 143
    .local v4, childView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 145
    const/4 v12, 0x0

    add-int v13, v3, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v4, v3, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 147
    add-int/2addr v3, v5

    .line 141
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v4           #childView:Landroid/view/View;
    .end local v5           #childWidth:I
    .end local v11           #screenCount:I
    :cond_4
    move v11, v1

    .line 138
    goto :goto_2

    .line 150
    .restart local v5       #childWidth:I
    .restart local v11       #screenCount:I
    :cond_5
    sub-int v12, v3, v5

    iput v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScrollX:I

    .line 152
    iget-boolean v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstLayout:Z

    if-eqz v12, :cond_7

    .line 153
    const/4 v9, 0x0

    .line 154
    .local v9, left:I
    const/4 v8, 0x0

    :goto_4
    iget v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    if-ge v8, v12, :cond_6

    .line 155
    invoke-virtual {p0, v8}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v9, v12

    .line 154
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 157
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {p0, v9, v12}, Lcom/zdworks/android/common/view/ScrollLayout;->scrollTo(II)V

    .line 158
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstLayout:Z

    .line 160
    .end local v9           #left:I
    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 319
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 320
    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 322
    .local v13, y:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v14, v12

    float-to-int v4, v14

    .line 324
    .local v4, deltaX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_0

    .line 325
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 327
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 329
    packed-switch v3, :pswitch_data_0

    .line 428
    :goto_0
    const/4 v14, 0x1

    :goto_1
    return v14

    .line 332
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 335
    :cond_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionX:F

    .line 336
    move-object/from16 v0, p0

    iput v13, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionY:F

    goto :goto_0

    .line 340
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    if-eqz v14, :cond_5

    .line 341
    if-gez v4, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollDirection:I

    .line 343
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionY:F

    sub-float/2addr v14, v13

    float-to-int v5, v14

    .line 344
    .local v5, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 345
    .local v1, absDeltaX:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 346
    .local v2, absDeltaY:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchSlop:I

    if-lt v1, v14, :cond_2

    if-le v2, v1, :cond_4

    .line 347
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto :goto_0

    .line 341
    .end local v1           #absDeltaX:I
    .end local v2           #absDeltaY:I
    .end local v5           #deltaY:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 351
    .restart local v1       #absDeltaX:I
    .restart local v2       #absDeltaY:I
    .restart local v5       #deltaY:I
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    .line 355
    .end local v1           #absDeltaX:I
    .end local v2           #absDeltaY:I
    .end local v5           #deltaY:I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollDirection:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstDownX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaLeft:I

    if-gt v14, v15, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mScrollDirection:I

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstDownX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaRight:I

    if-ge v14, v15, :cond_8

    .line 357
    :cond_7
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto :goto_0

    .line 361
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v9

    .line 362
    .local v9, scrollX:I
    add-int v7, v9, v4

    .line 365
    .local v7, nextX:I
    if-gtz v7, :cond_9

    .line 366
    neg-int v14, v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zdworks/android/common/view/ScrollLayout;->scrollBy(II)V

    .line 367
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 368
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScrollX:I

    if-lt v7, v14, :cond_a

    .line 369
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScrollX:I

    sub-int/2addr v14, v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zdworks/android/common/view/ScrollLayout;->scrollBy(II)V

    .line 370
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 372
    :cond_a
    move-object/from16 v0, p0

    iput v12, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionX:F

    .line 373
    move-object/from16 v0, p0

    iput v13, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastMotionY:F

    .line 374
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/zdworks/android/common/view/ScrollLayout;->scrollBy(II)V

    goto/16 :goto_0

    .line 379
    .end local v7           #nextX:I
    .end local v9           #scrollX:I
    :pswitch_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    .line 381
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 382
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 385
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 386
    .local v10, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    invoke-virtual {v10, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 387
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v14

    float-to-int v11, v14

    .line 389
    .local v11, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getPrevPageIndex()I

    move-result v8

    .line 390
    .local v8, prev:I
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getNextPageIndex()I

    move-result v6

    .line 392
    .local v6, next:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mSnapVelocity:I

    if-le v11, v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    if-lez v14, :cond_d

    .line 394
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastScreen:I

    .line 395
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(I)V

    .line 415
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->recycle()V

    .line 417
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 419
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    goto/16 :goto_0

    .line 396
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mSnapVelocity:I

    neg-int v14, v14

    if-ge v11, v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_e

    .line 399
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mLastScreen:I

    .line 400
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(I)V

    goto :goto_3

    .line 401
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v14, v15, :cond_f

    .line 404
    move-object/from16 v0, p0

    iput v8, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/zdworks/android/common/view/ScrollLayout;->onScrollFinished(I)V

    goto :goto_3

    .line 406
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    if-ne v14, v15, :cond_10

    .line 410
    move-object/from16 v0, p0

    iput v6, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    .line 411
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zdworks/android/common/view/ScrollLayout;->onScrollFinished(I)V

    goto/16 :goto_3

    .line 413
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToDestination()V

    goto/16 :goto_3

    .line 423
    .end local v6           #next:I
    .end local v8           #prev:I
    .end local v10           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v11           #velocityX:I
    :pswitch_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchState:I

    .line 424
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/common/view/ScrollLayout;->mFirstMove:Z

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setForbidFocusOnOtherPage(Z)V
    .locals 0
    .parameter "forbid"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mForbidFocusOnOtherPage:Z

    .line 219
    return-void
.end method

.method public setSnapVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 198
    iput p1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mSnapVelocity:I

    .line 199
    return-void
.end method

.method public setTouchArea(II)V
    .locals 0
    .parameter "offsetLeft"
    .parameter "offsetRight"

    .prologue
    .line 193
    iput p1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaLeft:I

    .line 194
    iput p2, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mTouchAreaRight:I

    .line 195
    return-void
.end method

.method public snapToDestination()V
    .locals 8

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v4

    .line 223
    .local v4, scrollX:I
    iget v5, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v2, v5, -0x1

    .line 224
    .local v2, prev:I
    iget v5, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    add-int/lit8 v0, v5, 0x1

    .line 226
    .local v0, next:I
    invoke-virtual {p0, v2}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 227
    .local v3, prevView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, nextView:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 230
    invoke-virtual {p0, v2}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(I)V

    .line 241
    :goto_0
    return-void

    .line 231
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(I)V

    goto :goto_0

    .line 236
    :cond_1
    iget v5, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0, v5}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(I)V

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 287
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/zdworks/android/common/view/ScrollLayout;->snapToScreen(II)V

    .line 288
    return-void
.end method

.method public snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildCount()I

    move-result v6

    .line 266
    .local v6, childCount:I
    iget v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    if-ge v0, v6, :cond_0

    iget v9, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mMaxScreen:I

    .line 267
    .local v9, screenCount:I
    :goto_0
    add-int/lit8 v0, v9, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 269
    const/4 v8, 0x0

    .line 270
    .local v8, left:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, p1, :cond_1

    .line 271
    invoke-virtual {p0, v7}, Lcom/zdworks/android/common/view/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v8, v0

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7           #i:I
    .end local v8           #left:I
    .end local v9           #screenCount:I
    :cond_0
    move v9, v6

    .line 266
    goto :goto_0

    .line 273
    .restart local v7       #i:I
    .restart local v8       #left:I
    .restart local v9       #screenCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 275
    .local v3, delta:I
    iget-object v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 277
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/ScrollLayout;->invalidate()V

    .line 280
    .end local v3           #delta:I
    :cond_2
    iget v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    if-eq v0, p1, :cond_3

    .line 281
    iput p1, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    .line 282
    iget v0, p0, Lcom/zdworks/android/common/view/ScrollLayout;->mCurScreen:I

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/view/ScrollLayout;->onScrollFinished(I)V

    .line 284
    :cond_3
    return-void
.end method
