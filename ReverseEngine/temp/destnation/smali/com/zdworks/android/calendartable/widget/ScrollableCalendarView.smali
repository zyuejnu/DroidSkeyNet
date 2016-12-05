.class public Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
.super Landroid/widget/LinearLayout;
.source "ScrollableCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;,
        Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScrollableCalendarView"


# instance fields
.field private mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

.field private mBeforePageLoad:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;

.field private mCellLayout:I

.field private mContext:Landroid/content/Context;

.field private mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

.field private mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

.field private mFirstSwitch:Z

.field private mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

.field private mHeader:Landroid/widget/TableLayout;

.field private mHeaderCellLayout:I

.field private mHeaderRow:Landroid/widget/TableRow;

.field private mMaxYear:I

.field private mMinYear:I

.field private mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

.field private mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mCellLayout:I

    .line 37
    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderCellLayout:I

    .line 38
    const/16 v0, 0x76e

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I

    .line 39
    const/16 v0, 0x7f3

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMaxYear:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mCellLayout:I

    .line 37
    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderCellLayout:I

    .line 38
    const/16 v0, 0x76e

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I

    .line 39
    const/16 v0, 0x7f3

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMaxYear:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z

    .line 65
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I

    return v0
.end method

.method static synthetic access$800(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMaxYear:I

    return v0
.end method

.method static synthetic access$900(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mBeforePageLoad:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;

    return-object v0
.end method


# virtual methods
.method protected fillHeader()V
    .locals 5

    .prologue
    .line 101
    const/4 v2, 0x7

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 105
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;->fill(Landroid/view/View;I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void

    .line 101
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
    .line 188
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v0
.end method

.method public getFocusDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    return-object v0
.end method

.method public getNextPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 3

    .prologue
    .line 140
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->access$300(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, viewList:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/calendartable/widget/CalendarTableView;>;"
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 142
    .local v0, next:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v2
.end method

.method public getPrevPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->access$300(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, viewList:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/calendartable/widget/CalendarTableView;>;"
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 151
    .local v0, prev:I
    if-gez v0, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 154
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    return-object v2
.end method

.method public getViewFlow()Lcom/zdworks/android/calendartable/util/ViewFlow;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 71
    new-instance v0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-direct {v0, p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;-><init>(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    .line 73
    new-instance v0, Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    .line 74
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    new-instance v1, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;-><init>(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setOnViewSwitchListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;)V

    .line 96
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSnapVelocity(I)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setScrollListener(Lcom/zdworks/android/calendartable/callback/ScrollListener;)V

    .line 98
    return-void
.end method

.method public initialize()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 209
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 210
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget v6, Lcom/zdworks/android/calendartable/R$layout;->calendar:I

    invoke-virtual {v3, v6, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 213
    new-instance v6, Landroid/widget/TableLayout;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeader:Landroid/widget/TableLayout;

    .line 214
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeader:Landroid/widget/TableLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v12, v7}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v6, Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    .line 217
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeader:Landroid/widget/TableLayout;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v8, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x7

    if-ge v1, v6, :cond_2

    .line 222
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderCellLayout:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, headerCell:Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v6, 0x6

    if-ne v1, v6, :cond_1

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v9, v10, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderRow:Landroid/widget/TableRow;

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v7, v9, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 233
    .end local v0           #headerCell:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->fillHeader()V

    .line 234
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeader:Landroid/widget/TableLayout;

    invoke-virtual {v6, v11}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 235
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeader:Landroid/widget/TableLayout;

    invoke-virtual {v6, v11}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 237
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v6}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 238
    .local v5, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v5, v12}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawHeader(Z)V

    .line 239
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderCellLayout:I

    invoke-virtual {v5, v6}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setHeaderCellLayout(I)V

    .line 240
    iget v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mCellLayout:I

    invoke-virtual {v5, v6}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCellLayout(I)V

    .line 241
    invoke-virtual {v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->initialize()V

    goto :goto_2

    .line 244
    .end local v5           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 245
    .local v4, today:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    iget-object v8, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v8, v4}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->dateToPos(Ljava/util/Calendar;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 246
    return-void
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 2
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->dateToPos(Ljava/util/Calendar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setSelection(I)V

    .line 179
    return-void
.end method

.method public refreshCurrentPage()V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 369
    return-void
.end method

.method public setBeforePageLoadListener(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mBeforePageLoad:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;

    .line 292
    return-void
.end method

.method public setCalendarExceptionHandler(Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    .line 296
    return-void
.end method

.method public setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 254
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 255
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V

    goto :goto_0

    .line 257
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 277
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V

    goto :goto_0

    .line 279
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 266
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V

    goto :goto_0

    .line 268
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 116
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mCellLayout:I

    .line 117
    return-void
.end method

.method public setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 363
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V

    goto :goto_0

    .line 365
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 344
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    goto :goto_0

    .line 346
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V
    .locals 3
    .parameter "helper"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    .line 356
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->getViewList()Ljava/util/List;

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

    .line 357
    .local v1, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V

    goto :goto_0

    .line 359
    .end local v1           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method public setHeaderCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 125
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mHeaderCellLayout:I

    .line 126
    return-void
.end method

.method public setOnPageChangeListener(Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    .line 288
    return-void
.end method

.method public setScrollListener(Lcom/zdworks/android/calendartable/callback/ScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;

    .line 300
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    new-instance v1, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$2;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$2;-><init>(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->setScrollListener(Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;)V

    .line 335
    return-void
.end method

.method public showNextPage()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->showNextScreen()V

    .line 162
    return-void
.end method

.method public showPrevPage()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->showPrevScreen()V

    .line 169
    return-void
.end method
