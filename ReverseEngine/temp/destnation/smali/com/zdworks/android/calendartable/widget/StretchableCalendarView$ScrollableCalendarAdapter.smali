.class Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "StretchableCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;
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

.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 857
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    .line 860
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 861
    new-instance v2, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$800(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;-><init>(Landroid/content/Context;)V

    .line 862
    .local v2, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setDrawingCacheEnabled(Z)V

    .line 863
    invoke-virtual {v2, v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setPersistentDrawingCache(I)V

    .line 865
    new-instance v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;-><init>()V

    .line 866
    .local v1, table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    const/16 v3, 0x76e

    invoke-virtual {v1, v3}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->setMinimumYear(I)V

    .line 867
    const/16 v3, 0x7f3

    invoke-virtual {v1, v3}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->setMaximumYear(I)V

    .line 869
    invoke-virtual {v2, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->setCalendarTable(Lcom/zdworks/android/calendartable/logic/Weeks;)V

    .line 870
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v1           #table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .end local v2           #view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    :cond_0
    return-void
.end method


# virtual methods
.method public dateToPos(II)I
    .locals 1
    .parameter "year"
    .parameter "month"

    .prologue
    .line 879
    const/16 v0, 0x76d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f3

    if-le p1, v0, :cond_1

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 882
    :cond_1
    mul-int/lit8 v0, p1, 0xc

    add-int/2addr v0, p2

    return v0
.end method

.method public dateToPos(Ljava/util/Calendar;)I
    .locals 2
    .parameter "date"

    .prologue
    .line 875
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->dateToPos(II)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 888
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 898
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x5

    .line 903
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    rem-int/lit8 v5, p1, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 904
    .local v3, view:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->posToDate(I)Ljava/util/Calendar;

    move-result-object v0

    .line 906
    .local v0, date:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getCurrentPage()Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCalendarTable()Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusDate()Ljava/util/Calendar;

    move-result-object v1

    .line 909
    .local v1, focused:Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 911
    .local v2, maxDate:I
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-le v4, v2, :cond_1

    .line 912
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 919
    .end local v1           #focused:Ljava/util/Calendar;
    .end local v2           #maxDate:I
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->jumpTo(Ljava/util/Calendar;)V

    .line 920
    return-object v3

    .line 914
    .restart local v1       #focused:Ljava/util/Calendar;
    .restart local v2       #maxDate:I
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
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
    .line 924
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method public posToDate(I)Ljava/util/Calendar;
    .locals 3
    .parameter "pos"

    .prologue
    .line 929
    div-int/lit8 v1, p1, 0xc

    .line 930
    .local v1, year:I
    rem-int/lit8 v0, p1, 0xc

    .line 931
    .local v0, month:I
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getCleanCalendar(III)Ljava/util/GregorianCalendar;

    move-result-object v2

    return-object v2
.end method
