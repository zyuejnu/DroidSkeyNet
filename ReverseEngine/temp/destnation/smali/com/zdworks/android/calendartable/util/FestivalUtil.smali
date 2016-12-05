.class public Lcom/zdworks/android/calendartable/util/FestivalUtil;
.super Landroid/content/BroadcastReceiver;
.source "FestivalUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
    }
.end annotation


# static fields
.field private static CALENDAR:Ljava/util/GregorianCalendar;

.field private static DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final DEFAULT_REGION:Ljava/lang/String;

.field private static calcEaster:Z

.field private static calcGrandparentsDay:Z

.field private static currentRegion:Ljava/lang/String;

.field private static easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

.field private static goodFriday:Lcom/zdworks/android/calendartable/util/SimpleDate;

.field private static holidaySet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            ">;"
        }
    .end annotation
.end field

.field private static modernFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static modernUnimportantFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;",
            "Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;",
            ">;"
        }
    .end annotation
.end field

.field private static solarTermsArr:[Ljava/lang/String;

.field private static specialFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static traditionalFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static traditionalUnimportantFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static workdaySet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 33
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DEFAULT_REGION:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 36
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->CALENDAR:Ljava/util/GregorianCalendar;

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->currentRegion:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    new-instance v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    const-string v3, "zh_HK"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    new-instance v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HK"

    invoke-direct {v1, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    const-string v3, "zh_HK"

    const-string v4, "HK"

    invoke-direct {v2, v3, v4}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    new-instance v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    const-string v3, "zh_HK"

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 604
    return-void
.end method

.method public static getEaster(I)Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 9
    .parameter "year"

    .prologue
    .line 257
    rem-int/lit8 v0, p0, 0x13

    .line 258
    .local v0, a:I
    shr-int/lit8 v1, p0, 0x2

    .line 259
    .local v1, b:I
    div-int/lit8 v7, v1, 0x19

    add-int/lit8 v2, v7, 0x1

    .line 260
    .local v2, c:I
    mul-int/lit8 v7, v2, 0x3

    shr-int/lit8 v3, v7, 0x2

    .line 261
    .local v3, d:I
    mul-int/lit8 v7, v0, 0x13

    mul-int/lit8 v8, v2, 0x8

    add-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x19

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0xf

    rem-int/lit8 v5, v7, 0x1e

    .line 262
    .local v5, e:I
    rsub-int v7, v0, 0x738a

    mul-int/lit8 v8, v5, 0x20

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xa

    add-int/2addr v5, v7

    .line 263
    rem-int/lit8 v7, p0, 0x7

    add-int/2addr v7, v1

    sub-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    rem-int/lit8 v7, v7, 0x7

    sub-int/2addr v5, v7

    .line 264
    shr-int/lit8 v3, v5, 0x5

    .line 265
    mul-int/lit8 v7, v3, 0x1f

    sub-int v4, v5, v7

    .line 266
    .local v4, day:I
    add-int/lit8 v6, v3, 0x3

    .line 268
    .local v6, month:I
    new-instance v7, Lcom/zdworks/android/calendartable/util/SimpleDate;

    add-int/lit8 v8, v6, -0x1

    invoke-direct {v7, p0, v8, v4}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(III)V

    return-object v7
.end method

.method public static getFestResMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;",
            "Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getGoodFriday(Lcom/zdworks/android/calendartable/util/SimpleDate;)Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 5
    .parameter "easter"

    .prologue
    const/4 v4, 0x2

    .line 276
    new-instance v1, Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>()V

    .line 277
    .local v1, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->date()I

    move-result v0

    .line 278
    .local v0, date:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v2

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v4, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 285
    :goto_0
    return-object v1

    .line 280
    :cond_0
    if-ne v0, v4, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v4, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->month()I

    move-result v3

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    goto :goto_0
.end method

.method public static declared-synchronized getHolidays(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    const-class v1, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->holidaySet:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 509
    :cond_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->holidaySet:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getModernFestival(Landroid/content/Context;III)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v5, 0x2

    .line 209
    const-class v4, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 210
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 212
    :cond_0
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 215
    .local v2, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    sget-boolean v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->calcEaster:Z

    if-eqz v3, :cond_7

    .line 216
    if-ne p2, v5, :cond_1

    const/16 v3, 0x13

    if-gt p3, v3, :cond_2

    :cond_1
    const/4 v3, 0x3

    if-ne p2, v3, :cond_7

    const/16 v3, 0x1a

    if-ge p3, v3, :cond_7

    .line 218
    :cond_2
    invoke-virtual {v2, p1, p2, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 219
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v3

    if-eq v3, p1, :cond_4

    .line 220
    :cond_3
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getEaster(I)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v3

    sput-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 221
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-static {v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getGoodFriday(Lcom/zdworks/android/calendartable/util/SimpleDate;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v3

    sput-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->goodFriday:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 223
    :cond_4
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->easter:Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    const/4 v3, 0x0

    const/16 v5, 0xd

    const/16 v6, 0xe

    invoke-virtual {v2, v3, v5, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 225
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 248
    :cond_5
    :goto_0
    monitor-exit v4

    return-object v1

    .line 226
    :cond_6
    :try_start_1
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->goodFriday:Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    const/4 v3, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xd

    invoke-virtual {v2, v3, v5, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 228
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 233
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 234
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 239
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->CALENDAR:Ljava/util/GregorianCalendar;

    .line 240
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 241
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 243
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->specialFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .restart local v1       #result:Ljava/lang/String;
    if-eqz v1, :cond_5

    goto :goto_0

    .line 209
    .end local v0           #c:Ljava/util/GregorianCalendar;
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "c"

    .prologue
    .line 191
    const-class v4, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 192
    .local v2, year:I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 193
    .local v1, month:I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 195
    .local v0, date:I
    invoke-static {p0, v2, v1, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getModernFestival(Landroid/content/Context;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 191
    .end local v0           #date:I
    .end local v1           #month:I
    .end local v2           #year:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getSortedFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "cal"

    .prologue
    .line 155
    const-class v7, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v7

    :try_start_0
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/LunarDate;->fromSolar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/LunarDate;

    move-result-object v3

    .line 156
    .local v3, lunardate:Lcom/zdworks/android/calendartable/util/LunarDate;
    iget v2, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    .line 157
    .local v2, lunarYear:I
    iget v1, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    .line 158
    .local v1, lunarMonth:I
    iget v0, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    .line 160
    .local v0, lunarDate:I
    invoke-static {p0, v2, v1, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 162
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 179
    .end local v4           #str:Ljava/lang/String;
    .local v5, str:Ljava/lang/String;
    :goto_0
    monitor-exit v7

    return-object v5

    .line 165
    .end local v5           #str:Ljava/lang/String;
    .restart local v4       #str:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_1

    move-object v5, v4

    .line 167
    .end local v4           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v5           #str:Ljava/lang/String;
    .restart local v4       #str:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v2, v1, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getUnimportantTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v4

    .line 171
    if-eqz v4, :cond_2

    move-object v5, v4

    .line 172
    .end local v4           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v5           #str:Ljava/lang/String;
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getUnimportantModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_3

    move-object v5, v4

    .line 176
    .end local v4           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v5           #str:Ljava/lang/String;
    .restart local v4       #str:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->isSolarTerms(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v5, v4

    .line 179
    .end local v4           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0           #lunarDate:I
    .end local v1           #lunarMonth:I
    .end local v2           #lunarYear:I
    .end local v3           #lunardate:Lcom/zdworks/android/calendartable/util/LunarDate;
    .end local v5           #str:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized getTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "lunarYear"
    .parameter "lunarMonth"
    .parameter "lunarDate"

    .prologue
    const/16 v6, 0xc

    .line 385
    const-class v4, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 386
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 389
    :cond_0
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 390
    .local v2, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    const/4 v3, 0x0

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v2, v3, v5, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 391
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 404
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-object v1

    .line 397
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    if-ne p2, v6, :cond_2

    const/16 v3, 0x1b

    if-le p3, v3, :cond_2

    add-int/lit16 v3, p1, 0xa89

    const/16 v5, 0xc

    :try_start_1
    invoke-static {v3, v5}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v3

    if-ne p3, v3, :cond_2

    .line 401
    const/4 v3, 0x0

    const/16 v5, 0xd

    const/16 v6, 0xe

    invoke-virtual {v2, v3, v5, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 402
    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #result:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 404
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getTraditionalFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cal"

    .prologue
    .line 369
    const-class v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/LunarDate;->fromSolar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/LunarDate;

    move-result-object v0

    .line 370
    .local v0, lunardate:Lcom/zdworks/android/calendartable/util/LunarDate;
    iget v1, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    iget v3, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    iget v4, v0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    invoke-static {p0, v1, v3, v4}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 369
    .end local v0           #lunardate:Lcom/zdworks/android/calendartable/util/LunarDate;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getUnimportantModernFestival(Landroid/content/Context;III)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 325
    const-class v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernUnimportantFestivalMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 326
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 328
    :cond_0
    sget-object v1, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 329
    .local v1, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 330
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernUnimportantFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .local v0, result:Ljava/lang/String;
    monitor-exit v3

    return-object v0

    .line 325
    .end local v0           #result:Ljava/lang/String;
    .end local v1           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getUnimportantModernFestival(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 297
    const-class v4, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 298
    .local v2, year:I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 299
    .local v1, month:I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 302
    .local v0, date:I
    sget-boolean v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->calcGrandparentsDay:Z

    if-eqz v3, :cond_0

    .line 303
    if-ne v1, v6, :cond_0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    const/16 v3, 0x18

    if-le v0, v3, :cond_0

    .line 306
    const/16 v1, 0xd

    .line 307
    const/16 v0, 0xe

    .line 311
    :cond_0
    invoke-static {p0, v2, v1, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->getUnimportantModernFestival(Landroid/content/Context;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 297
    .end local v0           #date:I
    .end local v1           #month:I
    .end local v2           #year:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getUnimportantTraditionalFestival(Landroid/content/Context;III)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "lunarYear"
    .parameter "lunarMonth"
    .parameter "lunarDate"

    .prologue
    .line 346
    const-class v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalUnimportantFestivalMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 347
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 350
    :cond_0
    sget-object v1, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DATE:Lcom/zdworks/android/calendartable/util/SimpleDate;

    .line 351
    .local v1, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    const/4 v2, 0x0

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v1, v2, v4, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 352
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalUnimportantFestivalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .local v0, result:Ljava/lang/String;
    monitor-exit v3

    return-object v0

    .line 346
    .end local v0           #result:Ljava/lang/String;
    .end local v1           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getWorkdays(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const-class v1, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->workdaySet:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 514
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 516
    :cond_0
    sget-object v0, Lcom/zdworks/android/calendartable/util/FestivalUtil;->workdaySet:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized isSolarTerms(Landroid/content/Context;III)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 436
    const-class v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->solarTermsArr:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->solarTermsArr:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 437
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Z)V

    .line 440
    :cond_1
    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm(II)I

    move-result v1

    .line 441
    .local v1, sectinoal_term:I
    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm(II)I

    move-result v0

    .line 443
    .local v0, principle_term:I
    if-ne p3, v1, :cond_2

    .line 444
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->solarTermsArr:[Ljava/lang/String;

    mul-int/lit8 v4, p2, 0x2

    aget-object v2, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    monitor-exit v3

    return-object v2

    .line 445
    :cond_2
    if-ne p3, v0, :cond_3

    .line 446
    :try_start_1
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->solarTermsArr:[Ljava/lang/String;

    mul-int/lit8 v4, p2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 436
    .end local v0           #principle_term:I
    .end local v1           #sectinoal_term:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static final declared-synchronized isSolarTerms(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cal"

    .prologue
    .line 417
    const-class v4, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 418
    .local v2, year:I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 419
    .local v1, month:I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 421
    .local v0, day:I
    invoke-static {p0, v2, v1, v0}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->isSolarTerms(Landroid/content/Context;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 417
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #year:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "language"
    .parameter "region"
    .parameter "forceLoad"

    .prologue
    .line 538
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 560
    :cond_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    invoke-direct {v0, p1, p2}, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v0, key:Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->resourceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    .line 544
    .local v1, result:Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
    if-nez v1, :cond_2

    .line 545
    move-object v1, v0

    .line 549
    :cond_2
    iget-object v2, v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->language:Ljava/lang/String;

    iget-object v3, v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DEFAULT_LANGUAGE:Ljava/lang/String;

    iget-object v3, v1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    sget-object v2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DEFAULT_LANGUAGE:Ljava/lang/String;

    sget-object v3, Lcom/zdworks/android/calendartable/util/FestivalUtil;->DEFAULT_REGION:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public static load(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "forceLoad"

    .prologue
    .line 525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    return-void
.end method

.method private static declared-synchronized loadFestivals(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 29
    .parameter "context"
    .parameter "xml"

    .prologue
    .line 75
    const-class v26, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v26

    :try_start_0
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->currentRegion:Ljava/lang/String;

    const-string v27, "HK"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->calcEaster:Z

    .line 76
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->currentRegion:Ljava/lang/String;

    sget-object v27, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->calcGrandparentsDay:Z

    .line 78
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    .line 79
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalUnimportantFestivalMap:Ljava/util/HashMap;

    .line 80
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    .line 81
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernUnimportantFestivalMap:Ljava/util/HashMap;

    .line 82
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->specialFestivalMap:Ljava/util/HashMap;

    .line 85
    const-string v12, "festival"

    .local v12, festivalTag:Ljava/lang/String;
    const-string v5, "category"

    .line 86
    .local v5, categoryTag:Ljava/lang/String;
    const-string v14, "month"

    .local v14, monthAttr:Ljava/lang/String;
    const-string v7, "date"

    .local v7, dateAttr:Ljava/lang/String;
    const-string v17, "name"

    .local v17, nameAttr:Ljava/lang/String;
    const-string v24, "weekOfMonth"

    .local v24, womAttr:Ljava/lang/String;
    const-string v9, "dayOfWeek"

    .line 87
    .local v9, dowAttr:Ljava/lang/String;
    const-string v15, "mordern-not-important"

    .local v15, mordernNI:Ljava/lang/String;
    const-string v21, "traditional-important"

    .local v21, traditional:Ljava/lang/String;
    const-string v22, "traditional-not-important"

    .local v22, traditionalNI:Ljava/lang/String;
    const-string v19, "modern-special"

    .line 89
    .local v19, special:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v27, Lcom/zdworks/android/calendartable/R$array;->solar_termes:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->solarTermsArr:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v4, 0x0

    .line 96
    .local v4, category:Ljava/lang/String;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 97
    .local v11, event:I
    :goto_0
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_3

    .line 98
    if-nez v11, :cond_1

    .line 137
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    goto :goto_0

    .line 100
    :cond_1
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v11, v0, :cond_8

    .line 101
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 102
    .local v20, tag:Ljava/lang/String;
    const-string v25, "category"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 103
    const/16 v25, 0x0

    const-string v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 105
    :cond_2
    const-string v25, "festival"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 106
    const/16 v25, 0x0

    const-string v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 107
    .local v16, name:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v27, "month"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .line 109
    .local v13, month:I
    const-string v25, "modern-special"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 110
    const/16 v25, 0x0

    const-string v27, "weekOfMonth"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 112
    .local v23, weekOfMonth:I
    const/16 v25, 0x0

    const-string v27, "dayOfWeek"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 114
    .local v8, dayOfWeek:I
    new-instance v18, Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v13, v1, v8}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(III)V

    .line 115
    .local v18, sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->specialFestivalMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 139
    .end local v8           #dayOfWeek:I
    .end local v11           #event:I
    .end local v13           #month:I
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    .end local v20           #tag:Ljava/lang/String;
    .end local v23           #weekOfMonth:I
    :catch_0
    move-exception v10

    .line 140
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_2
    monitor-exit v26

    return-void

    .line 117
    .restart local v11       #event:I
    .restart local v13       #month:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v20       #tag:Ljava/lang/String;
    :cond_4
    const/16 v25, 0x0

    :try_start_3
    const-string v27, "date"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 119
    .local v6, date:I
    new-instance v18, Lcom/zdworks/android/calendartable/util/SimpleDate;

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1, v13, v6}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(III)V

    .line 121
    .restart local v18       #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    const-string v25, "traditional-important"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 122
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalFestivalMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 141
    .end local v6           #date:I
    .end local v11           #event:I
    .end local v13           #month:I
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    .end local v20           #tag:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 142
    .local v10, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 75
    .end local v4           #category:Ljava/lang/String;
    .end local v5           #categoryTag:Ljava/lang/String;
    .end local v7           #dateAttr:Ljava/lang/String;
    .end local v9           #dowAttr:Ljava/lang/String;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #festivalTag:Ljava/lang/String;
    .end local v14           #monthAttr:Ljava/lang/String;
    .end local v15           #mordernNI:Ljava/lang/String;
    .end local v17           #nameAttr:Ljava/lang/String;
    .end local v19           #special:Ljava/lang/String;
    .end local v21           #traditional:Ljava/lang/String;
    .end local v22           #traditionalNI:Ljava/lang/String;
    .end local v24           #womAttr:Ljava/lang/String;
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 123
    .restart local v4       #category:Ljava/lang/String;
    .restart local v5       #categoryTag:Ljava/lang/String;
    .restart local v6       #date:I
    .restart local v7       #dateAttr:Ljava/lang/String;
    .restart local v9       #dowAttr:Ljava/lang/String;
    .restart local v11       #event:I
    .restart local v12       #festivalTag:Ljava/lang/String;
    .restart local v13       #month:I
    .restart local v14       #monthAttr:Ljava/lang/String;
    .restart local v15       #mordernNI:Ljava/lang/String;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #nameAttr:Ljava/lang/String;
    .restart local v18       #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    .restart local v19       #special:Ljava/lang/String;
    .restart local v20       #tag:Ljava/lang/String;
    .restart local v21       #traditional:Ljava/lang/String;
    .restart local v22       #traditionalNI:Ljava/lang/String;
    .restart local v24       #womAttr:Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v25, "traditional-not-important"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 124
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->traditionalUnimportantFestivalMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 125
    :cond_6
    const-string v25, "mordern-not-important"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 126
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernUnimportantFestivalMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 128
    :cond_7
    sget-object v25, Lcom/zdworks/android/calendartable/util/FestivalUtil;->modernFestivalMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 132
    .end local v6           #date:I
    .end local v13           #month:I
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #sd:Lcom/zdworks/android/calendartable/util/SimpleDate;
    .end local v20           #tag:Ljava/lang/String;
    :cond_8
    const/16 v25, 0x3

    move/from16 v0, v25

    if-eq v11, v0, :cond_0

    .line 134
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v11, v0, :cond_0

    goto/16 :goto_1
.end method

.method private static declared-synchronized loadHolidays(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 21
    .parameter "context"
    .parameter "xml"

    .prologue
    .line 452
    const-class v16, Lcom/zdworks/android/calendartable/util/FestivalUtil;

    monitor-enter v16

    :try_start_0
    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    sput-object v15, Lcom/zdworks/android/calendartable/util/FestivalUtil;->holidaySet:Ljava/util/TreeSet;

    .line 453
    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    sput-object v15, Lcom/zdworks/android/calendartable/util/FestivalUtil;->workdaySet:Ljava/util/TreeSet;

    .line 456
    const-string v11, "period"

    .local v11, periodTag:Ljava/lang/String;
    const-string v14, "workday"

    .line 457
    .local v14, workdayTag:Ljava/lang/String;
    const-string v10, "from"

    .local v10, fromAttr:Ljava/lang/String;
    const-string v13, "to"

    .local v13, toAttr:Ljava/lang/String;
    const-string v4, "date"

    .line 459
    .local v4, dateAttr:Ljava/lang/String;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v15, "yy-MM-dd"

    invoke-direct {v9, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 462
    .local v9, formater:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .local v2, c:Ljava/util/Calendar;
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .local v7, end:Ljava/util/Calendar;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    .line 467
    .local v8, event:I
    :goto_0
    const/4 v15, 0x1

    if-eq v8, v15, :cond_2

    .line 468
    if-nez v8, :cond_1

    .line 494
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    goto :goto_0

    .line 470
    :cond_1
    const/4 v15, 0x2

    if-ne v8, v15, :cond_4

    .line 471
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 472
    .local v12, tag:Ljava/lang/String;
    const-string v15, "period"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 473
    const/4 v15, 0x0

    const-string v17, "from"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, dateText:Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 476
    const/4 v15, 0x0

    const-string v17, "to"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 479
    :goto_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v15, v17, v19

    if-gtz v15, :cond_0

    .line 480
    sget-object v15, Lcom/zdworks/android/calendartable/util/FestivalUtil;->holidaySet:Ljava/util/TreeSet;

    invoke-static {v2}, Lcom/zdworks/android/calendartable/util/SimpleDate;->fromCalendar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 481
    const/4 v15, 0x5

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 496
    .end local v5           #dateText:Ljava/lang/String;
    .end local v8           #event:I
    .end local v12           #tag:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 497
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    monitor-exit v16

    return-void

    .line 484
    .restart local v8       #event:I
    .restart local v12       #tag:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v15, "workday"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 485
    const/4 v15, 0x0

    const-string v17, "date"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 486
    .restart local v5       #dateText:Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 487
    .local v3, date:Ljava/util/Date;
    sget-object v15, Lcom/zdworks/android/calendartable/util/FestivalUtil;->workdaySet:Ljava/util/TreeSet;

    invoke-static {v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->fromDate(Ljava/util/Date;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 498
    .end local v3           #date:Ljava/util/Date;
    .end local v5           #dateText:Ljava/lang/String;
    .end local v8           #event:I
    .end local v12           #tag:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 499
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 452
    .end local v2           #c:Ljava/util/Calendar;
    .end local v4           #dateAttr:Ljava/lang/String;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #end:Ljava/util/Calendar;
    .end local v9           #formater:Ljava/text/SimpleDateFormat;
    .end local v10           #fromAttr:Ljava/lang/String;
    .end local v11           #periodTag:Ljava/lang/String;
    .end local v13           #toAttr:Ljava/lang/String;
    .end local v14           #workdayTag:Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 489
    .restart local v2       #c:Ljava/util/Calendar;
    .restart local v4       #dateAttr:Ljava/lang/String;
    .restart local v7       #end:Ljava/util/Calendar;
    .restart local v8       #event:I
    .restart local v9       #formater:Ljava/text/SimpleDateFormat;
    .restart local v10       #fromAttr:Ljava/lang/String;
    .restart local v11       #periodTag:Ljava/lang/String;
    .restart local v13       #toAttr:Ljava/lang/String;
    .restart local v14       #workdayTag:Ljava/lang/String;
    :cond_4
    const/4 v15, 0x3

    if-eq v8, v15, :cond_0

    .line 491
    const/4 v15, 0x4

    if-ne v8, v15, :cond_0

    goto/16 :goto_1

    .line 500
    .end local v8           #event:I
    :catch_2
    move-exception v6

    .line 501
    .local v6, e:Ljava/text/ParseException;
    :try_start_5
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private static loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "language"
    .parameter "region"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 563
    const-string v1, "festivals_%s_%s"

    .line 564
    .local v1, festivalTemplate:Ljava/lang/String;
    const-string v3, "holidays_%s"

    .line 566
    .local v3, holidayTemplate:Ljava/lang/String;
    sput-object p2, Lcom/zdworks/android/calendartable/util/FestivalUtil;->currentRegion:Ljava/lang/String;

    .line 568
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, festivalFile:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 572
    .local v4, id:I
    if-lez v4, :cond_0

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->loadFestivals(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 578
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, holidayFile:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 581
    if-lez v4, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->loadHolidays(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 587
    .end local v2           #holidayFile:Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    move v5, v6

    .line 575
    goto :goto_0

    .restart local v2       #holidayFile:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 584
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zdworks/android/calendartable/util/FestivalUtil;->currentRegion:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/FestivalUtil;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 602
    :cond_0
    return-void
.end method
