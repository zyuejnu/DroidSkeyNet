.class public Lcom/zdworks/android/calendartable/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUp(Ljava/util/Calendar;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 73
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 75
    return-void
.end method

.method public static cleanUp(Ljava/util/Calendar;III)V
    .locals 2
    .parameter "c"
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 82
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 83
    return-void
.end method

.method public static getCleanCalendar(III)Ljava/util/GregorianCalendar;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 62
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 63
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-static {v0, p0, p1, p2}, Lcom/zdworks/android/calendartable/util/TimeUtils;->cleanUp(Ljava/util/Calendar;III)V

    .line 69
    return-object v0
.end method

.method public static declared-synchronized getFirstDayOfTable(III)Ljava/util/Calendar;
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "firstDayOfWeek"

    .prologue
    .line 13
    const-class v2, Lcom/zdworks/android/calendartable/util/TimeUtils;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getCleanCalendar(III)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 14
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 15
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 18
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 19
    const/4 v1, 0x5

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 20
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 21
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit v2

    return-object v0

    .line 13
    .end local v0           #c:Ljava/util/GregorianCalendar;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static inSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeekday(I)Z
    .locals 2
    .parameter "dayOfWeek"

    .prologue
    const/4 v0, 0x1

    .line 39
    const/4 v1, 0x7

    if-ge p0, v1, :cond_0

    if-le p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeekday(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 47
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/TimeUtils;->isWeekday(I)Z

    move-result v0

    return v0
.end method

.method public static isWeekend(I)Z
    .locals 2
    .parameter "dayOfWeek"

    .prologue
    const/4 v0, 0x1

    .line 35
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeekend(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 43
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/TimeUtils;->isWeekend(I)Z

    move-result v0

    return v0
.end method
