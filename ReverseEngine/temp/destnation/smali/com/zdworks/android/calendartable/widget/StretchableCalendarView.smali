.class public Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;
.super Landroid/widget/RelativeLayout;
.source "StretchableCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;,
        Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;,
        Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;,
        Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;
    }
.end annotation


# static fields
.field private static final HEADER_ID:I = 0xcabaaa

.field public static final TAG:Ljava/lang/String; = "ScrollableCalendarView"

.field private static final mMaxYear:I = 0x7f3

.field private static final mMinYear:I = 0x76e


# instance fields
.field private mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

.field private mCeilPos:I

.field private mCellLayout:I

.field private mContext:Landroid/content/Context;

.field private mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

.field private mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

.field private mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

.field private mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

.field private mFirstDayOfWeek:I

.field private mFirstRefresh:Z

.field private mFirstScroll:Z

.field private mFirstSwitch:Z

.field private mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHeader:Landroid/view/ViewGroup;

.field private mHeaderCellLayout:I

.field private mInSingleWeekMode:Z

.field private mLastMotionY:F

.field private final mLocation:[I

.field private mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

.field private mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

.field private mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

.field private mOnScrollChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;

.field private mProcessByHandle:Z

.field private mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;

.field private mScrollUpperBound:I

.field private mScroller:Landroid/widget/Scroller;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWeekBackground:Landroid/widget/FrameLayout;

.field private mWeekContentView:Landroid/view/View;

.field private mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

.field private mWeekViewContainer:Landroid/widget/FrameLayout;

.field private mWeekViewFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    .line 49
    iput v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCellLayout:I

    .line 50
    iput v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    .line 73
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstRefresh:Z

    .line 76
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFrame:Landroid/graphics/Rect;

    .line 79
    iput-boolean v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    .line 84
    iput-boolean v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mInSingleWeekMode:Z

    .line 86
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z

    .line 88
    iput v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    .line 49
    iput v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCellLayout:I

    .line 50
    iput v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    .line 73
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstRefresh:Z

    .line 76
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFrame:Landroid/graphics/Rect;

    .line 79
    iput-boolean v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    .line 84
    iput-boolean v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mInSingleWeekMode:Z

    .line 86
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z

    .line 88
    iput v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    .line 115
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->init()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private generateWeekView()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 164
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/zdworks/android/calendartable/R$layout;->week_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewContainer:Landroid/widget/FrameLayout;

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/zdworks/android/calendartable/R$id;->singleWeek:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 174
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFirstDayOfWeek(I)V

    .line 175
    new-instance v1, Lcom/zdworks/android/calendartable/logic/SingleWeek;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/logic/SingleWeek;-><init>()V

    .line 176
    .local v1, singleWeek:Lcom/zdworks/android/calendartable/logic/SingleWeek;
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 177
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setHeaderCellLayout(I)V

    .line 178
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCellLayout:I

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCellLayout(I)V

    .line 179
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V

    .line 180
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    if-nez v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V

    .line 186
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 187
    .local v2, table:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarOnClickListener()Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarOnLongClickListener()Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->initialize()V

    .line 193
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 195
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/zdworks/android/calendartable/R$id;->weekViewBackground:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    .line 197
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    new-instance v4, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;

    invoke-direct {v4, p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnLayoutChangeListener(Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;)V

    .line 213
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getTableRow(I)Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    .line 215
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    return-void

    .line 183
    .end local v2           #table:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    goto :goto_0
.end method

.method private refreshCeilPos()V
    .locals 4

    .prologue
    .line 577
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getHeaderView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 578
    .local v0, header:Landroid/view/View;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 579
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 580
    .local v1, top:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCeilPos:I

    .line 581
    return-void
.end method

.method private snapToDestination()V
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getScrollY()I

    move-result v0

    .line 760
    .local v0, scrollY:I
    iget v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollUpperBound:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->snapToSingleWeekMode()V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->snapToMonthMode()V

    goto :goto_0
.end method

.method private switchModeVisibility(Z)V
    .locals 8
    .parameter "toSingleWeekMode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 425
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 434
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekContentView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 438
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 440
    .local v2, focusDay:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 442
    .local v0, currentPageMonth:I
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 443
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 444
    .local v1, dayOfMonth:I
    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 445
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 446
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 447
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    .line 448
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 450
    :cond_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 452
    .end local v1           #dayOfMonth:I
    :cond_3
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 123
    .local v0, x:I
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 124
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->scrollTo(II)V

    .line 125
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->postInvalidate()V

    .line 127
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method protected fillHeader()V
    .locals 8

    .prologue
    const/4 v6, 0x7

    .line 130
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getFirstDayOfWeek()I

    move-result v0

    .line 132
    .local v0, firstDoW:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 133
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 136
    .local v3, mondayList:[I
    move-object v2, v3

    .line 144
    .end local v3           #mondayList:[I
    .local v2, list:[I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 145
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aget v7, v2, v1

    invoke-interface {v5, v6, v7}, Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;->fill(Landroid/view/View;I)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1           #i:I
    .end local v2           #list:[I
    :cond_0
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    .line 141
    .local v4, sundayList:[I
    move-object v2, v4

    .restart local v2       #list:[I
    goto :goto_0

    .line 147
    .end local v4           #sundayList:[I
    .restart local v1       #i:I
    :cond_1
    return-void

    .line 133
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

    .line 138
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public focusOn(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->isInSingleWeekMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewFlow()Lcom/zdworks/android/calendartable/util/ViewFlow;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    return-object v0
.end method

.method public getWeekView()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v0
.end method

.method public getWeekViewBackground()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 257
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    .line 259
    new-instance v1, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    .line 261
    new-instance v1, Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4, v4}, Lcom/zdworks/android/calendartable/util/ViewFlow;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    .line 262
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    const v2, 0xcabaaa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {p0, v1, v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    new-instance v2, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;

    invoke-direct {v2, p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V

    invoke-virtual {v1, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setOnViewSwitchListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;)V

    .line 286
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSnapVelocity(I)V

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->setScrollListener(Lcom/zdworks/android/calendartable/callback/ScrollListener;)V

    .line 288
    return-void
.end method

.method public initialize()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 296
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 297
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget v7, Lcom/zdworks/android/calendartable/R$layout;->calendar:I

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 300
    new-instance v7, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    .line 301
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    const v8, 0xcabaaa

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 302
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->bringToFront()V

    .line 309
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v7, 0x7

    if-ge v1, v7, :cond_0

    .line 310
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    invoke-virtual {v3, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, headerCell:Landroid/view/View;
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f80

    invoke-direct {v8, v11, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0           #headerCell:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->fillHeader()V

    .line 316
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->generateWeekView()V

    .line 318
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 319
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 322
    :cond_1
    new-instance v7, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;

    invoke-direct {v7, p0, v12}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;)V

    iput-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    .line 323
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 324
    .local v6, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v6, v11}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawHeader(Z)V

    .line 325
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    invoke-virtual {v6, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setHeaderCellLayout(I)V

    .line 326
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCellLayout:I

    invoke-virtual {v6, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCellLayout(I)V

    .line 327
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    invoke-virtual {v6, v7}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V

    .line 328
    invoke-virtual {v6}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->initialize()V

    goto :goto_1

    .line 331
    .end local v6           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 332
    .local v5, today:Ljava/util/Calendar;
    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v9, v5}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->dateToPos(Ljava/util/Calendar;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 333
    return-void
.end method

.method public isInSingleWeekMode()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mInSingleWeekMode:Z

    return v0
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 3
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/TimeUtils;->cleanUp(Ljava/util/Calendar;)V

    .line 343
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    .line 345
    .local v0, focus:Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/zdworks/android/calendartable/util/TimeUtils;->inSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2, p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->dateToPos(Ljava/util/Calendar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSelection(I)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->isInSingleWeekMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 351
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->focusOn(Ljava/util/Calendar;)Z

    .line 352
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 363
    iget-object v10, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    if-nez v10, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v8

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFrame:Landroid/graphics/Rect;

    .line 367
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    .line 369
    .local v2, handle:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 370
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLastMotionY:F

    .line 374
    iget-object v10, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_2

    .line 375
    iget-object v10, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v10, v9}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setForbidScrolling(Z)V

    .line 378
    :cond_2
    iget-boolean v10, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    if-eqz v10, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 380
    .local v5, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 382
    .local v6, rawY:F
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    .line 383
    .local v4, loc:[I
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 384
    aget v3, v4, v8

    .line 385
    .local v3, left:I
    aget v7, v4, v9

    .line 386
    .local v7, top:I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v1, v3, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 389
    float-to-int v10, v5

    float-to-int v11, v6

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 390
    iput-boolean v9, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    move v8, v9

    .line 391
    goto :goto_0

    .line 396
    .end local v3           #left:I
    .end local v4           #loc:[I
    .end local v5           #rawX:F
    .end local v6           #rawY:F
    .end local v7           #top:I
    :pswitch_1
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v9, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setForbidScrolling(Z)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 356
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 358
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->refreshCeilPos()V

    .line 359
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v5, 0x1

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onScrollChanged(IIII)V

    .line 406
    sub-int v1, p3, p1

    .line 407
    .local v1, deltaX:I
    sub-int v2, p4, p2

    .line 408
    .local v2, deltaY:I
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 409
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnScrollChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnScrollChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;

    invoke-interface {v4, p0, v1, v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;->onScrollChanged(Landroid/view/View;II)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getFocusedCell()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 414
    .local v0, cell:Landroid/view/View;
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 415
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLocation:[I

    aget v3, v4, v5

    .line 417
    .local v3, top:I
    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCeilPos:I

    if-ge v3, v4, :cond_2

    .line 418
    invoke-direct {p0, v5}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->switchModeVisibility(Z)V

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCeilPos:I

    if-lt v3, v4, :cond_1

    .line 420
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->switchModeVisibility(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 458
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    if-nez v6, :cond_1

    .line 459
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 529
    :goto_0
    return v8

    .line 462
    :cond_1
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 463
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 465
    :cond_2
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 468
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 470
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v8, v7

    .line 529
    goto :goto_0

    .line 475
    :pswitch_0
    iput v5, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLastMotionY:F

    goto :goto_1

    .line 479
    :pswitch_1
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLastMotionY:F

    sub-float/2addr v6, v5

    float-to-int v1, v6

    .line 481
    .local v1, deltaY:I
    iget-boolean v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    if-eqz v6, :cond_4

    .line 482
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    if-eqz v6, :cond_3

    .line 483
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v10

    iget-object v11, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    if-lez v1, :cond_5

    move v6, v7

    :goto_2
    invoke-interface {v9, v10, v11, v6}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;->onModeSwitchStart(Landroid/view/View;Landroid/view/View;Z)V

    .line 487
    :cond_3
    iput-boolean v8, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    .line 491
    :cond_4
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getScrollY()I

    move-result v3

    .line 492
    .local v3, scrollY:I
    add-int v2, v3, v1

    .line 493
    .local v2, newScrollY:I
    if-gtz v2, :cond_6

    .line 494
    neg-int v6, v3

    invoke-virtual {p0, v8, v6}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->scrollBy(II)V

    goto :goto_0

    .end local v2           #newScrollY:I
    .end local v3           #scrollY:I
    :cond_5
    move v6, v8

    .line 483
    goto :goto_2

    .line 496
    .restart local v2       #newScrollY:I
    .restart local v3       #scrollY:I
    :cond_6
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollUpperBound:I

    if-lt v2, v6, :cond_7

    .line 497
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollUpperBound:I

    sub-int/2addr v6, v3

    invoke-virtual {p0, v8, v6}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->scrollBy(II)V

    goto :goto_0

    .line 500
    :cond_7
    iput v5, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mLastMotionY:F

    .line 501
    invoke-virtual {p0, v8, v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->scrollBy(II)V

    goto :goto_1

    .line 506
    .end local v1           #deltaY:I
    .end local v2           #newScrollY:I
    .end local v3           #scrollY:I
    :pswitch_2
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 507
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 509
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->snapToDestination()V

    .line 511
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_8

    .line 512
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 513
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 517
    :cond_8
    iput-boolean v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    .line 518
    iput-boolean v8, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    .line 519
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v6, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setForbidScrolling(Z)V

    goto :goto_1

    .line 522
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->snapToDestination()V

    .line 525
    iput-boolean v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstScroll:Z

    .line 526
    iput-boolean v8, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mProcessByHandle:Z

    goto :goto_1

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public refreshAllPages()V
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    .line 538
    .local v0, date:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/TimeUtils;->cleanUp(Ljava/util/Calendar;)V

    .line 540
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2, v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->dateToPos(Ljava/util/Calendar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSelection(I)V

    .line 541
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->isInSingleWeekMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 544
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->focusOn(Ljava/util/Calendar;)Z

    .line 545
    return-void
.end method

.method public refreshCurrentPage()V
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 534
    return-void
.end method

.method public refreshWeekView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 548
    iget-boolean v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstRefresh:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 550
    const/4 v2, 0x0

    .line 551
    .local v2, height:I
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4, v6}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getTableRow(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 552
    .local v3, row:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 553
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 554
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 555
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 556
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 558
    :cond_0
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->requestLayout()V

    .line 560
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollUpperBound:I

    .line 562
    iput-boolean v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstRefresh:Z

    .line 565
    .end local v2           #height:I
    .end local v3           #row:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getFocusDate()Ljava/util/Calendar;

    move-result-object v1

    .line 566
    .local v1, focused:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    .line 567
    .local v0, current:Ljava/util/Calendar;
    invoke-static {v1, v0}, Lcom/zdworks/android/calendartable/util/TimeUtils;->inSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_2
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public setCalendarExceptionHandler(Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    .line 697
    return-void
.end method

.method public setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 589
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 590
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V

    goto :goto_0

    .line 592
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    .line 601
    return-void
.end method

.method public setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 609
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 610
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V

    goto :goto_0

    .line 612
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 620
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mCellLayout:I

    .line 621
    return-void
.end method

.method public setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 624
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 625
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V

    goto :goto_0

    .line 627
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 635
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 636
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    goto :goto_0

    .line 638
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    .line 639
    return-void
.end method

.method public setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    .line 655
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 656
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V

    goto :goto_0

    .line 658
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 8
    .parameter "dayOfWeek"

    .prologue
    .line 817
    const/4 v2, 0x0

    .line 818
    .local v2, refreshPage:Z
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    .line 819
    .local v0, currentPage:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getFirstDayOfWeek()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 821
    const/4 v2, 0x1

    .line 824
    :cond_0
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 825
    .local v3, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v3, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 828
    .end local v3           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    if-eqz v4, :cond_2

    .line 829
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getFocusDate()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v4, v5, v6, v7}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    .line 833
    :cond_2
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeader:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    if-eq v4, p1, :cond_3

    .line 834
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    .line 835
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->fillHeader()V

    .line 836
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFirstDayOfWeek(I)V

    .line 840
    :goto_1
    return-void

    .line 838
    :cond_3
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstDayOfWeek:I

    goto :goto_1
.end method

.method public setHandle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    .line 662
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handle must be this view\'s child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 667
    return-void
.end method

.method public setHeaderCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 675
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mHeaderCellLayout:I

    .line 676
    return-void
.end method

.method public setOnModeChangeListener(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    .line 693
    return-void
.end method

.method public setOnPageChangeListener(Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    .line 685
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnScrollChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnScrollChangedListener;

    .line 689
    return-void
.end method

.method public setScrollListener(Lcom/zdworks/android/calendartable/callback/ScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;

    .line 701
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    new-instance v1, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setScrollListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;)V

    .line 738
    return-void
.end method

.method public setWeekViewFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekViewFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    .line 645
    return-void
.end method

.method public showNextPage()V
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->isInSingleWeekMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->showNextScreen()V

    .line 747
    :cond_0
    return-void
.end method

.method public showPrevPage()V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->isInSingleWeekMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->showPrevScreen()V

    .line 756
    :cond_0
    return-void
.end method

.method public snapToMonthMode()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getScrollY()I

    move-result v2

    .line 769
    .local v2, scrollY:I
    if-eqz v2, :cond_0

    .line 770
    neg-int v4, v2

    .line 771
    .local v4, delta:I
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0x2bc

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 772
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->invalidate()V

    .line 775
    .end local v4           #delta:I
    :cond_0
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mInSingleWeekMode:Z

    .line 776
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-interface {v0, v3, v5, v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;->onModeSwitchFinish(Landroid/view/View;Landroid/view/View;Z)V

    .line 780
    :cond_1
    return-void
.end method

.method public snapToSingleWeekMode()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getScrollY()I

    move-result v2

    .line 784
    .local v2, scrollY:I
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollUpperBound:I

    .line 785
    .local v6, upper:I
    if-eq v2, v6, :cond_0

    .line 786
    sub-int v4, v6, v2

    .line 787
    .local v4, delta:I
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0x2bc

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 788
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->invalidate()V

    .line 791
    .end local v4           #delta:I
    :cond_0
    iput-boolean v7, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mInSingleWeekMode:Z

    .line 792
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnModeChange:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v1

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekView:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-interface {v0, v1, v3, v7}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$OnModeChangeListener;->onModeSwitchFinish(Landroid/view/View;Landroid/view/View;Z)V

    .line 795
    :cond_1
    return-void
.end method
