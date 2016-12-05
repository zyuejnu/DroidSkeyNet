.class public Lcom/zdworks/android/common/ctrl/OurContext;
.super Ljava/lang/Object;
.source "OurContext.java"


# static fields
.field private static final En_1:Ljava/lang/String; = "en"

.field private static final Ja_1:Ljava/lang/String; = "ja"

.field private static final Ja_2:Ljava/lang/String; = "ja_JP"

.field private static final Ko_1:Ljava/lang/String; = "ko"

.field private static final Ko_2:Ljava/lang/String; = "ko_KR"

.field private static final Zh_1:Ljava/lang/String; = "zh"

.field private static final Zh_2:Ljava/lang/String; = "zh_TW"

.field private static final Zh_3:Ljava/lang/String; = "zh_HK"

.field private static final Zh_4:Ljava/lang/String; = "zh_CN"

.field private static density:F

.field private static instance:Lcom/zdworks/android/common/ctrl/OurContext;

.field public static locale:Ljava/lang/String;

.field private static screenHeight_px:I

.field private static screenWidth_px:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, -0x4080

    sput v0, Lcom/zdworks/android/common/ctrl/OurContext;->density:F

    .line 28
    const/16 v0, 0x140

    sput v0, Lcom/zdworks/android/common/ctrl/OurContext;->screenWidth_px:I

    .line 29
    const/16 v0, 0x1e0

    sput v0, Lcom/zdworks/android/common/ctrl/OurContext;->screenHeight_px:I

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 47
    return-void
.end method

.method private static checkInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    sget v2, Lcom/zdworks/android/common/ctrl/OurContext;->density:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 54
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/zdworks/android/common/ctrl/OurContext;->screenWidth_px:I

    .line 57
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/zdworks/android/common/ctrl/OurContext;->screenHeight_px:I

    .line 58
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/zdworks/android/common/ctrl/OurContext;->density:F

    goto :goto_0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/zdworks/android/common/ctrl/OurContext;->checkInit(Landroid/content/Context;)V

    .line 66
    sget v0, Lcom/zdworks/android/common/ctrl/OurContext;->density:F

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/zdworks/android/common/ctrl/OurContext;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/zdworks/android/common/ctrl/OurContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->instance:Lcom/zdworks/android/common/ctrl/OurContext;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/zdworks/android/common/ctrl/OurContext;

    invoke-direct {v0}, Lcom/zdworks/android/common/ctrl/OurContext;-><init>()V

    sput-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->instance:Lcom/zdworks/android/common/ctrl/OurContext;

    .line 24
    :cond_0
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->instance:Lcom/zdworks/android/common/ctrl/OurContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isChinese()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 120
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnglish()Z
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 128
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapan()Z
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 136
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "ja_JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKorea()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 144
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "ko_KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimplified()Z
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 88
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTraditional()Z
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 112
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTraditional_HK()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 104
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTraditional_TW()Z
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/zdworks/android/common/ctrl/OurContext;->localeFind()V

    .line 96
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static localeFind()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 82
    .local v0, myLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getLocalLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/zdworks/android/common/ctrl/OurContext;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHeight(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 75
    invoke-static {p1}, Lcom/zdworks/android/common/ctrl/OurContext;->checkInit(Landroid/content/Context;)V

    .line 76
    sget v0, Lcom/zdworks/android/common/ctrl/OurContext;->screenHeight_px:I

    return v0
.end method

.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 70
    invoke-static {p1}, Lcom/zdworks/android/common/ctrl/OurContext;->checkInit(Landroid/content/Context;)V

    .line 71
    sget v0, Lcom/zdworks/android/common/ctrl/OurContext;->screenWidth_px:I

    return v0
.end method
