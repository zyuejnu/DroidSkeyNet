.class public Lcom/zdworks/android/calendartable/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static TOAST:Landroid/widget/Toast;

.field public static arr:[Ljava/lang/String;

.field public static firstDayOfMonthArr:[Ljava/lang/String;

.field public static flag:Z

.field public static monthArray:[Ljava/lang/String;

.field public static monthNameArr:[Ljava/lang/String;

.field public static nonTraditionalArr:[Ljava/lang/String;

.field public static solarTermsArr:[Ljava/lang/String;

.field public static traditionalFestivalArr:[Ljava/lang/String;

.field public static weekNameArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "util"

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zdworks/android/calendartable/util/Util;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 659
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static declared-synchronized findResorces(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const-class v1, Lcom/zdworks/android/calendartable/util/Util;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/Util;->arr:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->lunar:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->arr:[Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->monthName:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->firstDayOfMonthArr:[Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->solar_termes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->solarTermsArr:[Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->traditional_festival:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->traditionalFestivalArr:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->non_traditional_festival:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->nonTraditionalArr:[Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->montharray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->monthArray:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->monthName:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->monthNameArr:[Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zdworks/android/calendartable/R$array;->weekname:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->weekNameArr:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, simpleFormate:Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static format2(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6
    .parameter "calendar"

    .prologue
    const/16 v5, 0xa

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, dateString:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 727
    .local v2, month:I
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 728
    .local v1, day:I
    if-ge v2, v5, :cond_0

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    if-ge v1, v5, :cond_1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    return-object v0
.end method

.method public static getCalendarElementText(Landroid/content/Context;Ljava/util/Calendar;Lcom/zdworks/android/calendartable/util/LunarDate;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .parameter "calendar"
    .parameter "lunar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Lcom/zdworks/android/calendartable/util/LunarDate;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {p0}, Lcom/zdworks/android/calendartable/util/Util;->findResorces(Landroid/content/Context;)V

    .line 675
    const-string v7, ""

    .line 676
    .local v7, textString:Ljava/lang/String;
    const/4 v9, -0x1

    .line 678
    .local v9, type:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 679
    .local v3, lunarYear:I
    iget v2, p2, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    .line 680
    .local v2, lunarMonth:I
    iget v1, p2, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    .line 682
    .local v1, lunarDay:I
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 683
    .local v0, lunarDate:Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/util/Date;->setYear(I)V

    .line 684
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v0, v10}, Ljava/util/Date;->setMonth(I)V

    .line 685
    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 688
    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 689
    sget-object v10, Lcom/zdworks/android/calendartable/util/Util;->firstDayOfMonthArr:[Ljava/lang/String;

    add-int/lit8 v11, v2, -0x1

    aget-object v7, v10, v11

    .line 693
    :goto_0
    invoke-static {p1, p0}, Lcom/zdworks/android/calendartable/util/Util;->isSolarTerms(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, solarTerms:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/zdworks/android/calendartable/util/Util;->isTraditionalFestival(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, traditionalFestival:Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/zdworks/android/calendartable/util/Util;->isNonTraditionalFestival(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, nonTraditionalFestival:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 699
    move-object v7, v6

    .line 700
    const/4 v9, 0x0

    .line 702
    :cond_0
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 703
    const/4 v9, 0x0

    .line 704
    move-object v7, v8

    .line 706
    :cond_1
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 707
    move-object v7, v4

    .line 708
    const/4 v9, 0x0

    .line 716
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_3

    .line 717
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 718
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v5, returnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-object v5

    .line 691
    .end local v4           #nonTraditionalFestival:Ljava/lang/String;
    .end local v5           #returnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6           #solarTerms:Ljava/lang/String;
    .end local v8           #traditionalFestival:Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/zdworks/android/calendartable/util/Util;->arr:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aget-object v7, v10, v11

    goto :goto_0
.end method

.method public static final getCellText(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/zdworks/android/calendartable/util/Util;->getSolarDay(Ljava/util/Calendar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, text:Ljava/lang/String;
    return-object v0
.end method

.method private static final getFatherDay(Ljava/util/Calendar;)Z
    .locals 6
    .parameter "cellDate"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v2, 0x1

    .line 367
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 368
    .local v1, week:I
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 369
    .local v0, day:I
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 370
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 375
    :cond_1
    :goto_0
    return v2

    .line 372
    :cond_2
    const/16 v3, 0xf

    if-ge v0, v3, :cond_3

    if-gt v0, v5, :cond_1

    .line 375
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getGapFromToday(Ljava/util/Calendar;)J
    .locals 12
    .parameter "c"

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 496
    .local v4, n:Ljava/util/Calendar;
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 498
    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 500
    invoke-virtual {v4, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 501
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 502
    invoke-virtual {v4, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 503
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 504
    invoke-virtual {p0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 505
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 506
    invoke-virtual {p0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 507
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 508
    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 509
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 510
    invoke-virtual {p0, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 511
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 512
    .local v5, now:J
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 513
    .local v0, cur:J
    sub-long v7, v0, v5

    const-wide/32 v9, 0x5265c00

    div-long v2, v7, v9

    .line 514
    .local v2, gap:J
    return-wide v2
.end method

.method private static final getMotherDay(Ljava/util/Calendar;)Z
    .locals 7
    .parameter "cellDate"

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x1

    .line 355
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 356
    .local v1, week:I
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 357
    .local v0, day:I
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_3

    .line 358
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 363
    :cond_1
    :goto_0
    return v2

    .line 360
    :cond_2
    const/16 v3, 0x16

    if-ge v0, v3, :cond_3

    if-gt v0, v6, :cond_1

    .line 363
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getSolarDay(Ljava/util/Calendar;)I
    .locals 1
    .parameter "c"

    .prologue
    .line 379
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getWeekDay(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 490
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 491
    .local v0, i:I
    sget-object v1, Lcom/zdworks/android/calendartable/util/Util;->weekNameArr:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static final getWeekOfDate(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "cal"
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/Util;->findResorces(Landroid/content/Context;)V

    .line 62
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 63
    .local v0, w:I
    if-gez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :cond_0
    sget-object v1, Lcom/zdworks/android/calendartable/util/Util;->weekNameArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static inSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .parameter "date1"
    .parameter "date2"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 626
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

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "date1"
    .parameter "date2"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 621
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

.method public static inSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .parameter "date1"
    .parameter "date2"

    .prologue
    const/4 v0, 0x1

    .line 617
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvaliable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 633
    const-string p1, "com.zdworks.android.zdclock"

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 635
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 636
    .local v3, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, pName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 640
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 641
    .local v4, pn:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0           #i:I
    .end local v4           #pn:Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static final isNonTraditionalFestival(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "cellDate"
    .parameter "context"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/Util;->findResorces(Landroid/content/Context;)V

    .line 167
    const/4 v1, -0x1

    .line 168
    .local v1, index:I
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 169
    .local v2, month:I
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v0

    .line 170
    .local v0, date:I
    packed-switch v2, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 350
    const-string v3, ""

    .line 351
    :goto_1
    return-object v3

    .line 172
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 174
    :pswitch_1
    const/16 v1, 0x26

    goto :goto_0

    .line 179
    :pswitch_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    const/4 v1, 0x0

    .line 182
    goto :goto_0

    .line 185
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :pswitch_3
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 192
    :sswitch_2
    const/4 v1, 0x2

    .line 193
    goto :goto_0

    .line 195
    :sswitch_3
    const/4 v1, 0x3

    .line 196
    goto :goto_0

    .line 198
    :sswitch_4
    const/4 v1, 0x4

    .line 199
    goto :goto_0

    .line 201
    :sswitch_5
    const/4 v1, 0x5

    .line 202
    goto :goto_0

    .line 204
    :sswitch_6
    const/4 v1, 0x6

    .line 205
    goto :goto_0

    .line 207
    :sswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 213
    :pswitch_4
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 215
    :sswitch_8
    const/16 v1, 0x8

    .line 216
    goto :goto_0

    .line 218
    :sswitch_9
    const/16 v1, 0x9

    goto :goto_0

    .line 224
    :pswitch_5
    sparse-switch v0, :sswitch_data_3

    .line 241
    :goto_2
    invoke-static {p0}, Lcom/zdworks/android/calendartable/util/Util;->getMotherDay(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const/16 v1, 0x25

    goto :goto_0

    .line 226
    :sswitch_a
    const/16 v1, 0xa

    .line 227
    goto :goto_2

    .line 229
    :sswitch_b
    const/16 v1, 0xb

    .line 230
    goto :goto_2

    .line 232
    :sswitch_c
    const/16 v1, 0xc

    .line 233
    goto :goto_2

    .line 235
    :sswitch_d
    const/16 v1, 0xd

    .line 236
    goto :goto_2

    .line 238
    :sswitch_e
    const/16 v1, 0xe

    goto :goto_2

    .line 245
    :pswitch_6
    sparse-switch v0, :sswitch_data_4

    .line 256
    :goto_3
    invoke-static {p0}, Lcom/zdworks/android/calendartable/util/Util;->getFatherDay(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const/16 v1, 0x24

    goto :goto_0

    .line 247
    :sswitch_f
    const/16 v1, 0xf

    .line 248
    goto :goto_3

    .line 250
    :sswitch_10
    const/16 v1, 0x10

    .line 251
    goto :goto_3

    .line 253
    :sswitch_11
    const/16 v1, 0x11

    goto :goto_3

    .line 260
    :pswitch_7
    sparse-switch v0, :sswitch_data_5

    goto :goto_0

    .line 262
    :sswitch_12
    const/16 v1, 0x12

    .line 263
    goto :goto_0

    .line 265
    :sswitch_13
    const/16 v1, 0x13

    goto :goto_0

    .line 271
    :pswitch_8
    sparse-switch v0, :sswitch_data_6

    goto :goto_0

    .line 273
    :sswitch_14
    const/16 v1, 0x14

    .line 274
    goto :goto_0

    .line 276
    :sswitch_15
    const/16 v1, 0x15

    goto :goto_0

    .line 282
    :pswitch_9
    sparse-switch v0, :sswitch_data_7

    goto :goto_0

    .line 284
    :sswitch_16
    const/16 v1, 0x16

    .line 285
    goto :goto_0

    .line 287
    :sswitch_17
    const/16 v1, 0x17

    .line 288
    goto :goto_0

    .line 290
    :sswitch_18
    const/16 v1, 0x18

    goto :goto_0

    .line 296
    :pswitch_a
    sparse-switch v0, :sswitch_data_8

    goto/16 :goto_0

    .line 298
    :sswitch_19
    const/16 v1, 0x27

    .line 299
    goto/16 :goto_0

    .line 301
    :sswitch_1a
    const/16 v1, 0x19

    .line 302
    goto/16 :goto_0

    .line 304
    :sswitch_1b
    const/16 v1, 0x1a

    goto/16 :goto_0

    .line 310
    :pswitch_b
    sparse-switch v0, :sswitch_data_9

    goto/16 :goto_0

    .line 312
    :sswitch_1c
    const/16 v1, 0x1b

    .line 313
    goto/16 :goto_0

    .line 315
    :sswitch_1d
    const/16 v1, 0x1c

    .line 316
    goto/16 :goto_0

    .line 318
    :sswitch_1e
    const/16 v1, 0x1d

    goto/16 :goto_0

    .line 324
    :pswitch_c
    sparse-switch v0, :sswitch_data_a

    goto/16 :goto_0

    .line 326
    :sswitch_1f
    const/16 v1, 0x1e

    .line 327
    goto/16 :goto_0

    .line 329
    :sswitch_20
    const/16 v1, 0x1f

    .line 330
    goto/16 :goto_0

    .line 332
    :sswitch_21
    const/16 v1, 0x20

    .line 333
    goto/16 :goto_0

    .line 335
    :sswitch_22
    const/16 v1, 0x21

    .line 336
    goto/16 :goto_0

    .line 338
    :sswitch_23
    const/16 v1, 0x22

    .line 339
    goto/16 :goto_0

    .line 341
    :sswitch_24
    const/16 v1, 0x23

    goto/16 :goto_0

    .line 351
    :cond_1
    sget-object v3, Lcom/zdworks/android/calendartable/util/Util;->nonTraditionalArr:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto/16 :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 179
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 190
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x8 -> :sswitch_3
        0xc -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x17 -> :sswitch_7
    .end sparse-switch

    .line 213
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_8
        0x16 -> :sswitch_9
    .end sparse-switch

    .line 224
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_a
        0x4 -> :sswitch_b
        0xc -> :sswitch_c
        0xf -> :sswitch_d
        0x1f -> :sswitch_e
    .end sparse-switch

    .line 245
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_f
        0x5 -> :sswitch_10
        0x1a -> :sswitch_11
    .end sparse-switch

    .line 260
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_12
        0x7 -> :sswitch_13
    .end sparse-switch

    .line 271
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_14
        0xf -> :sswitch_15
    .end sparse-switch

    .line 282
    :sswitch_data_7
    .sparse-switch
        0xa -> :sswitch_16
        0x12 -> :sswitch_17
        0x14 -> :sswitch_18
    .end sparse-switch

    .line 296
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_19
        0xa -> :sswitch_1a
        0x10 -> :sswitch_1b
    .end sparse-switch

    .line 310
    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_1c
        0x8 -> :sswitch_1d
        0x11 -> :sswitch_1e
    .end sparse-switch

    .line 324
    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_1f
        0xa -> :sswitch_20
        0xd -> :sswitch_21
        0x14 -> :sswitch_22
        0x18 -> :sswitch_23
        0x19 -> :sswitch_24
    .end sparse-switch
.end method

.method public static final isSolarTerms(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "cellDate"
    .parameter "context"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/Util;->findResorces(Landroid/content/Context;)V

    .line 73
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 74
    .local v4, year:I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 75
    .local v1, month:I
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 76
    .local v0, day:I
    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm(II)I

    move-result v3

    .line 77
    .local v3, sectinoal_term:I
    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm(II)I

    move-result v2

    .line 79
    .local v2, principle_term:I
    if-ne v0, v3, :cond_0

    .line 80
    sget-object v5, Lcom/zdworks/android/calendartable/util/Util;->solarTermsArr:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x2

    aget-object v5, v5, v6

    .line 84
    :goto_0
    return-object v5

    .line 81
    :cond_0
    if-ne v0, v2, :cond_1

    .line 82
    sget-object v5, Lcom/zdworks/android/calendartable/util/Util;->solarTermsArr:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    goto :goto_0

    .line 84
    :cond_1
    const-string v5, ""

    goto :goto_0
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 6
    .parameter "calendar"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 607
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 609
    :cond_1
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 611
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 613
    goto :goto_0
.end method

.method public static final isTraditionalFestival(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "lunarMonth"
    .parameter "lunarDay"

    .prologue
    .line 91
    add-int/lit8 p1, p1, -0x1

    .line 93
    const/4 v0, -0x1

    .line 94
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    const-string v1, ""

    .line 155
    :goto_1
    return-object v1

    .line 96
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 98
    :sswitch_0
    const/4 v0, 0x0

    .line 99
    goto :goto_0

    .line 102
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 109
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :pswitch_4
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 117
    :sswitch_2
    const/4 v0, 0x3

    .line 118
    goto :goto_0

    .line 120
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 126
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 128
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 133
    :pswitch_7
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 135
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 140
    :pswitch_9
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 142
    :sswitch_4
    const/4 v0, 0x7

    .line 143
    goto :goto_0

    .line 145
    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    .line 155
    :cond_0
    sget-object v1, Lcom/zdworks/android/calendartable/util/Util;->traditionalFestivalArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 115
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch

    .line 126
    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_6
    .end packed-switch

    .line 133
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_8
    .end packed-switch

    .line 140
    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_4
        0x17 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isTraditionalFestival(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "lunarDate"
    .parameter "context"

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/zdworks/android/calendartable/util/Util;->isTraditionalFestival(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 667
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 741
    sget-object v0, Lcom/zdworks/android/calendartable/util/Util;->TOAST:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zdworks/android/calendartable/util/Util;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/Util;->TOAST:Landroid/widget/Toast;

    .line 746
    :goto_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/Util;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    return-void

    .line 744
    :cond_1
    sget-object v0, Lcom/zdworks/android/calendartable/util/Util;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
