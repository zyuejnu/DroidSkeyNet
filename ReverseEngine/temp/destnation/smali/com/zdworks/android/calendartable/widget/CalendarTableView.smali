.class public Lcom/zdworks/android/calendartable/widget/CalendarTableView;
.super Landroid/widget/FrameLayout;
.source "CalendarTableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;,
        Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;,
        Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;,
        Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;
    }
.end annotation


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field public static final DEFAULT_ROW_COUNT:I = 0x6


# instance fields
.field private mCellLayout:I

.field private mColumnCount:I

.field private mContext:Landroid/content/Context;

.field private mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

.field private mDrawEdgesHelper:Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;

.field private mDrawHeader:Z

.field private mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

.field private mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

.field private mFirstDayOfWeek:I

.field private mHeaderCellLayout:I

.field private mHeaderRow:Landroid/view/ViewGroup;

.field private mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

.field private mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

.field private mOnLayoutChange:Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;

.field private mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

.field private mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

.field private mRowCount:I

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

.field private mTableView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawHeader:Z

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFirstDayOfWeek:I

    .line 63
    const/4 v0, 0x6

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mColumnCount:I

    .line 85
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/zdworks/android/calendartable/util/StaticContext;->get()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/StaticContext;->set(Landroid/content/Context;)V

    .line 90
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setWillNotDraw(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/logic/Weeks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/widget/CalendarTableView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;)Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    return-object p1
.end method

.method private focusOn(II)Z
    .locals 6
    .parameter "row"
    .parameter "column"

    .prologue
    .line 452
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusPosition()I

    move-result v1

    .line 453
    .local v1, oldPos:I
    mul-int/lit8 v3, p1, 0x7

    add-int v0, v3, p2

    .line 455
    .local v0, newPos:I
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v3, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->focusOn(I)Z

    move-result v2

    .line 456
    .local v2, succeed:Z
    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refresh(I)V

    .line 458
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refresh(I)V

    .line 460
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;->onFocusChange(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 466
    :cond_0
    return v2
.end method


# virtual methods
.method protected fillHeader()V
    .locals 8

    .prologue
    const/4 v6, 0x7

    .line 473
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v5}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFirstDayOfWeek()I

    move-result v0

    .line 475
    .local v0, firstDoW:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 476
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 479
    .local v3, mondayList:[I
    move-object v2, v3

    .line 487
    .end local v3           #mondayList:[I
    .local v2, list:[I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 488
    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    iget-object v6, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aget v7, v2, v1

    invoke-interface {v5, v6, v7}, Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;->fill(Landroid/view/View;I)V

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    .end local v1           #i:I
    .end local v2           #list:[I
    :cond_0
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    .line 484
    .local v4, sundayList:[I
    move-object v2, v4

    .restart local v2       #list:[I
    goto :goto_0

    .line 490
    .end local v4           #sundayList:[I
    .restart local v1       #i:I
    :cond_1
    return-void

    .line 476
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

    .line 481
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

.method public findCellByDate(Ljava/util/Calendar;)Landroid/view/View;
    .locals 2
    .parameter "date"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v0

    .line 267
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(I)Landroid/view/View;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusOn(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 422
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;Z)Z

    move-result v0

    return v0
.end method

.method public focusOn(Ljava/util/Calendar;Z)Z
    .locals 4
    .parameter "date"
    .parameter "requestFocus"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->waitForLoading()V

    .line 429
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/TimeUtils;->cleanUp(Ljava/util/Calendar;)V

    .line 431
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v3, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v1

    .line 432
    .local v1, newPos:I
    if-gez v1, :cond_0

    .line 433
    const/4 v3, 0x0

    .line 448
    :goto_0
    return v3

    .line 436
    :cond_0
    div-int/lit8 v2, v1, 0x7

    .line 437
    .local v2, row:I
    rem-int/lit8 v0, v1, 0x7

    .line 438
    .local v0, column:I
    invoke-direct {p0, v2, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(II)Z

    .line 448
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getCalendarOnClickListener()Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    return-object v0
.end method

.method public getCalendarOnFocusChangeListener()Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    return-object v0
.end method

.method public getCalendarOnLongClickListener()Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    return-object v0
.end method

.method public getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    return-object v0
.end method

.method public getCell(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    .line 230
    div-int/lit8 v1, p1, 0x7

    .line 231
    .local v1, row:I
    rem-int/lit8 v0, p1, 0x7

    .line 232
    .local v0, column:I
    invoke-virtual {p0, v1, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getCell(II)Landroid/view/View;
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getCellCnt()I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    iget v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mColumnCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCellInfo(II)Lcom/zdworks/android/calendartable/logic/CellInfo;
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v0, p1, p2}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(II)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCellInfo(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/logic/CellInfo;
    .locals 2
    .parameter "date"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v1, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v0

    .line 253
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumnCnt()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mColumnCount:I

    return v0
.end method

.method public getDateOutOfRangeException()Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedCell()Landroid/view/View;
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusPosition()I

    move-result v0

    .line 237
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeaderCell(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRowCnt()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    return v0
.end method

.method public getTableRow(I)Landroid/view/ViewGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTableView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTableView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initialize()V
    .locals 14

    .prologue
    .line 97
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    iget v10, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFirstDayOfWeek:I

    invoke-virtual {v9, v10}, Lcom/zdworks/android/calendartable/logic/Weeks;->setFirstDayOfWeek(I)V

    .line 99
    iget v7, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    .line 100
    .local v7, rowCnt:I
    iget v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mColumnCount:I

    .line 102
    .local v1, columnCnt:I
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 105
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v8, Landroid/widget/TableLayout;

    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v8, table:Landroid/widget/TableLayout;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v9}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 110
    iget-boolean v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawHeader:Z

    if-eqz v9, :cond_1

    .line 111
    new-instance v9, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;

    iget-object v10, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    .line 113
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v9, 0x7

    if-ge v3, v9, :cond_0

    .line 114
    iget v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderCellLayout:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, headerCell:Landroid/view/View;
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x3f80

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v2           #headerCell:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderRow:Landroid/view/ViewGroup;

    new-instance v10, Landroid/widget/TableLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->fillHeader()V

    .line 124
    .end local v3           #i:I
    :cond_1
    new-instance v9, Lcom/zdworks/android/calendartable/view/CustomTableLayout;

    iget-object v10, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTableView:Landroid/view/ViewGroup;

    .line 125
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTableView:Landroid/view/ViewGroup;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRows:Ljava/util/List;

    .line 129
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 130
    new-instance v6, Lcom/zdworks/android/calendartable/view/CustomTableRow;

    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/zdworks/android/calendartable/view/CustomTableRow;-><init>(Landroid/content/Context;)V

    .line 131
    .local v6, row:Lcom/zdworks/android/calendartable/view/CustomTableRow;
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTableView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    iget-object v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRows:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 135
    iget v9, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mCellLayout:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, cell:Landroid/view/View;
    invoke-virtual {v6, v0}, Lcom/zdworks/android/calendartable/view/CustomTableRow;->addView(Landroid/view/View;)V

    .line 137
    new-instance v9, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;

    invoke-direct {v9, p0, v3, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;-><init>(Lcom/zdworks/android/calendartable/widget/CalendarTableView;II)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v9, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;

    invoke-direct {v9, p0, v3, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;-><init>(Lcom/zdworks/android/calendartable/widget/CalendarTableView;II)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 129
    .end local v0           #cell:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v5           #j:I
    .end local v6           #row:Lcom/zdworks/android/calendartable/view/CustomTableRow;
    :cond_3
    return-void
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 3
    .parameter "date"

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    invoke-virtual {v0, v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->cancel(Z)Z

    .line 402
    :cond_0
    new-instance v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;-><init>(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Lcom/zdworks/android/calendartable/logic/Weeks;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    .line 403
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    new-array v1, v2, [Ljava/util/Calendar;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 413
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 541
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawEdgesHelper:Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawEdgesHelper:Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;

    invoke-interface {v0, p1, p0}, Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;->drawEdges(Landroid/graphics/Canvas;Lcom/zdworks/android/calendartable/widget/CalendarTableView;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 549
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 551
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLayoutChange:Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLayoutChange:Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 554
    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 382
    div-int/lit8 v1, p1, 0x7

    .line 383
    .local v1, row:I
    rem-int/lit8 v0, p1, 0x7

    .line 384
    .local v0, column:I
    invoke-virtual {p0, v1, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refresh(II)V

    .line 385
    return-void
.end method

.method public refresh(II)V
    .locals 3
    .parameter "row"
    .parameter "column"

    .prologue
    .line 373
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-lt p2, v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v1, p1, p2}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(II)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v0

    .line 378
    .local v0, info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    invoke-virtual {p0, p1, p2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(II)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/zdworks/android/calendartable/callback/FillCellHelper;->fill(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    goto :goto_0
.end method

.method protected refresh(IILcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 2
    .parameter "row"
    .parameter "column"
    .parameter "info"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    invoke-virtual {p0, p1, p2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCell(II)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/zdworks/android/calendartable/callback/FillCellHelper;->fill(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 389
    return-void
.end method

.method public refresh(Ljava/util/Calendar;)V
    .locals 4
    .parameter "date"

    .prologue
    .line 359
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v3, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v1

    .line 360
    .local v1, pos:I
    if-gez v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    div-int/lit8 v2, v1, 0x7

    .line 365
    .local v2, row:I
    rem-int/lit8 v0, v1, 0x7

    .line 366
    .local v0, column:I
    invoke-virtual {p0, v2, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refresh(II)V

    goto :goto_0
.end method

.method public refreshAll()V
    .locals 3

    .prologue
    .line 347
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/logic/Weeks;->refreshToday()V

    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    if-ge v0, v2, :cond_1

    .line 349
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 350
    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refresh(II)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public refreshHeader()V
    .locals 0

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->fillHeader()V

    .line 341
    return-void
.end method

.method public setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    .line 281
    return-void
.end method

.method public setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    .line 307
    return-void
.end method

.method public setCalendarOnLayoutChangeListener(Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLayoutChange:Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;

    .line 315
    return-void
.end method

.method public setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    .line 294
    return-void
.end method

.method public setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    .line 153
    invoke-virtual {p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getWeekCnt()I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRowCount:I

    .line 154
    return-void
.end method

.method public setCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 199
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mCellLayout:I

    .line 200
    return-void
.end method

.method public setDrawEdgesHelper(Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawEdgesHelper:Lcom/zdworks/android/calendartable/callback/DrawEdgesHelper;

    .line 337
    return-void
.end method

.method public setDrawHeader(Z)V
    .locals 0
    .parameter "drawHeader"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawHeader:Z

    .line 191
    return-void
.end method

.method public setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFillCellHelper:Lcom/zdworks/android/calendartable/callback/FillCellHelper;

    .line 324
    return-void
.end method

.method public setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFillHeaderHelper:Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;

    .line 333
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .parameter "dayOfWeek"

    .prologue
    .line 523
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 526
    :cond_1
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mFirstDayOfWeek:I

    .line 528
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTableView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFirstDayOfWeek()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->setFirstDayOfWeek(I)V

    .line 530
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDrawHeader:Z

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshHeader()V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 535
    :cond_3
    return-void
.end method

.method public setHeaderCellLayout(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 208
    iput p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mHeaderCellLayout:I

    .line 209
    return-void
.end method

.method public waitForLoading()V
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mRefreshTask:Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 500
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
