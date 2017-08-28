.class Lcom/zdworks/android/common/report/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheManager"


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    const-string v0, "/"

    invoke-static {v0}, Lcom/zdworks/android/common/utils/SDCardUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/zdworks/android/common/report/CacheManager;->mFilePath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private ensurePathExists()Z
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 34
    .local v0, bOk:Z
    :try_start_0
    iget-object v2, p0, Lcom/zdworks/android/common/report/CacheManager;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/zdworks/android/common/utils/SDCardUtils;->makeSureDirExist(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "actionName"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zdworks/android/common/report/CacheManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1
    .parameter "actionName"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/report/CacheManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zdworks/android/common/FileUtils;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getDatas(JLjava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter "minDateTime"
    .parameter "actionName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/report/RawReportData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v6, ret:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {p0, p3}, Lcom/zdworks/android/common/report/CacheManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 74
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 76
    .local v4, line:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v4}, Lcom/zdworks/android/common/report/RawReportData;->buildFrom(Ljava/lang/String;)Lcom/zdworks/android/common/report/RawReportData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 78
    .local v2, c:Lcom/zdworks/android/common/report/RawReportData;
    if-nez v2, :cond_3

    .line 86
    :cond_1
    :goto_0
    if-nez v4, :cond_0

    .line 92
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 94
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #c:Lcom/zdworks/android/common/report/RawReportData;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v6

    .line 80
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #c:Lcom/zdworks/android/common/report/RawReportData;
    .restart local v4       #line:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/zdworks/android/common/report/RawReportData;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-lez v7, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/zdworks/android/common/report/RawReportData;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2}, Lcom/zdworks/android/common/report/RawReportData;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 87
    .end local v2           #c:Lcom/zdworks/android/common/report/RawReportData;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/report/RawReportData;>;"
    :catch_0
    move-exception v7

    move-object v0, v1

    .line 92
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #c:Lcom/zdworks/android/common/report/RawReportData;
    .restart local v4       #line:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 89
    .end local v2           #c:Lcom/zdworks/android/common/report/RawReportData;
    .end local v4           #line:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 90
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v7, "CacheManager"

    const-string v8, "clearDateaBefore"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    throw v7

    :catch_5
    move-exception v8

    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 89
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 87
    .end local v4           #line:Ljava/lang/String;
    :catch_7
    move-exception v7

    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #c:Lcom/zdworks/android/common/report/RawReportData;
    .restart local v4       #line:Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public write(Lcom/zdworks/android/common/report/RawReportData;)V
    .locals 3
    .parameter "cache"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zdworks/android/common/report/CacheManager;->ensurePathExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/zdworks/android/common/report/RawReportData;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/report/CacheManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zdworks/android/common/report/RawReportData;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/zdworks/android/common/FileUtils;->writeString(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
