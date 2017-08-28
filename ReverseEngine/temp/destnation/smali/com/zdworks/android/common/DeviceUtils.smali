.class public Lcom/zdworks/android/common/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final KB_MULTIPLES:J = 0x400L

.field private static final MB_MULTIPLES:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "DevicesUtils"

.field private static totalMen:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zdworks/android/common/DeviceUtils;->totalMen:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetSDcardFs()Landroid/os/StatFs;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->getSDCardFile()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, sdcardFile:Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static doGetSystemFs()Landroid/os/StatFs;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAvailMem(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 109
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 110
    .local v1, info:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 111
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public static getAvailMemMB(Landroid/content/Context;)F
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getAvailMem(Landroid/content/Context;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    return v0
.end method

.method public static getDisplayDensityDpi(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 192
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 10
    .parameter "context"

    .prologue
    .line 156
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    .local v3, metric:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 158
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 162
    .local v0, display:Landroid/view/Display;
    invoke-static {}, Lcom/zdworks/android/common/Env;->getSDKLevel()I

    move-result v7

    const/16 v8, 0xe

    if-ge v7, v8, :cond_0

    .line 182
    :goto_0
    return-object v3

    .line 166
    :cond_0
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .local v5, rawWidth:I
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    .local v4, rawHeight:I
    :try_start_0
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    .local v1, mGetRawH:Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 171
    .local v2, mGetRawW:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 172
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 179
    .end local v1           #mGetRawH:Ljava/lang/reflect/Method;
    .end local v2           #mGetRawW:Ljava/lang/reflect/Method;
    :goto_1
    iput v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 180
    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 177
    :catch_0
    move-exception v7

    goto :goto_1

    .line 176
    :catch_1
    move-exception v7

    goto :goto_1

    .line 175
    :catch_2
    move-exception v7

    goto :goto_1

    .line 174
    :catch_3
    move-exception v7

    goto :goto_1

    .line 173
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method public static getInchScreenSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 211
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    .local v0, metric:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/zdworks/android/common/DeviceUtils;->getInchScreenSize(Landroid/util/DisplayMetrics;)I

    move-result v1

    return v1
.end method

.method private static getInchScreenSize(Landroid/util/DisplayMetrics;)I
    .locals 7
    .parameter "metric"

    .prologue
    .line 217
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    .local v2, width:I
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 221
    .local v0, height:I
    int-to-float v5, v2

    iget v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v5, v6

    .line 222
    .local v3, xin:F
    int-to-float v5, v0

    iget v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, v5, v6

    .line 223
    .local v4, yin:F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 224
    .local v1, inch:I
    return v1
.end method

.method public static getSDCardFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSDCardFreeSize()J
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSDcardFs()Landroid/os/StatFs;

    move-result-object v0

    .line 68
    .local v0, sdcardFs:Landroid/os/StatFs;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 69
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method public static getSDCardFreeSizeKB()F
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSDcardFs()Landroid/os/StatFs;

    move-result-object v0

    .line 62
    .local v0, sdcardFs:Landroid/os/StatFs;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method public static getSDCardTotalSize()J
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSDcardFs()Landroid/os/StatFs;

    move-result-object v0

    .line 74
    .local v0, sdcardFs:Landroid/os/StatFs;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 75
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 4
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 147
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v3, v1, v2

    return-object v1
.end method

.method public static getSystemFreeSize()J
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSystemFs()Landroid/os/StatFs;

    move-result-object v0

    .line 91
    .local v0, dataFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getSystemFreeSizeKB()F
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSystemFs()Landroid/os/StatFs;

    move-result-object v0

    .line 86
    .local v0, dataFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getSystemTotalSize()J
    .locals 5

    .prologue
    .line 95
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->doGetSystemFs()Landroid/os/StatFs;

    move-result-object v0

    .line 96
    .local v0, dataFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static declared-synchronized getTotalMem()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-class v7, Lcom/zdworks/android/common/DeviceUtils;

    monitor-enter v7

    :try_start_0
    sget-wide v8, Lcom/zdworks/android/common/DeviceUtils;->totalMen:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 121
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 122
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v6, "\\d+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 124
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 125
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 127
    .local v5, value:I
    int-to-long v8, v5

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    sput-wide v8, Lcom/zdworks/android/common/DeviceUtils;->totalMen:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v5           #value:I
    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    :cond_0
    const-string v6, "ZDbox"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTotalMen:out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-wide v8, Lcom/zdworks/android/common/DeviceUtils;->totalMen:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    return-wide v8

    .line 129
    :cond_1
    const-wide/16 v8, 0x0

    :try_start_4
    sput-wide v8, Lcom/zdworks/android/common/DeviceUtils;->totalMen:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 132
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    .end local v0           #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 132
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    goto :goto_1
.end method

.method public static isLowDensityDpi(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getDisplayDensityDpi(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetWorkingEnable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 52
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 53
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 54
    .local v5, networkInfos:[Landroid/net/NetworkInfo;
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 55
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 57
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :goto_1
    return v6

    .line 54
    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isPadDevice(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 233
    invoke-static {p0}, Lcom/zdworks/android/common/DeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 235
    .local v1, metric:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/zdworks/android/common/DeviceUtils;->getInchScreenSize(Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 236
    .local v0, inch:I
    const-string v2, "DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen size is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",density is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v2, "DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen inch is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v3

    const v3, 0x5dc00

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    .line 239
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
