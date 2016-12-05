.class public Lcom/zdworks/android/common/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# static fields
.field private static final READ_LOG_CMD:Ljava/lang/String; = "logcat -d -v time -s AndroidRuntime:e"

.field private static final TAG:Ljava/lang/String; = "ExceptionUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExceptionPattern:Ljava/util/regex/Pattern;

.field private final mPath:Ljava/lang/String;

.field private final mSid:Ljava/lang/String;

.field private final packageNameCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "sid"
    .parameter "path"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/zdworks/android/common/ExceptionHelper;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/zdworks/android/common/ExceptionHelper;->mSid:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/zdworks/android/common/ExceptionHelper;->mPath:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/ExceptionHelper;->packageNameCache:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/ExceptionHelper;->packageNameCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*(.*:\\d*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/ExceptionHelper;->mExceptionPattern:Ljava/util/regex/Pattern;

    .line 33
    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/zdworks/android/common/ExceptionHelper;->cleanException()V

    return-void
.end method

.method private static cleanException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -c"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 127
    .local v0, process:Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 133
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    throw v1
.end method

.method private getErrorReportData(Landroid/content/Context;)[[Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, exceptionText:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/zdworks/android/common/ExceptionHelper;->getExceptionText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    check-cast v3, [[Ljava/lang/String;

    .line 85
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ExceptionUtils"

    const-string v5, "error on getExceptionText"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    check-cast v3, [[Ljava/lang/String;

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-static {p1}, Lcom/zdworks/android/common/ZDWorkdsUUID;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, uuid:Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, "-1"

    .line 85
    :cond_1
    const/4 v3, 0x7

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "s"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/zdworks/android/common/ExceptionHelper;->mSid:Ljava/lang/String;

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "uuid"

    aput-object v5, v4, v7

    invoke-static {p1}, Lcom/zdworks/android/common/ZDWorkdsUUID;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "ver"

    aput-object v5, v4, v7

    invoke-static {p1}, Lcom/zdworks/android/common/Env;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v4, v3, v9

    const/4 v4, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rom"

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "api"

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "model"

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "content"

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method private getExceptionText()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, process:Ljava/lang/Process;
    const/4 v0, 0x0

    .line 104
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "logcat -d -v time -s AndroidRuntime:e"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 106
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x100

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v3, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v5

    .line 113
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/zdworks/android/common/ExceptionHelper;->mExceptionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 119
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_4
    :goto_2
    return-object v5

    .line 116
    :cond_5
    const/4 v5, 0x0

    .line 119
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_6
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 119
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #str:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zdworks/android/common/ExceptionHelper;
    .locals 1
    .parameter "context"
    .parameter "sid"
    .parameter "path"

    .prologue
    .line 42
    new-instance v0, Lcom/zdworks/android/common/ExceptionHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/zdworks/android/common/ExceptionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public sendErrorLogIfExists(Z)V
    .locals 5
    .parameter "isCleanLogOnSuccess"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v4, p0, Lcom/zdworks/android/common/ExceptionHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/zdworks/android/common/ExceptionHelper;->getErrorReportData(Landroid/content/Context;)[[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, data:[[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/zdworks/android/common/ExceptionHelper$1;

    invoke-direct {v1, p0}, Lcom/zdworks/android/common/ExceptionHelper$1;-><init>(Lcom/zdworks/android/common/ExceptionHelper;)V

    .line 68
    .local v1, onSuccess:Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;
    :goto_1
    iget-object v4, p0, Lcom/zdworks/android/common/ExceptionHelper;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/zdworks/jvm/common/net/HttpDataSender;->getInstance(Ljava/lang/String;)Lcom/zdworks/jvm/common/net/HttpDataSender;

    move-result-object v2

    .line 69
    .local v2, sender:Lcom/zdworks/jvm/common/net/HttpDataSender;
    invoke-virtual {v2, v0, v1, v3}, Lcom/zdworks/jvm/common/net/HttpDataSender;->post([[Ljava/lang/String;Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;Lcom/zdworks/jvm/common/net/IDataSender$OnFailListener;)V

    goto :goto_0

    .end local v1           #onSuccess:Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;
    .end local v2           #sender:Lcom/zdworks/jvm/common/net/HttpDataSender;
    :cond_1
    move-object v1, v3

    .line 58
    goto :goto_1
.end method
