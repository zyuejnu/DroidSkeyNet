.class Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollableCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollableCalendarAdapter"
.end annotation


# instance fields
.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/calendartable/widget/CalendarTableView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 375
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    .line 378
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 379
    new-instance v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$600(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;-><init>(Landroid/content/Context;)V

    .line 380
    .local v2, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawingCacheEnabled(Z)V

    .line 381
    invoke-virtual {v2, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setPersistentDrawingCache(I)V

    .line 383
    new-instance v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;-><init>()V

    .line 384
    .local v1, table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I
    invoke-static {p1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->setMinimumYear(I)V

    .line 385
    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMaxYear:I
    invoke-static {p1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$800(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->setMaximumYear(I)V

    .line 386
    invoke-virtual {v2, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 387
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1           #table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .end local v2           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dateToPos(II)I
    .locals 1
    .parameter "year"
    .parameter "month"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMaxYear:I
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$800(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v0

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, p2

    return v0
.end method

.method public dateToPos(Ljava/util/Calendar;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->dateToPos(II)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 397
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 407
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x5

    .line 412
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    rem-int/lit8 v4, p1, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 413
    .local v2, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->posToDate(I)Ljava/util/Calendar;

    move-result-object v0

    .line 415
    .local v0, date:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v1

    .line 418
    .local v1, focused:Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 423
    .end local v1           #focused:Ljava/util/Calendar;
    :cond_0
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mBeforePageLoad:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$900(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 424
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mBeforePageLoad:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$900(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$BeforePageLoadListener;->beforePageLoad(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Ljava/util/Calendar;)V

    .line 426
    :cond_1
    invoke-virtual {v2, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 427
    return-object v2
.end method

.method public getViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/calendartable/widget/CalendarTableView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method public posToDate(I)Ljava/util/Calendar;
    .locals 4
    .parameter "pos"

    .prologue
    .line 442
    div-int/lit8 v2, p1, 0xc

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mMinYear:I
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)I

    move-result v3

    add-int v1, v2, v3

    .line 443
    .local v1, year:I
    rem-int/lit8 v0, p1, 0xc

    .line 444
    .local v0, month:I
    new-instance v2, Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    return-object v2
.end method
