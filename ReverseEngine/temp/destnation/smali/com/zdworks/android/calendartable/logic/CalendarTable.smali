.class public Lcom/zdworks/android/calendartable/logic/CalendarTable;
.super Lcom/zdworks/android/calendartable/logic/Weeks;
.source "CalendarTable.java"


# static fields
.field public static final DEFAULT_ROW_COUNT:I = 0x6

.field public static final MILLIS_PER_TABLE:J = 0xd84b1800L


# instance fields
.field private mCurrentMonth:I

.field private mCurrentYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;-><init>(I)V

    .line 27
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->refreshToday()V

    .line 28
    return-void
.end method


# virtual methods
.method public firstDayOfMonth()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 116
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 117
    return-object v0
.end method

.method public getNextMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 53
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 55
    .local v0, focus:Ljava/util/Calendar;
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 57
    new-instance v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;-><init>()V

    .line 58
    .local v1, table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->jumpTo(Ljava/util/Calendar;)V

    .line 59
    return-object v1
.end method

.method public getPrevMonth()Lcom/zdworks/android/calendartable/logic/CalendarTable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 37
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFocusDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 39
    .local v0, focus:Ljava/util/Calendar;
    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 41
    new-instance v1, Lcom/zdworks/android/calendartable/logic/CalendarTable;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;-><init>()V

    .line 42
    .local v1, table:Lcom/zdworks/android/calendartable/logic/CalendarTable;
    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->jumpTo(Ljava/util/Calendar;)V

    .line 43
    return-object v1
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/CalendarTable;->mCurrentYear:I

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/CalendarTable;->mCurrentMonth:I

    .line 67
    invoke-super {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->jumpTo(Ljava/util/Calendar;)V

    .line 68
    return-void
.end method

.method public refresh()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0x80

    .line 72
    invoke-super {p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->refresh()V

    .line 75
    iget v6, p0, Lcom/zdworks/android/calendartable/logic/CalendarTable;->mCurrentYear:I

    iget v7, p0, Lcom/zdworks/android/calendartable/logic/CalendarTable;->mCurrentMonth:I

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getCleanCalendar(III)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 77
    .local v0, date:Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->dateToPos(Ljava/util/Calendar;)I

    move-result v5

    .line 78
    .local v5, startPos:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 81
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->dateToPos(Ljava/util/Calendar;)I

    move-result v1

    .line 84
    .local v1, endPos:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getCellInfoList()Ljava/util/List;

    move-result-object v4

    .line 87
    .local v4, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/calendartable/logic/CellInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 88
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 89
    .local v3, info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 90
    invoke-virtual {v3, v9}, Lcom/zdworks/android/calendartable/logic/CellInfo;->removeState(I)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v3           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_0
    move v2, v5

    :goto_1
    if-gt v2, v1, :cond_1

    .line 94
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 95
    .restart local v3       #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 96
    invoke-virtual {v3, v9}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v3           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 100
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 101
    .restart local v3       #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 102
    invoke-virtual {v3, v9}, Lcom/zdworks/android/calendartable/logic/CellInfo;->removeState(I)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    .end local v3           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_2
    return-void
.end method

.method protected setupFirstDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .parameter "reference"

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->getFirstDayOfWeek()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getFirstDayOfTable(III)Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, firstDay:Ljava/util/Calendar;
    new-array v1, v4, [Ljava/util/Calendar;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/logic/CalendarTable;->prepareDate([Ljava/util/Calendar;)V

    .line 111
    return-object v0
.end method
