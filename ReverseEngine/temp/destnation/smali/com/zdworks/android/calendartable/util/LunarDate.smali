.class public Lcom/zdworks/android/calendartable/util/LunarDate;
.super Ljava/lang/Object;
.source "LunarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static CHINESE_DATE_NAMES:[Ljava/lang/String;

.field public static CHINESE_MONTH_NAMES:[Ljava/lang/String;

.field private static init:Z


# instance fields
.field public date:I

.field public month:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zdworks/android/calendartable/util/LunarDate;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSolar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/LunarDate;
    .locals 5
    .parameter "solar"

    .prologue
    .line 68
    new-instance v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;-><init>()V

    .line 69
    .local v0, c:Lcom/zdworks/android/calendartable/util/ChineseCalendar;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 72
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 73
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 75
    new-instance v1, Lcom/zdworks/android/calendartable/util/LunarDate;

    invoke-direct {v1}, Lcom/zdworks/android/calendartable/util/LunarDate;-><init>()V

    .line 76
    .local v1, ld:Lcom/zdworks/android/calendartable/util/LunarDate;
    iget v2, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit16 v2, v2, -0xa89

    iput v2, v1, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    .line 77
    iget v2, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    .line 78
    iget v2, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    iput v2, v1, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    .line 80
    return-object v1
.end method

.method public static generateLunarTable(III)Ljava/util/List;
    .locals 9
    .parameter "solarYear"
    .parameter "solarMonth"
    .parameter "firstDayOfWeek"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/calendartable/util/LunarDate;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x2a

    .line 91
    invoke-static {p0, p1, p2}, Lcom/zdworks/android/calendartable/util/TimeUtils;->getFirstDayOfTable(III)Ljava/util/Calendar;

    move-result-object v1

    .line 93
    .local v1, firstDay:Ljava/util/Calendar;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v4, table:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/calendartable/util/LunarDate;>;"
    new-instance v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;-><init>()V

    .line 95
    .local v0, c:Lcom/zdworks/android/calendartable/util/ChineseCalendar;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 98
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 99
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 102
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 103
    new-instance v3, Lcom/zdworks/android/calendartable/util/LunarDate;

    invoke-direct {v3}, Lcom/zdworks/android/calendartable/util/LunarDate;-><init>()V

    .line 104
    .local v3, lunar:Lcom/zdworks/android/calendartable/util/LunarDate;
    iget v5, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit16 v5, v5, -0xa89

    iput v5, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    .line 105
    iget v5, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    .line 106
    iget v5, v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    iput v5, v3, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    .line 107
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->rollUpOneDay()I

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v3           #lunar:Lcom/zdworks/android/calendartable/util/LunarDate;
    :cond_0
    return-object v4
.end method

.method private static initResources()V
    .locals 2

    .prologue
    .line 22
    sget-boolean v1, Lcom/zdworks/android/calendartable/util/LunarDate;->init:Z

    if-eqz v1, :cond_0

    .line 23
    invoke-static {}, Lcom/zdworks/android/calendartable/util/StaticContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/zdworks/android/calendartable/R$array;->monthName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_MONTH_NAMES:[Ljava/lang/String;

    .line 25
    sget v1, Lcom/zdworks/android/calendartable/R$array;->lunar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_DATE_NAMES:[Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    sput-boolean v1, Lcom/zdworks/android/calendartable/util/LunarDate;->init:Z

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/zdworks/android/calendartable/util/LunarDate;->initResources()V

    .line 43
    sget-object v0, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_DATE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEarthlyBranch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget v1, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v0, v1, 0xc

    .line 53
    .local v0, index:I
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getHeavenlyStem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget v1, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v0, v1, 0xa

    .line 48
    .local v0, index:I
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMonthName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/zdworks/android/calendartable/util/LunarDate;->initResources()V

    .line 36
    sget-object v0, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_MONTH_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNameInTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/LunarDate;->getMonthName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/LunarDate;->getDateName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getZodiac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget v1, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v0, v1, 0xc

    .line 58
    .local v0, index:I
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->animalNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public toMMddString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/zdworks/android/calendartable/util/LunarDate;->initResources()V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_MONTH_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zdworks/android/calendartable/util/LunarDate;->CHINESE_DATE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/zdworks/android/calendartable/util/LunarDate;->date:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
