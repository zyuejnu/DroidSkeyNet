.class public Lcom/zdworks/android/calendartable/logic/SingleWeek;
.super Lcom/zdworks/android/calendartable/logic/Weeks;
.source "SingleWeek.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;-><init>(I)V

    .line 12
    return-void
.end method

.method private addCurrentMonthState(Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 89
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 45
    invoke-super {p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->refresh()V

    .line 48
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->getCellInfoList()Ljava/util/List;

    move-result-object v4

    .line 49
    .local v4, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/calendartable/logic/CellInfo;>;"
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->getFocusDate()Ljava/util/Calendar;

    move-result-object v1

    .line 52
    .local v1, focused:Ljava/util/Calendar;
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v6, v7, v8}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getCleanCalendar(III)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 54
    .local v0, date:Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->dateToPos(Ljava/util/Calendar;)I

    move-result v5

    .line 55
    .local v5, pos:I
    if-lez v5, :cond_1

    .line 56
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 57
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 58
    .local v3, info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 59
    invoke-virtual {v3, v10}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v3           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_0
    move v2, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 62
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zdworks/android/calendartable/logic/CellInfo;

    invoke-direct {p0, v6}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->addCurrentMonthState(Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v2           #i:I
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->dateToPos(Ljava/util/Calendar;)I

    move-result v5

    .line 70
    if-ltz v5, :cond_3

    .line 71
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-gt v2, v5, :cond_2

    .line 72
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zdworks/android/calendartable/logic/CellInfo;

    invoke-direct {p0, v6}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->addCurrentMonthState(Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v2, v5, 0x1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 75
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 76
    .restart local v3       #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 77
    invoke-virtual {v3, v10}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v2           #i:I
    .end local v3           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 83
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zdworks/android/calendartable/logic/CellInfo;

    invoke-direct {p0, v6}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->addCurrentMonthState(Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 85
    :cond_4
    return-void
.end method

.method protected setupFirstDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 7
    .parameter "reference"

    .prologue
    const/4 v6, 0x5

    .line 27
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getCleanCalendar(III)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 32
    .local v0, firstDay:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 33
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 35
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 36
    .local v2, weekday:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/SingleWeek;->getFirstDayOfWeek()I

    move-result v3

    sub-int v1, v2, v3

    .line 37
    .local v1, interval:I
    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    .line 38
    :cond_0
    neg-int v3, v1

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 40
    return-object v0
.end method
