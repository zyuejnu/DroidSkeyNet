.class public Lcom/zdworks/android/common/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static ALL_DAYS_OF_WEEK:[J = null

.field public static final ALL_MONTH:[J = null

.field public static final HALF_HOUR_MILLIS:J = 0x1b7740L

.field public static final HALF_MONTH_MILLIS:J = 0x4d3f6400L

.field public static final ONE_DAY_MILLIS:J = 0x5265c00L

.field public static final ONE_HOUR_MILLIS:J = 0x36ee80L

.field public static final ONE_MINUTE_MILLIS:J = 0xea60L

.field public static final ONE_MONTH_MILLIS:J = 0x9a7ec800L

.field public static final ONE_SECOND_MILLIS:J = 0x3e8L

.field public static final ONE_WEEK_MILLIS:J = 0x240c8400L

.field public static final ONE_YEAR_MILLIS:J = 0x757b12c00L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zdworks/android/common/utils/TimeUtils;->ALL_MONTH:[J

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zdworks/android/common/utils/TimeUtils;->ALL_DAYS_OF_WEEK:[J

    return-void

    .line 28
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_1
    .array-data 0x8
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetHoursAndMinutesFormMillis(J)[I
    .locals 5
    .parameter "timeMillis"

    .prologue
    .line 686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 687
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 688
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 689
    .local v1, nHour:I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 691
    .local v2, nMinute:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public static compareTime(IIII)I
    .locals 2
    .parameter "hour1"
    .parameter "minute1"
    .parameter "hour2"
    .parameter "minute2"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 56
    if-le p0, p2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-ne p0, p2, :cond_3

    .line 59
    if-gt p1, p3, :cond_0

    .line 61
    if-ne p1, p3, :cond_2

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public static compareTimeIngoreYear(IIIIIIII)I
    .locals 2
    .parameter "month1"
    .parameter "dayOfMonth1"
    .parameter "hourOfDay1"
    .parameter "minute1"
    .parameter "month2"
    .parameter "dayOfMonth2"
    .parameter "hourOfDay2"
    .parameter "minute2"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 87
    if-le p0, p4, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-ne p0, p4, :cond_3

    .line 90
    if-gt p1, p5, :cond_0

    .line 92
    if-ne p1, p5, :cond_2

    .line 93
    invoke-static {p2, p3, p6, p7}, Lcom/zdworks/android/common/utils/TimeUtils;->compareTime(IIII)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 95
    goto :goto_0

    :cond_3
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public static getAllMonthList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v0, Lcom/zdworks/android/common/utils/TimeUtils;->ALL_MONTH:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v5, v0, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 654
    .local v3, month:Ljava/lang/Long;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v3           #month:Ljava/lang/Long;
    :cond_0
    return-object v4
.end method

.method public static getCountDownDays(J)J
    .locals 14
    .parameter "millis"

    .prologue
    const-wide/16 v8, 0x0

    .line 555
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    int-to-long v2, v10

    .line 556
    .local v2, offset:J
    add-long v6, p0, v2

    .line 557
    .local v6, target:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v0, v10, v2

    .line 558
    .local v0, now:J
    invoke-static {v6, v7}, Lcom/zdworks/android/common/utils/TimeUtils;->getZeroTimeOfDay(J)J

    move-result-wide v10

    invoke-static {v0, v1}, Lcom/zdworks/android/common/utils/TimeUtils;->getZeroTimeOfDay(J)J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 560
    .local v4, subMillis:J
    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    :goto_0
    return-wide v8

    :cond_0
    const-wide/32 v8, 0x5265c00

    div-long v8, v4, v8

    goto :goto_0
.end method

.method public static getCountOfDayOfWeek(IJ)I
    .locals 7
    .parameter "dayOfWeek"
    .parameter "timeMillis"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    .line 572
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 573
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 574
    const/4 v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 575
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 576
    .local v3, max:I
    rem-int/lit8 v1, v3, 0x7

    .line 577
    .local v1, count:I
    if-nez v1, :cond_0

    .line 578
    div-int/lit8 v4, v3, 0x7

    .line 587
    :goto_0
    return v4

    .line 580
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 581
    .local v2, dw:I
    if-ne v2, v6, :cond_1

    .line 582
    const/4 v2, 0x0

    .line 584
    :cond_1
    if-lt p0, v2, :cond_2

    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    if-gt p0, v4, :cond_2

    .line 585
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 587
    :cond_2
    div-int/lit8 v4, v3, 0x7

    goto :goto_0
.end method

.method public static getDateFormatStr(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "time"
    .parameter "formatStr"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, timeStr:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, setDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    return-object v1
.end method

.method public static getDayOfMonth(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "dayOfMonth"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zdworks/android/common/R$array;->days_of_month:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, days:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt p1, v1, :cond_0

    if-gtz p1, :cond_1

    .line 119
    :cond_0
    const-string v1, ""

    .line 121
    :goto_0
    return-object v1

    :cond_1
    sget v1, Lcom/zdworks/android/common/R$string;->str_dayofmonth:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v0, v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDayOfMonthFromTimeMillis(J)I
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 228
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getDayOfWeekStr(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "dayOfWeek"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    if-lez v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    :goto_1
    return-object v1

    .line 142
    :pswitch_0
    sget v0, Lcom/zdworks/android/common/R$string;->common_sun:I

    .line 143
    goto :goto_0

    .line 145
    :pswitch_1
    sget v0, Lcom/zdworks/android/common/R$string;->common_mon:I

    .line 146
    goto :goto_0

    .line 148
    :pswitch_2
    sget v0, Lcom/zdworks/android/common/R$string;->common_tus:I

    .line 149
    goto :goto_0

    .line 151
    :pswitch_3
    sget v0, Lcom/zdworks/android/common/R$string;->common_wed:I

    .line 152
    goto :goto_0

    .line 154
    :pswitch_4
    sget v0, Lcom/zdworks/android/common/R$string;->common_thu:I

    .line 155
    goto :goto_0

    .line 157
    :pswitch_5
    sget v0, Lcom/zdworks/android/common/R$string;->common_fri:I

    .line 158
    goto :goto_0

    .line 160
    :pswitch_6
    sget v0, Lcom/zdworks/android/common/R$string;->common_sat:I

    goto :goto_0

    .line 166
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getFirstDayOfWeek(JI)J
    .locals 8
    .parameter "timeMillis"
    .parameter "dayOfWeek"

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 610
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 611
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 612
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 614
    .local v1, dw:I
    if-le v1, p2, :cond_0

    .line 615
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    sub-int v4, v1, p2

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 617
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-int v4, p2, v1

    int-to-long v4, v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getHourFromTimeMillis(J)I
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getHourOfDay(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "hourOfDay"

    .prologue
    .line 125
    sget v0, Lcom/zdworks/android/common/R$string;->str_hourofday:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthFromTimeMillis(J)I
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 217
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getMonthOfYear(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "monthOfYear"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zdworks/android/common/R$array;->months_of_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getNowDateStringWithWeek(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 464
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    .local v0, now:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v1, solar:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->now()J

    move-result-wide v5

    sget v7, Lcom/zdworks/android/common/R$string;->date_pattern_yyyy_mm_dd:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/zdworks/android/common/utils/TimeUtils;->getDateFormatStr(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, yydd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p0, v5}, Lcom/zdworks/android/common/utils/TimeUtils;->getDayOfWeekStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, week:Ljava/lang/String;
    sget v4, Lcom/zdworks/android/common/R$string;->date_pattern_activity_title:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v8

    aput-object v2, v5, v9

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Lcom/zdworks/jvm/common/utils/LunarUtils;->getShortLunarString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    return-object v4
.end method

.method public static getNowDateStringWithWeekWithoutLunar(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 536
    .local v0, now:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v1, solar:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget v6, Lcom/zdworks/android/common/R$string;->date_pattern_mm_dd:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/zdworks/android/common/utils/TimeUtils;->getDateFormatStr(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, yydd:Ljava/lang/String;
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0, v4}, Lcom/zdworks/android/common/utils/TimeUtils;->getDayOfWeekStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, week:Ljava/lang/String;
    sget v4, Lcom/zdworks/android/common/R$string;->date_pattern_activity_title:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getNowTimeTitleString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "isShowLunar"

    .prologue
    .line 483
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {p0, p1}, Lcom/zdworks/android/common/utils/TimeUtils;->getNowTimeTitleStringZH(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/zdworks/android/common/utils/TimeUtils;->getNowTimeTitleStringEN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNowTimeTitleStringEN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 518
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/zdworks/android/common/utils/TimeUtils;->getDayOfWeekStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/zdworks/android/common/utils/TimeUtils;->getMonthOfYear(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNowTimeTitleStringZH(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "isShowLunar"

    .prologue
    .line 497
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget v4, Lcom/zdworks/android/common/R$string;->date_pattern_yyyy_mm_dd:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/zdworks/android/common/utils/TimeUtils;->getDateFormatStr(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/zdworks/android/common/utils/TimeUtils;->getDayOfWeekStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    if-eqz p1, :cond_0

    .line 504
    sget v2, Lcom/zdworks/android/common/R$string;->lunar_text:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    invoke-static {v0}, Lcom/zdworks/jvm/common/utils/LunarUtils;->getShortLunarString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNumberOfWeek(J)I
    .locals 9
    .parameter "timeMillis"

    .prologue
    const/4 v8, 0x2

    .line 627
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 628
    .local v0, according:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 629
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 630
    .local v2, month:I
    if-eqz v2, :cond_0

    .line 631
    const/4 v2, 0x0

    .line 633
    :cond_0
    move v1, v2

    .line 634
    .local v1, m:I
    const/4 v3, 0x1

    .line 637
    .local v3, which:I
    :goto_0
    const-wide/32 v4, 0x240c8400

    int-to-long v6, v3

    mul-long/2addr v4, v6

    sub-long v4, p0, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 638
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 639
    if-eq v1, v2, :cond_1

    .line 644
    return v3

    .line 642
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getRecentHalfHour()Ljava/util/Calendar;
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 665
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->clear(I)V

    .line 666
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->clear(I)V

    .line 667
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 668
    .local v1, hourOfDay:I
    const/4 v2, 0x0

    .line 669
    .local v2, minute:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 670
    add-int/lit8 v1, v1, 0x1

    .line 671
    const/4 v2, 0x0

    .line 675
    :goto_0
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 676
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 677
    return-object v0

    .line 673
    :cond_0
    const/16 v2, 0x1e

    goto :goto_0
.end method

.method public static getTimeByWhichDayOfWeek(JII)J
    .locals 6
    .parameter "timeMillis"
    .parameter "dayOfWeek"
    .parameter "which"

    .prologue
    .line 599
    invoke-static {p0, p1, p2}, Lcom/zdworks/android/common/utils/TimeUtils;->getFirstDayOfWeek(JI)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-int/lit8 v4, p3, -0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimeDescription(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "millis"

    .prologue
    const-wide/16 v11, 0xe10

    const-wide/16 v5, 0x3e8

    const-wide/16 v9, 0x3c

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 176
    div-long v1, p1, v5

    .line 179
    .local v1, s:J
    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    sget v5, Lcom/zdworks/android/common/R$string;->common_some_second:I

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "<1"

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 196
    :goto_0
    return-object v5

    .line 180
    :cond_0
    cmp-long v5, v1, v9

    if-gez v5, :cond_1

    .line 181
    move-wide v3, v1

    .line 182
    .local v3, value:J
    sget v0, Lcom/zdworks/android/common/R$string;->common_some_second:I

    .line 196
    .local v0, resId:I
    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 183
    .end local v0           #resId:I
    .end local v3           #value:J
    :cond_1
    cmp-long v5, v1, v11

    if-gez v5, :cond_2

    .line 184
    div-long v3, v1, v9

    .line 185
    .restart local v3       #value:J
    sget v0, Lcom/zdworks/android/common/R$string;->common_some_minute:I

    .restart local v0       #resId:I
    goto :goto_1

    .line 186
    .end local v0           #resId:I
    .end local v3           #value:J
    :cond_2
    const-wide/32 v5, 0x15180

    cmp-long v5, v1, v5

    if-gez v5, :cond_3

    .line 187
    div-long v3, v1, v11

    .line 188
    .restart local v3       #value:J
    sget v0, Lcom/zdworks/android/common/R$string;->common_some_hour:I

    .restart local v0       #resId:I
    goto :goto_1

    .line 189
    .end local v0           #resId:I
    .end local v3           #value:J
    :cond_3
    const-wide/32 v5, 0x1e13380

    cmp-long v5, v1, v5

    if-gez v5, :cond_4

    .line 190
    const-wide/32 v5, 0x15180

    div-long v3, v1, v5

    .line 191
    .restart local v3       #value:J
    sget v0, Lcom/zdworks/android/common/R$string;->common_some_day:I

    .restart local v0       #resId:I
    goto :goto_1

    .line 193
    .end local v0           #resId:I
    .end local v3           #value:J
    :cond_4
    const-wide/32 v5, 0x1e13380

    div-long v3, v1, v5

    .line 194
    .restart local v3       #value:J
    sget v0, Lcom/zdworks/android/common/R$string;->common_some_year:I

    .restart local v0       #resId:I
    goto :goto_1
.end method

.method public static getTimeFromMillis(J)[I
    .locals 6
    .parameter "time"

    .prologue
    .line 426
    const-wide/16 v4, 0x3e8

    div-long v2, p0, v4

    .line 427
    .local v2, s:J
    const-wide/16 v4, 0xe10

    div-long v4, v2, v4

    long-to-int v0, v4

    .line 428
    .local v0, hour:I
    mul-int/lit16 v4, v0, 0xe10

    int-to-long v4, v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 429
    .local v1, minute:I
    div-int/lit8 v1, v1, 0x3c

    .line 430
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method public static getTimeMillsFromDate(IIIII)J
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 249
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getTimeStringFromMillis(J)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    const/16 v6, 0xa

    .line 419
    invoke-static {p0, p1}, Lcom/zdworks/android/common/utils/TimeUtils;->getTimeFromMillis(J)[I

    move-result-object v2

    .line 420
    .local v2, ret:[I
    const/4 v3, 0x0

    aget v0, v2, v3

    .line 421
    .local v0, hour:I
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 422
    .local v1, minute:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v1, v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method public static getTodayTimeMillis()[J
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 301
    .local v2, now:Ljava/util/Calendar;
    const/16 v5, 0xe

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 302
    const/16 v5, 0xd

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 303
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 304
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 306
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 307
    .local v3, start:J
    const-wide/32 v5, 0x5265c00

    add-long v0, v3, v5

    .line 308
    .local v0, end:J
    const/4 v5, 0x2

    new-array v5, v5, [J

    aput-wide v3, v5, v7

    const/4 v6, 0x1

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    aput-wide v7, v5, v6

    return-object v5
.end method

.method public static getTomorrowTimeMillis()[J
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    .line 317
    .local v0, today:[J
    const/4 v1, 0x2

    new-array v1, v1, [J

    aget-wide v2, v0, v4

    add-long/2addr v2, v6

    aput-wide v2, v1, v4

    aget-wide v2, v0, v5

    add-long/2addr v2, v6

    aput-wide v2, v1, v5

    return-object v1
.end method

.method public static getYearCount(I)I
    .locals 2
    .parameter "y4"

    .prologue
    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 262
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    return v1
.end method

.method public static getYearFromTimeMillis(J)I
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getYestodayTimeMillis()[J
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 325
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    .line 326
    .local v0, today:[J
    const/4 v1, 0x2

    new-array v1, v1, [J

    aget-wide v2, v0, v4

    sub-long/2addr v2, v6

    aput-wide v2, v1, v4

    aget-wide v2, v0, v5

    sub-long/2addr v2, v6

    aput-wide v2, v1, v5

    return-object v1
.end method

.method private static getZeroTimeOfDay(J)J
    .locals 4
    .parameter "millis"

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 564
    div-long v0, p0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isAfterTwiweeks(J)Z
    .locals 4
    .parameter "timeMillis"

    .prologue
    .line 375
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    add-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBeforeToday(J)Z
    .locals 4
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    .line 282
    .local v0, t:[J
    aget-wide v2, v0, v1

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isFeedsReasonableTime()Z
    .locals 3

    .prologue
    .line 700
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 701
    .local v0, c:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 702
    .local v1, hour:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFuture(J)Z
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInnerTwiweeks(J)Z
    .locals 6
    .parameter "timeMillis"

    .prologue
    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 364
    .local v1, now:Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 365
    .local v0, i:I
    rsub-int/lit8 v0, v0, 0xe

    .line 366
    const-wide/32 v2, 0x5265c00

    int-to-long v4, v0

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSameDay(JJ)Z
    .locals 5
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, bRet:Z
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 408
    .local v1, d1:Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 409
    .local v2, d2:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTheDayAfterTomorrow(J)Z
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 354
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Lcom/zdworks/android/common/utils/TimeUtils;->isToday(J)Z

    move-result v0

    return v0
.end method

.method public static isThisYear(J)Z
    .locals 4
    .parameter "timeMillis"

    .prologue
    const/4 v2, 0x1

    .line 393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 394
    .local v0, now:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 395
    .local v1, thisYear:I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 396
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 5
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    .line 272
    .local v0, t:[J
    aget-wide v3, v0, v2

    cmp-long v3, p0, v3

    if-ltz v3, :cond_0

    aget-wide v3, v0, v1

    cmp-long v3, p0, v3

    if-gtz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isTomorrow(J)Z
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 345
    const-wide/32 v0, 0x5265c00

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Lcom/zdworks/android/common/utils/TimeUtils;->isToday(J)Z

    move-result v0

    return v0
.end method

.method public static isTwoWeeksAgo(J)Z
    .locals 6
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-static {}, Lcom/zdworks/android/common/utils/TimeUtils;->getTodayTimeMillis()[J

    move-result-object v0

    .line 292
    .local v0, t:[J
    aget-wide v2, v0, v1

    const-wide/32 v4, 0x48190800

    sub-long/2addr v2, v4

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isYestoday(J)Z
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 336
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/zdworks/android/common/utils/TimeUtils;->isToday(J)Z

    move-result v0

    return v0
.end method

.method public static now()J
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static nowCorrectToMinute()J
    .locals 3

    .prologue
    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 444
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 445
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static nowCorrectToSecond()J
    .locals 3

    .prologue
    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 454
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 455
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method
