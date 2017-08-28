.class public Lcom/zdworks/android/calendartable/util/ViewFlow;
.super Landroid/widget/AdapterView;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;,
        Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;,
        Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;,
        Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ViewFlow"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mFirstMove:Z

.field private mForbidScrolling:Z

.field private mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

.field private mLastMotionPos:F

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

.field private mScrollVertically:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mSnapHelper:Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;

.field private mSnapVelocity:I

.field private mStopScrolling:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    .line 54
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 59
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 60
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstLayout:Z

    .line 65
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    .line 71
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 74
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 76
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    .line 78
    new-instance v0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/zdworks/android/calendartable/util/ViewFlow$1;-><init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    .line 123
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "sideBuffer"
    .parameter "scrollVertically"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    .line 54
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 59
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 60
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstLayout:Z

    .line 65
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    .line 71
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 74
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 76
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    .line 78
    new-instance v0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/zdworks/android/calendartable/util/ViewFlow$1;-><init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 128
    iput p2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    .line 129
    iput-boolean p3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    .line 130
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    .line 54
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 59
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 60
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstLayout:Z

    .line 65
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    .line 71
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 74
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 76
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    .line 78
    new-instance v0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/zdworks/android/calendartable/util/ViewFlow$1;-><init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 135
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->init()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/util/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/util/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/util/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/util/ViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zdworks/android/calendartable/util/ViewFlow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/zdworks/android/calendartable/util/ViewFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->resetFocus()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 139
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 140
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 141
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 143
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchSlop:I

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mMaximumVelocity:I

    .line 145
    new-instance v1, Lcom/zdworks/android/calendartable/util/ViewFlow$2;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/util/ViewFlow$2;-><init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapHelper:Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;

    .line 151
    return-void
.end method

.method private logBuffer()V
    .locals 3

    .prologue
    .line 890
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mLoadedViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexInAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IndexInBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "addToEnd"
    .parameter "convertView"

    .prologue
    .line 833
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1, p1, p3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 834
    .local v0, view:Landroid/view/View;
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, p2, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postViewSwitched(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 757
    if-nez p1, :cond_0

    .line 815
    :goto_0
    return-void

    .line 760
    :cond_0
    if-lez p1, :cond_5

    .line 761
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    .line 762
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 764
    const/4 v1, 0x0

    .line 767
    .local v1, recycleView:Landroid/view/View;
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_1

    .line 768
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #recycleView:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 769
    .restart local v1       #recycleView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    .line 771
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 775
    :cond_1
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    add-int v0, v2, v3

    .line 776
    .local v0, newBufferIndex:I
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 777
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 801
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->requestLayout()V

    .line 802
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v2, v4}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setVisibleView(IZ)V

    .line 804
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    if-eqz v2, :cond_3

    .line 805
    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/zdworks/android/calendartable/util/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 809
    :cond_3
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

    if-eqz v2, :cond_4

    .line 810
    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    .line 814
    :cond_4
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->logBuffer()V

    goto :goto_0

    .line 781
    .end local v0           #newBufferIndex:I
    .end local v1           #recycleView:Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    .line 782
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 783
    const/4 v1, 0x0

    .line 786
    .restart local v1       #recycleView:Landroid/view/View;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_6

    .line 787
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #recycleView:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 788
    .restart local v1       #recycleView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    .line 792
    :cond_6
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    sub-int v0, v2, v3

    .line 793
    .restart local v0       #newBufferIndex:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    .line 794
    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 796
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->logBuffer()V

    .line 742
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 743
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->removeAllViewsInLayout()V

    .line 745
    const/4 v1, 0x0

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 749
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 747
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_1
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->logBuffer()V

    .line 753
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->requestLayout()V

    .line 754
    return-void
.end method

.method private scrollBy(I)V
    .locals 2
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0, v1, p1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(II)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(II)V

    goto :goto_0
.end method

.method private setVisibleView(IZ)V
    .locals 11
    .parameter "indexInBuffer"
    .parameter "uiThread"

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    .line 606
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v0, :cond_1

    .line 607
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int v4, v0, v1

    .line 608
    .local v4, dy:I
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 610
    if-nez v4, :cond_0

    .line 611
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;->onScrollChanged(IIII)V

    .line 623
    .end local v4           #dy:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->invalidate()V

    .line 627
    :goto_1
    return-void

    .line 615
    :cond_1
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v8, v0, v1

    .line 616
    .local v8, dx:I
    iget-object v5, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    move v9, v3

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 618
    if-nez v8, :cond_0

    .line 619
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v8

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;->onScrollChanged(IIII)V

    goto :goto_0

    .line 626
    .end local v8           #dx:I
    :cond_2
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->postInvalidate()V

    goto :goto_1
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4
    .parameter "child"
    .parameter "addToEnd"
    .parameter "recycle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 820
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 821
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 825
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_2

    .line 826
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 829
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 826
    goto :goto_0

    .line 828
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 575
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollTo(II)V

    .line 577
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->postInvalidate()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 579
    const/4 v0, 0x0

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    .line 581
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 582
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastScrollDirection:I

    invoke-direct {p0, v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->postViewSwitched(I)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 155
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 156
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastOrientation:I

    .line 157
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    if-eqz v14, :cond_0

    .line 234
    const/4 v14, 0x0

    .line 363
    :goto_0
    return v14

    .line 236
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v14

    if-nez v14, :cond_1

    .line 237
    const/4 v14, 0x0

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 240
    .local v1, action:I
    const/4 v14, 0x1

    if-ne v1, v14, :cond_2

    .line 241
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 242
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    if-eqz v14, :cond_3

    .line 245
    const/4 v14, 0x0

    goto :goto_0

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_4

    .line 249
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 255
    .local v10, pos:F
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 363
    :cond_5
    :goto_2
    const/4 v14, 0x0

    goto :goto_0

    .line 253
    .end local v10           #pos:F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    goto :goto_1

    .line 266
    .restart local v10       #pos:F
    :pswitch_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto :goto_2

    :cond_7
    const/4 v14, 0x1

    goto :goto_3

    .line 274
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    sub-float v14, v10, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v6, v14

    .line 276
    .local v6, diff:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchSlop:I

    if-le v6, v14, :cond_9

    const/4 v9, 0x1

    .line 278
    .local v9, moved:Z
    :goto_4
    if-eqz v9, :cond_8

    .line 280
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 283
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 285
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    sub-float/2addr v14, v10

    float-to-int v4, v14

    .line 286
    .local v4, delta:I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    .line 288
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    if-eqz v14, :cond_d

    .line 289
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    if-eqz v14, :cond_d

    .line 291
    if-lez v4, :cond_a

    const/4 v7, 0x1

    .line 292
    .local v7, isNext:Z
    :goto_5
    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v5, v14, 0x1

    .line 294
    .local v5, dest:I
    :goto_6
    if-gez v5, :cond_c

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    add-int/2addr v5, v14

    goto :goto_6

    .line 276
    .end local v4           #delta:I
    .end local v5           #dest:I
    .end local v7           #isNext:Z
    .end local v9           #moved:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 291
    .restart local v4       #delta:I
    .restart local v9       #moved:Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 292
    .restart local v7       #isNext:Z
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v5, v14, -0x1

    goto :goto_6

    .line 296
    .restart local v5       #dest:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    rem-int/2addr v5, v14

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v15, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, v16

    invoke-interface {v0, v14, v15, v7}, Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;->onScrollStart(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v2

    .line 301
    .local v2, allowScroll:Z
    if-nez v2, :cond_d

    .line 302
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 303
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 304
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 309
    .end local v2           #allowScroll:Z
    .end local v5           #dest:I
    .end local v7           #isNext:Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollY()I

    move-result v11

    .line 311
    .local v11, scrollPos:I
    :goto_7
    if-gez v4, :cond_10

    .line 312
    if-lez v11, :cond_e

    .line 313
    neg-int v14, v11

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(I)V

    .line 329
    :cond_e
    :goto_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 309
    .end local v11           #scrollPos:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollX()I

    move-result v11

    goto :goto_7

    .line 315
    .restart local v11       #scrollPos:I
    :cond_10
    if-lez v4, :cond_e

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 318
    .local v8, lastChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v14, :cond_11

    .line 319
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v15

    sub-int v3, v14, v15

    .line 325
    .local v3, availableToScroll:I
    :goto_9
    if-lez v3, :cond_e

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(I)V

    goto :goto_8

    .line 322
    .end local v3           #availableToScroll:I
    :cond_11
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v15

    sub-int v3, v14, v15

    .restart local v3       #availableToScroll:I
    goto :goto_9

    .line 334
    .end local v3           #availableToScroll:I
    .end local v4           #delta:I
    .end local v6           #diff:I
    .end local v8           #lastChild:Landroid/view/View;
    .end local v9           #moved:Z
    .end local v11           #scrollPos:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 336
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mMaximumVelocity:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 337
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v14, :cond_13

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v14

    float-to-int v12, v14

    .line 340
    .local v12, velocity:I
    :goto_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    if-le v12, v14, :cond_14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    if-lez v14, :cond_14

    .line 342
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    .line 351
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_12

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->recycle()V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 357
    .end local v12           #velocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto/16 :goto_2

    .line 337
    .restart local v13       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_13
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v14

    float-to-int v12, v14

    goto :goto_a

    .line 343
    .restart local v12       #velocity:I
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    neg-int v14, v14

    if-ge v12, v14, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_15

    .line 346
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    goto :goto_b

    .line 348
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToDestination()V

    goto :goto_b

    .line 361
    .end local v12           #velocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto/16 :goto_2

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v11

    .line 195
    .local v11, count:I
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v0, :cond_1

    .line 196
    const/4 v9, 0x0

    .line 197
    .local v9, childTop:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_3

    .line 198
    invoke-virtual {p0, v12}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 199
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 200
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 201
    .local v7, childHeight:I
    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v2, v9, v7

    invoke-virtual {v6, v0, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 203
    add-int/2addr v9, v7

    .line 197
    .end local v7           #childHeight:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 208
    .end local v6           #child:Landroid/view/View;
    .end local v9           #childTop:I
    .end local v12           #i:I
    :cond_1
    const/4 v8, 0x0

    .line 209
    .local v8, childLeft:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    if-ge v12, v11, :cond_3

    .line 210
    invoke-virtual {p0, v12}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 211
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 212
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 213
    .local v10, childWidth:I
    const/4 v0, 0x0

    add-int v1, v8, v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 215
    add-int/2addr v8, v10

    .line 209
    .end local v10           #childWidth:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 220
    .end local v6           #child:Landroid/view/View;
    .end local v8           #childLeft:I
    :cond_3
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_4

    .line 221
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 226
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstLayout:Z

    .line 229
    :cond_4
    return-void

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 172
    .local v3, widthMode:I
    if-eq v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v0

    .line 186
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 187
    invoke-virtual {p0, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 588
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 589
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    if-eqz v1, :cond_0

    .line 590
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int v0, p1, v1

    .line 592
    .local v0, hPerceived:I
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/zdworks/android/calendartable/util/FlowIndicator;->onScrolled(IIII)V

    .line 594
    .end local v0           #hPerceived:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 368
    iget-boolean v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    if-eqz v12, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v10

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v12

    if-eqz v12, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    .local v0, action:I
    if-ne v0, v11, :cond_2

    .line 376
    iput-boolean v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    .line 377
    iput-boolean v11, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 379
    :cond_2
    iget-boolean v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mStopScrolling:Z

    if-nez v12, :cond_0

    .line 383
    iget-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    .line 384
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 386
    :cond_3
    iget-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 389
    iget-boolean v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 391
    .local v6, pos:F
    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_2
    move v10, v11

    .line 479
    goto :goto_0

    .line 389
    .end local v6           #pos:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    goto :goto_1

    .line 402
    .restart local v6       #pos:F
    :pswitch_0
    iput v6, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    .line 404
    iget-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_6

    :goto_3
    iput v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto :goto_2

    :cond_6
    move v10, v11

    goto :goto_3

    .line 410
    :pswitch_1
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v3, v12

    .line 412
    .local v3, diff:I
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchSlop:I

    if-le v3, v12, :cond_9

    move v5, v11

    .line 414
    .local v5, moved:Z
    :goto_4
    if-eqz v5, :cond_7

    .line 416
    iput v11, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    .line 419
    :cond_7
    iget v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    if-ne v10, v11, :cond_4

    .line 421
    iget v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    sub-float/2addr v10, v6

    float-to-int v2, v10

    .line 422
    .local v2, delta:I
    iput v6, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastMotionPos:F

    .line 424
    iget-boolean v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollY()I

    move-result v7

    .line 426
    .local v7, scrollPos:I
    :goto_5
    if-gez v2, :cond_b

    .line 427
    if-lez v7, :cond_8

    .line 428
    neg-int v10, v7

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(I)V

    :cond_8
    :goto_6
    move v10, v11

    .line 444
    goto :goto_0

    .end local v2           #delta:I
    .end local v5           #moved:Z
    .end local v7           #scrollPos:I
    :cond_9
    move v5, v10

    .line 412
    goto :goto_4

    .line 424
    .restart local v2       #delta:I
    .restart local v5       #moved:Z
    :cond_a
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollX()I

    move-result v7

    goto :goto_5

    .line 430
    .restart local v7       #scrollPos:I
    :cond_b
    if-lez v2, :cond_8

    .line 432
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 433
    .local v4, lastChild:Landroid/view/View;
    iget-boolean v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v10, :cond_c

    .line 434
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v12

    sub-int v1, v10, v12

    .line 440
    .local v1, availableToScroll:I
    :goto_7
    if-lez v1, :cond_8

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/zdworks/android/calendartable/util/ViewFlow;->scrollBy(I)V

    goto :goto_6

    .line 437
    .end local v1           #availableToScroll:I
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v12

    sub-int v1, v10, v12

    .restart local v1       #availableToScroll:I
    goto :goto_7

    .line 449
    .end local v1           #availableToScroll:I
    .end local v2           #delta:I
    .end local v3           #diff:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #moved:Z
    .end local v7           #scrollPos:I
    :pswitch_2
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    if-ne v12, v11, :cond_d

    .line 450
    iget-object v9, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 451
    .local v9, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    iget v13, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v9, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 452
    iget-boolean v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v12, :cond_e

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    float-to-int v8, v12

    .line 455
    .local v8, velocity:I
    :goto_8
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    if-le v8, v12, :cond_f

    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    if-lez v12, :cond_f

    .line 457
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    .line 466
    :goto_9
    iget-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_d

    .line 467
    iget-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 468
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 472
    .end local v8           #velocity:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_d
    iput v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto/16 :goto_2

    .line 452
    .restart local v9       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_e
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    float-to-int v8, v12

    goto :goto_8

    .line 458
    .restart local v8       #velocity:I
    :cond_f
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    neg-int v12, v12

    if-ge v8, v12, :cond_10

    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_10

    .line 461
    iget v12, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v12}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    goto :goto_9

    .line 463
    :cond_10
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToDestination()V

    goto :goto_9

    .line 476
    .end local v8           #velocity:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToDestination()V

    .line 477
    iput v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mTouchState:I

    goto/16 :goto_2

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 652
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "initialPosition"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mDataSetObserver:Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 659
    :cond_0
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 661
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 662
    new-instance v0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;-><init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mDataSetObserver:Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;

    .line 663
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mDataSetObserver:Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 671
    :cond_2
    :goto_0
    return-void

    .line 669
    :cond_3
    invoke-virtual {p0, p2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setFlowIndicator(Lcom/zdworks/android/calendartable/util/FlowIndicator;)V
    .locals 1
    .parameter "flowIndicator"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    .line 881
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    invoke-interface {v0, p0}, Lcom/zdworks/android/calendartable/util/FlowIndicator;->setViewFlow(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    .line 882
    return-void
.end method

.method public setForbidScrolling(Z)V
    .locals 0
    .parameter "forbidScrolling"

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mForbidScrolling:Z

    .line 886
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "interpolator"

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 841
    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 842
    return-void
.end method

.method public setOnViewSwitchListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

    .line 638
    return-void
.end method

.method public setScrollListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    .line 642
    return-void
.end method

.method public setSelection(I)V
    .locals 13
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 686
    const/4 v8, -0x1

    iput v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 687
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8, v12}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 688
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v8, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-static {p1, v11}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 692
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 694
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v5, recycleViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 697
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, recycleView:Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {p0, v4}, Lcom/zdworks/android/calendartable/util/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_1

    .line 701
    .end local v4           #recycleView:Landroid/view/View;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v9

    :goto_2
    invoke-direct {p0, p1, v12, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, currentView:Landroid/view/View;
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 705
    const/4 v3, 0x1

    .local v3, offset:I
    :goto_3
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSideBuffer:I

    sub-int/2addr v8, v3

    if-ltz v8, :cond_8

    .line 706
    sub-int v2, p1, v3

    .line 707
    .local v2, leftIndex:I
    add-int v6, p1, v3

    .line 708
    .local v6, rightIndex:I
    if-ltz v2, :cond_3

    .line 709
    iget-object v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v9

    :goto_4
    invoke-direct {p0, v2, v11, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 715
    :cond_3
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 716
    iget-object v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v9

    :goto_5
    invoke-direct {p0, v6, v12, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 705
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 701
    .end local v0           #currentView:Landroid/view/View;
    .end local v2           #leftIndex:I
    .end local v3           #offset:I
    .end local v6           #rightIndex:I
    :cond_5
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_2

    .line 709
    .restart local v0       #currentView:Landroid/view/View;
    .restart local v2       #leftIndex:I
    .restart local v3       #offset:I
    .restart local v6       #rightIndex:I
    :cond_6
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_4

    .line 716
    :cond_7
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_5

    .line 721
    .end local v2           #leftIndex:I
    .end local v6           #rightIndex:I
    :cond_8
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    .line 722
    iput p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    .line 724
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 725
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, v7, v11}, Lcom/zdworks/android/calendartable/util/ViewFlow;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_6

    .line 727
    .end local v7           #view:Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->requestLayout()V

    .line 728
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v8, v11}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setVisibleView(IZ)V

    .line 730
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    if-eqz v8, :cond_a

    .line 731
    iget-object v9, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mIndicator:Lcom/zdworks/android/calendartable/util/FlowIndicator;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v9, v8, v10}, Lcom/zdworks/android/calendartable/util/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 735
    :cond_a
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

    if-eqz v8, :cond_0

    .line 736
    iget-object v8, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mViewSwitchListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;

    iget v9, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v8, v0, v9}, Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public setSnapHelper(Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;)V
    .locals 1
    .parameter "helper"

    .prologue
    .line 845
    if-nez p1, :cond_0

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 848
    :cond_0
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapHelper:Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;

    .line 849
    return-void
.end method

.method public setSnapVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 495
    iput p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapVelocity:I

    .line 496
    return-void
.end method

.method public showNextScreen()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;->onScrollStart(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    goto :goto_0
.end method

.method public showPrevScreen()V
    .locals 5

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;->onScrollStart(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    goto :goto_0
.end method

.method public snapToDestination()V
    .locals 5

    .prologue
    .line 484
    iget-boolean v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v3, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v0

    .line 486
    .local v0, screenHeight:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollY()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v0

    .line 491
    .end local v0           #screenHeight:I
    .local v2, whichScreen:I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    .line 492
    return-void

    .line 488
    .end local v2           #whichScreen:I
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v1

    .line 489
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v1

    .restart local v2       #whichScreen:I
    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 11
    .parameter "whichScreen"

    .prologue
    .line 507
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastScrollDirection:I

    .line 508
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    if-eqz v0, :cond_5

    .line 519
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLastScrollDirection:I

    if-lez v0, :cond_2

    const/4 v8, 0x1

    .line 520
    .local v8, isNext:Z
    :goto_1
    if-eqz v8, :cond_3

    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v7, v0, 0x1

    .line 522
    .local v7, dest:I
    :goto_2
    if-gez v7, :cond_4

    .line 523
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v7, v0

    goto :goto_2

    .line 519
    .end local v7           #dest:I
    .end local v8           #isNext:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 520
    .restart local v8       #isNext:Z
    :cond_3
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v7, v0, -0x1

    goto :goto_2

    .line 524
    .restart local v7       #dest:I
    :cond_4
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    rem-int/2addr v7, v0

    .line 525
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollListener:Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v0, v1, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;->onScrollFailed(Landroid/view/View;Landroid/view/View;Z)V

    .line 530
    .end local v7           #dest:I
    .end local v8           #isNext:Z
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 531
    iput p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mNextScreen:I

    .line 533
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScrollVertically:Z

    if-eqz v0, :cond_6

    .line 534
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getHeight()I

    move-result v0

    mul-int v10, p1, v0

    .line 535
    .local v10, newY:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollY()I

    move-result v0

    sub-int v4, v10, v0

    .line 536
    .local v4, delta:I
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapHelper:Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;->calcSnapDuration(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 544
    .end local v10           #newY:I
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mFirstMove:Z

    .line 545
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->invalidate()V

    goto/16 :goto_0

    .line 539
    .end local v4           #delta:I
    :cond_6
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 540
    .local v9, newX:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollX()I

    move-result v0

    sub-int v4, v9, v0

    .line 541
    .restart local v4       #delta:I
    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow;->mSnapHelper:Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;->calcSnapDuration(I)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_3
.end method
