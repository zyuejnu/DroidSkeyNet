.class public abstract Lcom/zdworks/android/calendartable/logic/Weeks;
.super Ljava/lang/Object;
.source "Weeks.java"


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field public static final MILLIS_PER_DAY:J = 0x5265c00L


# instance fields
.field private final C_CALENDAR:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

.field private final DATE:Ljava/util/Calendar;

.field private final mCellCnt:J

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/calendartable/logic/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentYear:I

.field private mFirstDay:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocus:Ljava/util/Calendar;

.field private mMaxYear:I

.field private mMinYear:I

.field private mNeedDetail:Z

.field private mToday:Ljava/util/Calendar;

.field private mWeekCnt:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "weekCnt"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x76e

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMinYear:I

    .line 26
    const/16 v0, 0x801

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMaxYear:I

    .line 28
    new-instance v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->C_CALENDAR:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->DATE:Ljava/util/Calendar;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDayOfWeek:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mNeedDetail:Z

    .line 47
    iput p1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mWeekCnt:I

    .line 49
    mul-int/lit8 v0, p1, 0x7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellCnt:J

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mToday:Ljava/util/Calendar;

    .line 53
    return-void
.end method


# virtual methods
.method public dateToPos(Ljava/util/Calendar;)I
    .locals 8
    .parameter "date"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x6

    .line 183
    iget-object v4, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 184
    .local v1, firstDayYear:I
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 185
    .local v0, dateYear:I
    if-ne v1, v0, :cond_3

    .line 186
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 195
    .local v2, offset:I
    :goto_0
    if-ltz v2, :cond_0

    int-to-long v4, v2

    iget-wide v6, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellCnt:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    move v2, v3

    .end local v2           #offset:I
    :cond_1
    move v3, v2

    :cond_2
    return v3

    .line 188
    :cond_3
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v2, v4, v5

    .restart local v2       #offset:I
    goto :goto_0
.end method

.method public focusOn(Ljava/util/Calendar;)I
    .locals 1
    .parameter "date"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v0

    .line 126
    .local v0, pos:I
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->focusOn(I)Z

    .line 127
    return v0
.end method

.method public focusOn(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v0, 0x1

    .line 131
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->removeState(I)V

    .line 136
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 139
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    goto :goto_0
.end method

.method public getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;
    .locals 2
    .parameter "pos"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 75
    .local v0, info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->getDate(I)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    .line 76
    return-object v0
.end method

.method public getCellInfo(II)Lcom/zdworks/android/calendartable/logic/CellInfo;
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 70
    mul-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCellInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/calendartable/logic/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDate(I)Ljava/util/Calendar;
    .locals 6
    .parameter "pos"

    .prologue
    .line 64
    const-wide/32 v2, 0x5265c00

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 65
    .local v0, offset:J
    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->DATE:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->DATE:Ljava/util/Calendar;

    return-object v2
.end method

.method public getDate(II)Ljava/util/Calendar;
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 60
    mul-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getDate(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public getMaximumYear(I)I
    .locals 1
    .parameter "year"

    .prologue
    .line 331
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMaxYear:I

    return v0
.end method

.method public getMinimumYear(I)I
    .locals 1
    .parameter "year"

    .prologue
    .line 342
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMinYear:I

    return v0
.end method

.method public getWeekCnt()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mWeekCnt:I

    return v0
.end method

.method public jumpTo(Ljava/util/Calendar;)V
    .locals 6
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCurrentYear:I

    .line 95
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCurrentYear:I

    iget v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMinYear:I

    if-ge v0, v1, :cond_0

    .line 96
    new-instance v0, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    invoke-direct {v0, v4}, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;-><init>(I)V

    throw v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCurrentYear:I

    iget v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMaxYear:I

    if-le v0, v1, :cond_1

    .line 99
    new-instance v0, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    invoke-direct {v0, v5}, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;-><init>(I)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    .line 108
    new-array v0, v4, [Ljava/util/Calendar;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->prepareDate([Ljava/util/Calendar;)V

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/logic/Weeks;->setupFirstDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    .line 113
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->refresh()V

    .line 114
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public needDetail()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mNeedDetail:Z

    return v0
.end method

.method protected varargs prepareDate([Ljava/util/Calendar;)V
    .locals 5
    .parameter "dates"

    .prologue
    .line 316
    move-object v0, p1

    .local v0, arr$:[Ljava/util/Calendar;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 317
    .local v1, date:Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFirstDayOfWeek()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v1           #date:Ljava/util/Calendar;
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 23

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 221
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mWeekCnt:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x7

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    .line 222
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mWeekCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 223
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    .line 224
    new-instance v4, Lcom/zdworks/android/calendartable/logic/CellInfo;

    invoke-direct {v4}, Lcom/zdworks/android/calendartable/logic/CellInfo;-><init>()V

    .line 225
    .local v4, cellInfo:Lcom/zdworks/android/calendartable/logic/CellInfo;
    iput v9, v4, Lcom/zdworks/android/calendartable/logic/CellInfo;->row:I

    .line 226
    iput v12, v4, Lcom/zdworks/android/calendartable/logic/CellInfo;->column:I

    .line 227
    new-instance v19, Lcom/zdworks/android/calendartable/util/LunarDate;

    invoke-direct/range {v19 .. v19}, Lcom/zdworks/android/calendartable/util/LunarDate;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 222
    .end local v4           #cellInfo:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 234
    .end local v9           #i:I
    .end local v12           #j:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 235
    .local v11, info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    invoke-virtual {v11}, Lcom/zdworks/android/calendartable/logic/CellInfo;->clearState()V

    goto :goto_2

    .line 237
    .end local v11           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v15

    .line 238
    .local v15, pos:I
    if-ltz v15, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zdworks/android/calendartable/logic/CellInfo;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 241
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/zdworks/android/calendartable/logic/Weeks;->refreshToday()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mToday:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v15

    .line 243
    if-ltz v15, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zdworks/android/calendartable/logic/CellInfo;

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mNeedDetail:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 313
    :cond_5
    return-void

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->C_CALENDAR:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    .line 253
    .local v3, c:Lcom/zdworks/android/calendartable/util/ChineseCalendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 256
    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 257
    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 259
    .restart local v11       #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    iget-object v14, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    .line 260
    .local v14, lunar:Lcom/zdworks/android/calendartable/util/LunarDate;
    iget v0, v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xa89

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    .line 261
    iget v0, v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v14, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    .line 262
    iget v0, v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    .line 263
    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->rollUpOneDay()I

    goto :goto_3

    .line 267
    .end local v11           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    .end local v14           #lunar:Lcom/zdworks/android/calendartable/util/LunarDate;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->DATE:Ljava/util/Calendar;

    .line 268
    .local v6, date:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    invoke-static {}, Lcom/zdworks/android/calendartable/util/StaticContext;->get()Landroid/content/Context;

    move-result-object v5

    .line 270
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 272
    .restart local v11       #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    invoke-static {v5, v6}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->isSolarTerms(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v17

    .line 273
    .local v17, str:Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->solarTerm:Ljava/lang/String;

    .line 275
    invoke-static {v5, v6}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v17

    .line 276
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->modernFestival:Ljava/lang/String;

    .line 278
    invoke-static {v5, v6}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getUnimportantModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v17

    .line 279
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantFestival:Ljava/lang/String;

    .line 281
    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    move/from16 v19, v0

    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    move/from16 v20, v0

    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v17

    .line 283
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->tranditionalFestival:Ljava/lang/String;

    .line 285
    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    move/from16 v19, v0

    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    move/from16 v20, v0

    iget-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getUnimportantTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v17

    .line 287
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantTraditionalFestival:Ljava/lang/String;

    .line 289
    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_4

    .line 293
    .end local v11           #info:Lcom/zdworks/android/calendartable/logic/CellInfo;
    .end local v17           #str:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/zdworks/android/calendartable/util/SimpleDate;->fromCalendar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v7

    .line 294
    .local v7, firstDay:Lcom/zdworks/android/calendartable/util/SimpleDate;
    invoke-static {v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->fromCalendar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v13

    .line 295
    .local v13, lastDay:Lcom/zdworks/android/calendartable/util/SimpleDate;
    invoke-static {v5}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getHolidays(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v13}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    .line 297
    .local v8, holidays:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/zdworks/android/calendartable/util/SimpleDate;>;"
    invoke-interface {v8}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 298
    .local v16, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->toCalendar(Ljava/util/Calendar;)V

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v15

    .line 300
    if-ltz v15, :cond_9

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zdworks/android/calendartable/logic/CellInfo;

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    goto :goto_5

    .line 304
    .end local v16           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    :cond_a
    invoke-static {v5}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getWorkdays(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v13}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v18

    .line 306
    .local v18, workdays:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/zdworks/android/calendartable/util/SimpleDate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 307
    .restart local v16       #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->toCalendar(Ljava/util/Calendar;)V

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zdworks/android/calendartable/logic/Weeks;->dateToPos(Ljava/util/Calendar;)I

    move-result v15

    .line 309
    if-ltz v15, :cond_b

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zdworks/android/calendartable/logic/Weeks;->mCellInfoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zdworks/android/calendartable/logic/CellInfo;

    const/16 v20, 0x40

    invoke-virtual/range {v19 .. v20}, Lcom/zdworks/android/calendartable/logic/CellInfo;->addState(I)V

    goto :goto_6
.end method

.method public refreshToday()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mToday:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 212
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 213
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 4
    .parameter "dayOfWeek"

    .prologue
    const/4 v3, 0x1

    .line 203
    if-lt p1, v3, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 206
    :cond_1
    iput p1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDayOfWeek:I

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Calendar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFirstDay:Ljava/util/Calendar;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mFocus:Ljava/util/Calendar;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mToday:Ljava/util/Calendar;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->prepareDate([Ljava/util/Calendar;)V

    .line 208
    return-void
.end method

.method public setMaximumYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 324
    const/16 v0, 0x833

    if-le p1, v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iput p1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMaxYear:I

    .line 328
    return-void
.end method

.method public setMinimumYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 335
    const/16 v0, 0x76d

    if-ge p1, v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 338
    :cond_0
    iput p1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mMinYear:I

    .line 339
    return-void
.end method

.method public setNeedDetail(Z)V
    .locals 0
    .parameter "needDetail"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/logic/Weeks;->mNeedDetail:Z

    .line 90
    return-void
.end method

.method protected abstract setupFirstDay(Ljava/util/Calendar;)Ljava/util/Calendar;
.end method
