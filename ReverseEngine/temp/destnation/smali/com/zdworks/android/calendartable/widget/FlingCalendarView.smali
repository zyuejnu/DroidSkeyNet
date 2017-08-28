.class public Lcom/zdworks/android/calendartable/widget/FlingCalendarView;
.super Landroid/widget/LinearLayout;
.source "FlingCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;,
        Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_THRESHOLD_DISTANCE:I = 0x32

.field public static final ORIENT_BOTH:I = 0x2

.field public static final ORIENT_HORIZONTAL:I = 0x0

.field public static final ORIENT_VERTICAL:I = 0x1

.field public static final STATE_LOWER_BOUND:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_UPPER_BOUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FlingCalendarView"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

.field private mCellLayout:I

.field private mContext:Landroid/content/Context;

.field private mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

.field private mHeaderCellLayout:I

.field private mHeaderRow:Landroid/widget/TableRow;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

.field private mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

.field private mSrollOrientation:I

.field private mState:I

.field private mThresholdDistance:I

.field private mTouchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mCellLayout:I

    .line 57
    iput v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderCellLayout:I

    .line 77
    const/16 v2, 0x32

    iput v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mThresholdDistance:I

    .line 87
    sget-object v2, Lcom/zdworks/android/calendartable/R$styleable;->ScrollableCalendarView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mSrollOrientation:I

    .line 94
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mCellLayout:I

    .line 96
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderCellLayout:I

    .line 101
    new-instance v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-direct {v2}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;-><init>()V

    iput-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    .line 102
    const/4 v2, 0x4

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_left_in:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 105
    .local v1, animId:I
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromLeft:Landroid/view/animation/Animation;

    .line 108
    const/4 v2, 0x5

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_right_out:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToRight:Landroid/view/animation/Animation;

    .line 114
    const/4 v2, 0x6

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_right_in:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromRight:Landroid/view/animation/Animation;

    .line 120
    const/4 v2, 0x7

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_left_out:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToLeft:Landroid/view/animation/Animation;

    .line 126
    const/16 v2, 0x8

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_top_in:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromTop:Landroid/view/animation/Animation;

    .line 132
    const/16 v2, 0x9

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_bottom_out:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 135
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToBottom:Landroid/view/animation/Animation;

    .line 138
    const/16 v2, 0xa

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_bottom_in:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromBottom:Landroid/view/animation/Animation;

    .line 144
    const/16 v2, 0xb

    sget v3, Lcom/zdworks/android/calendartable/R$anim;->default_top_out:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, v2, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToTop:Landroid/view/animation/Animation;

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->init()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mSrollOrientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$102(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionX:F

    return p1
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionY:F

    return v0
.end method

.method static synthetic access$202(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mLastMotionY:F

    return p1
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mThresholdDistance:I

    return v0
.end method

.method static synthetic access$400(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I

    return v0
.end method

.method static synthetic access$402(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mTouchState:I

    return p1
.end method


# virtual methods
.method protected fillHeader()V
    .locals 5

    .prologue
    .line 180
    const/4 v2, 0x7

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 184
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;->fill(Landroid/view/View;I)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void

    .line 180
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public focusOn(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v0
.end method

.method public getFocusDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getNextPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1
    .parameter "index"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 191
    const/4 p1, 0x0

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v0

    .line 192
    :cond_1
    if-gez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getChildCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method public getPageCnt()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPrevPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    return-object v0
.end method

.method public getSrollOrientation()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mSrollOrientation:I

    return v0
.end method

.method protected init()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 162
    new-instance v3, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;-><init>(Lcom/zdworks/android/calendartable/widget/FlingCalendarView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    .line 163
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, lParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 170
    new-instance v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v2, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v2, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawHeader(Z)V

    .line 174
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v2           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x2

    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 462
    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 463
    .local v6, inflater:Landroid/view/LayoutInflater;
    sget v8, Lcom/zdworks/android/calendartable/R$layout;->calendar:I

    invoke-virtual {v6, v8, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 466
    new-instance v4, Landroid/widget/TableLayout;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 467
    .local v4, headerTable:Landroid/widget/TableLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v14, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 473
    new-instance v8, Landroid/widget/TableRow;

    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    .line 474
    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v9, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/4 v8, 0x7

    if-ge v5, v8, :cond_2

    .line 478
    iget v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderCellLayout:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 479
    .local v3, headerCell:Landroid/view/View;
    if-eqz v5, :cond_0

    const/4 v8, 0x6

    if-ne v5, v8, :cond_1

    .line 480
    :cond_0
    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v11, v13, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 485
    :cond_1
    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v9, v11, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 489
    .end local v3           #headerCell:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->fillHeader()V

    .line 490
    invoke-virtual {v4, v12}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 491
    invoke-virtual {v4, v12}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 493
    new-instance v0, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;-><init>()V

    .line 494
    .local v0, cTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 495
    .local v7, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 497
    :try_start_0
    invoke-virtual {v0, v7}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->jumpTo(Ljava/util/Calendar;)V

    .line 498
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 499
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getNextMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 500
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getPrevMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V
    :try_end_0
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_2
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v1

    .line 507
    .local v1, cnt:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_3

    .line 509
    invoke-virtual {p0, v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    iget v9, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderCellLayout:I

    invoke-virtual {v8, v9}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setHeaderCellLayout(I)V

    .line 510
    invoke-virtual {p0, v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    iget v9, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mCellLayout:I

    invoke-virtual {v8, v9}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCellLayout(I)V

    .line 511
    invoke-virtual {p0, v5}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->initialize()V

    .line 507
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 501
    .end local v1           #cnt:I
    :catch_0
    move-exception v2

    .line 502
    .local v2, ex:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;->printStackTrace()V

    .line 503
    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 513
    .end local v2           #ex:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    .restart local v1       #cnt:I
    :cond_3
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->refreshAll()V

    .line 514
    return-void
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 8
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 404
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    .line 405
    .local v0, curr:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 407
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    .line 409
    .local v1, currTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    if-eqz v5, :cond_0

    .line 410
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v6

    invoke-interface {v5, v0, v6, v7}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    .line 414
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPrevPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    .line 418
    .local v4, prev:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getPrevMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 419
    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V
    :try_end_0
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v4           #prev:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getNextPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    .line 426
    .local v3, next:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getNextMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 427
    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V
    :try_end_1
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    .end local v3           #next:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :goto_1
    return-void

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, ex:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    iput v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    goto :goto_0

    .line 428
    .end local v2           #ex:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    :catch_1
    move-exception v2

    .line 429
    .restart local v2       #ex:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    const/4 v5, 0x1

    iput v5, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    goto :goto_1
.end method

.method public refresh(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 611
    return-void
.end method

.method public refreshAll()V
    .locals 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 599
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 600
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method public setAnimationHelper(Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    .line 246
    return-void
.end method

.method public setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 523
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 524
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_0
    return-void
.end method

.method public setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 547
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 548
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method public setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 535
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 536
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_0
    return-void
.end method

.method public setCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 227
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mCellLayout:I

    .line 228
    return-void
.end method

.method public setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 589
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 590
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_0
    return-void
.end method

.method public setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 568
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 569
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return-void
.end method

.method public setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    .line 581
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPageCnt()I

    move-result v0

    .line 582
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 583
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPage(I)Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    return-void
.end method

.method public setHeaderCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 236
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mHeaderCellLayout:I

    .line 237
    return-void
.end method

.method public setOnPageChangeListener(Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 558
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    .line 559
    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 218
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mSrollOrientation:I

    .line 219
    return-void
.end method

.method public showNextPage()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getSrollOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showNextPage(Z)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showNextPage(Z)V

    goto :goto_0
.end method

.method protected showNextPage(Z)V
    .locals 9
    .parameter "isVertical"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getSrollOrientation()I

    move-result v5

    .line 281
    .local v5, orient:I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    if-eqz p1, :cond_0

    if-eq v5, v6, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v5, :cond_2

    :cond_1
    move v0, v6

    .line 285
    .local v0, allowScroll:Z
    :cond_2
    if-nez v0, :cond_4

    .line 322
    :cond_3
    :goto_0
    return-void

    .line 288
    :cond_4
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    if-ne v7, v6, :cond_5

    .line 289
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    sget v8, Lcom/zdworks/android/calendartable/R$string;->wrongdatesettixing:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zdworks/android/calendartable/util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_5
    if-eqz p1, :cond_6

    .line 295
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromBottom:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToTop:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 302
    :goto_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    .line 303
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->showNext()V

    .line 305
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    .line 307
    .local v2, current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :try_start_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getNextPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    .line 308
    .local v4, next:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    .line 309
    .local v1, currTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getNextMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 310
    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 311
    const/4 v7, 0x0

    iput v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I
    :try_end_0
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1           #currTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .end local v4           #next:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :goto_2
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    if-eqz v7, :cond_3

    .line 318
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v8

    invoke-interface {v7, v2, v8, v6}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    goto :goto_0

    .line 298
    .end local v2           #current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_6
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromRight:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 312
    .restart local v2       #current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :catch_0
    move-exception v3

    .line 313
    .local v3, e:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    iput v6, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    .line 314
    const-string v7, "FlingCalendarView"

    const-string v8, "\u5230\u8fbe\u65e5\u671f\u4e0a\u9650"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public showPrevPage()V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getSrollOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showPrevPage(Z)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->showPrevPage(Z)V

    goto :goto_0
.end method

.method protected showPrevPage(Z)V
    .locals 10
    .parameter "isVertical"

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getSrollOrientation()I

    move-result v4

    .line 343
    .local v4, orient:I
    if-eq v4, v9, :cond_1

    if-eqz p1, :cond_0

    if-eq v4, v0, :cond_1

    :cond_0
    if-nez p1, :cond_3

    if-nez v4, :cond_3

    .line 347
    .local v0, allowScroll:Z
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 383
    :cond_2
    :goto_1
    return-void

    .end local v0           #allowScroll:Z
    :cond_3
    move v0, v6

    .line 343
    goto :goto_0

    .line 350
    .restart local v0       #allowScroll:Z
    :cond_4
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    if-ne v7, v9, :cond_5

    .line 351
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mContext:Landroid/content/Context;

    sget v8, Lcom/zdworks/android/calendartable/R$string;->wrongdatesettixing:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zdworks/android/calendartable/util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_5
    if-eqz p1, :cond_6

    .line 357
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToBottom:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 364
    :goto_2
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->showPrevious()V

    .line 366
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    .line 368
    .local v2, current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :try_start_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->getPrevPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v5

    .line 369
    .local v5, prev:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    .line 370
    .local v1, currTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getPrevMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 371
    invoke-virtual {v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 372
    const/4 v7, 0x0

    iput v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I
    :try_end_0
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1           #currTable:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .end local v5           #prev:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :goto_3
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    if-eqz v7, :cond_2

    .line 379
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v8

    invoke-interface {v7, v2, v8, v6}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    goto :goto_1

    .line 360
    .end local v2           #current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_6
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->inFromLeft:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mScroller:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mAnimationHelper:Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;

    iget-object v8, v8, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;->outToRight:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Lcom/zdworks/android/calendartable/widget/FlingCalendarView$CalendarScroller;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 373
    .restart local v2       #current:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :catch_0
    move-exception v3

    .line 374
    .local v3, e:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    iput v9, p0, Lcom/zdworks/android/calendartable/widget/FlingCalendarView;->mState:I

    .line 375
    const-string v7, "FlingCalendarView"

    const-string v8, "\u5230\u8fbe\u65e5\u671f\u4e0b\u9650"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
