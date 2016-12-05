.class public Lcom/iflytek/msc/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:[C

.field private d:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/msc/d/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/iflytek/msc/d/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/iflytek/msc/a/b;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/iflytek/msc/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QTTSInit([B)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[initTts]ret:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    sget-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x7530

    invoke-direct {v0, v3, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    return v0
.end method

.method public static b()V
    .locals 2

    sget-object v1, Lcom/iflytek/msc/d/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QTTSFini()I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/d/a;->a:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/iflytek/msc/d/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/iflytek/msc/MSC;->QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsParamValue()[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMSCValue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[QTTSSessionEnd]enter"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QTTSSessionEnd([C[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[QTTSSessionEnd]leavel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QTTSTextPut]enter time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SessionID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-static {v0, p1}, Lcom/iflytek/msc/MSC;->QTTSTextPut([C[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[QTTSTextPut]leavel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0x7530

    invoke-direct {v1, v2, v0}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-static {p1, p2, p3}, Lcom/iflytek/msc/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gb2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QTTSSessionBegin]leave:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0x7530

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/d/a;->c:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsParamValue()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :cond_1
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getParamValue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized c()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [B

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/4 v1, 0x6

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QTTSAudioGet]enter time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->c:[C

    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[QTTSAudioGet]leavel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "value len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " stau="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0x7530

    invoke-direct {v1, v2, v0}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v1

    :cond_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method public d()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/d/a;->c:[C

    invoke-static {v1}, Lcom/iflytek/msc/MSC;->QTTSAudioInfo([C)[C

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "ced="

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/d/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
