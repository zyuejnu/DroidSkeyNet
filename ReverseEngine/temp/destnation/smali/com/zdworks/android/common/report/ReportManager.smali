.class public final Lcom/zdworks/android/common/report/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/report/ReportManager$BasicDataObserver;,
        Lcom/zdworks/android/common/report/ReportManager$RawPackListener;,
        Lcom/zdworks/android/common/report/ReportManager$PrefeManager;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_KEY:Ljava/lang/String; = "an"

.field private static DEBUG:Z = false

.field private static final FIRST_START:J = 0xea60L

.field private static final FREQUENCE:J = 0xdbba00L

.field private static final ROOT_DIR:Ljava/lang/String; = "/.zdworks/"

.field private static final TAG:Ljava/lang/String; = "ReportManager"


# instance fields
.field private mActionList:[Ljava/lang/String;

.field private mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

.field private mContext:Landroid/content/Context;

.field private mNetChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefeManager:Lcom/zdworks/android/common/report/ReportManager$PrefeManager;

.field private mRawDataPackListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zdworks/android/common/report/ReportManager$RawPackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReportUrl:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zdworks/android/common/report/ReportManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "reportUrl"
    .parameter "actionList"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/zdworks/android/common/report/ReportManager;->mRawDataPackListener:Ljava/util/Map;

    .line 53
    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "action list is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/zdworks/android/common/report/ReportManager;->mReportUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/zdworks/android/common/report/ReportManager;->mActionList:[Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/report/ReportManager;->packageStr2Dir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, cachePath:Ljava/lang/String;
    new-instance v1, Lcom/zdworks/android/common/report/CacheManager;

    invoke-static {v0}, Lcom/zdworks/android/common/utils/SDCardUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zdworks/android/common/report/CacheManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

    .line 61
    new-instance v1, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;-><init>(Lcom/zdworks/android/common/report/ReportManager;Landroid/content/Context;Lcom/zdworks/android/common/report/ReportManager$1;)V

    iput-object v1, p0, Lcom/zdworks/android/common/report/ReportManager;->mPrefeManager:Lcom/zdworks/android/common/report/ReportManager$PrefeManager;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/zdworks/android/common/report/ReportManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/report/ReportManager;->report(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/report/ReportManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zdworks/android/common/report/ReportManager;)Lcom/zdworks/android/common/report/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/zdworks/android/common/report/ReportManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/report/ReportManager;->writeDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs buildReportData([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .parameter "cnts"

    .prologue
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, re:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 192
    if-lez v0, :cond_0

    .line 193
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs count(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 6
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/report/RawReportData;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, datas:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 219
    :cond_1
    return-object v3

    .line 209
    :cond_2
    array-length v5, p1

    new-array v3, v5, [Ljava/lang/Integer;

    .line 210
    .local v3, ret:[Ljava/lang/Integer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/common/report/RawReportData;

    .line 211
    .local v2, raw:Lcom/zdworks/android/common/report/RawReportData;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 212
    aget-object v4, p1, v0

    .line 213
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 211
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {v2}, Lcom/zdworks/android/common/report/RawReportData;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    aget-object v5, v3, v0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 241
    const-string v0, "ReportManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method private packageStr2Dir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageStr"

    .prologue
    .line 69
    const-string v0, "/.zdworks/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private report(Z)V
    .locals 17
    .parameter "isCheckTime"

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zdworks/android/common/report/ReportManager;->mPrefeManager:Lcom/zdworks/android/common/report/ReportManager$PrefeManager;

    invoke-virtual {v12}, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;->getLastReportTime()J

    move-result-wide v10

    .line 117
    .local v10, t:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/32 v14, 0x5265c00

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    .line 155
    .end local v10           #t:J
    :cond_0
    return-void

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zdworks/android/common/report/ReportManager;->mActionList:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zdworks/android/common/report/ReportManager;->mActionList:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 122
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v15, 0x5265c00

    sub-long/2addr v13, v15

    invoke-virtual {v12, v13, v14, v1}, Lcom/zdworks/android/common/report/CacheManager;->getDatas(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 124
    .local v3, dataList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;>;"
    const/4 v9, 0x0

    check-cast v9, [[Ljava/lang/String;

    .line 125
    .local v9, result:[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zdworks/android/common/report/ReportManager;->mRawDataPackListener:Ljava/util/Map;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zdworks/android/common/report/ReportManager$RawPackListener;

    .line 126
    .local v7, listener:Lcom/zdworks/android/common/report/ReportManager$RawPackListener;
    if-nez v7, :cond_2

    .line 127
    invoke-static {v3}, Lcom/zdworks/android/common/report/ReportManager;->toSimpleReportData(Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object v9

    .line 131
    :goto_1
    if-nez v9, :cond_3

    .line 121
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v7, v1, v3}, Lcom/zdworks/android/common/report/ReportManager$RawPackListener;->onPack(Ljava/lang/String;Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 133
    :cond_3
    array-length v12, v9

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 134
    .local v4, dist:[[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "an"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    aput-object v13, v4, v12

    .line 137
    const/4 v12, 0x0

    const/4 v13, 0x1

    array-length v14, v9

    invoke-static {v9, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    new-instance v8, Lcom/zdworks/android/common/report/ReportManager$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zdworks/android/common/report/ReportManager$3;-><init>(Lcom/zdworks/android/common/report/ReportManager;)V

    .line 145
    .local v8, onFailed:Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;
    new-instance v12, Lcom/zdworks/android/common/report/ReportManager$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/zdworks/android/common/report/ReportManager$4;-><init>(Lcom/zdworks/android/common/report/ReportManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v8}, Lcom/zdworks/android/common/report/ReportManager;->send([[Ljava/lang/String;Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;)V

    goto :goto_2
.end method

.method private send([[Ljava/lang/String;Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;)V
    .locals 2
    .parameter "data"
    .parameter "onSucc"
    .parameter "onFail"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/zdworks/android/common/report/ReportManager;->mReportUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/zdworks/jvm/common/net/HttpDataSender;->getInstance(Ljava/lang/String;)Lcom/zdworks/jvm/common/net/HttpDataSender;

    move-result-object v0

    .line 173
    .local v0, sender:Lcom/zdworks/jvm/common/net/HttpDataSender;
    invoke-virtual {v0, p1, p2, p3}, Lcom/zdworks/jvm/common/net/HttpDataSender;->put([[Ljava/lang/String;Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;)V

    .line 174
    return-void
.end method

.method public static toSimpleReportData(Ljava/util/Map;)[[Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/report/RawReportData;",
            ">;>;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, datas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;>;"
    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 228
    if-nez p0, :cond_0

    const/4 v6, 0x0

    check-cast v6, [[Ljava/lang/String;

    .line 237
    :goto_0
    return-object v6

    .line 229
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 230
    .local v3, keys:[Ljava/lang/Object;
    array-length v7, v3

    filled-new-array {v7, v10}, [I

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;

    .line 231
    .local v5, ret:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 232
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, key:Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 234
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    .local v0, count:I
    :goto_2
    new-array v7, v10, [Ljava/lang/String;

    aget-object v8, v3, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #count:I
    :cond_1
    move v0, v6

    .line 234
    goto :goto_2

    .end local v2           #key:Ljava/lang/String;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    :cond_2
    move-object v6, v5

    .line 237
    goto :goto_0
.end method

.method private writeDebugInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 158
    const-string v2, "ReportManager"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "/.zdworks/"

    invoke-static {v2}, Lcom/zdworks/android/common/utils/SDCardUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/zdworks/android/common/utils/SDCardUtils;->makeSureDirExist(Ljava/lang/String;)V

    .line 162
    const-string v2, "debug.info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/zdworks/android/common/FileUtils;->writeString(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;
    invoke-virtual {v0}, Lcom/zdworks/android/common/utils/SDCardUtils$SDCardNotFoundExcetpion;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 179
    iput-object v2, p0, Lcom/zdworks/android/common/report/ReportManager;->mTimer:Ljava/util/Timer;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mNetChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zdworks/android/common/report/ReportManager;->mNetChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iput-object v2, p0, Lcom/zdworks/android/common/report/ReportManager;->mNetChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    :cond_1
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/common/report/CacheManager;->clear(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setCacheActionList([Ljava/lang/String;)V
    .locals 0
    .parameter "actionList"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager;->mActionList:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setDataRawPackListener(Ljava/lang/String;Lcom/zdworks/android/common/report/ReportManager$RawPackListener;)V
    .locals 1
    .parameter "actionName"
    .parameter "listener"

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mRawDataPackListener:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setup()V
    .locals 7

    .prologue
    .line 80
    new-instance v1, Lcom/zdworks/android/common/report/ReportManager$1;

    invoke-direct {v1, p0}, Lcom/zdworks/android/common/report/ReportManager$1;-><init>(Lcom/zdworks/android/common/report/ReportManager;)V

    .line 86
    .local v1, task:Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mTimer:Ljava/util/Timer;

    .line 87
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xdbba00

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 89
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v6, filter:Landroid/content/IntentFilter;
    new-instance v0, Lcom/zdworks/android/common/report/ReportManager$2;

    invoke-direct {v0, p0}, Lcom/zdworks/android/common/report/ReportManager$2;-><init>(Lcom/zdworks/android/common/report/ReportManager;)V

    iput-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mNetChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zdworks/android/common/report/ReportManager;->mNetChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public test()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zdworks/android/common/report/ReportManager;->DEBUG:Z

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/report/ReportManager;->report(Z)V

    .line 103
    return-void
.end method

.method public declared-synchronized writeCache(Lcom/zdworks/android/common/report/RawReportData;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 106
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cache can\'t null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager;->mCacheManager:Lcom/zdworks/android/common/report/CacheManager;

    invoke-virtual {v0, p1}, Lcom/zdworks/android/common/report/CacheManager;->write(Lcom/zdworks/android/common/report/RawReportData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void
.end method
