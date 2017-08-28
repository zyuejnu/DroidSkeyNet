.class public Lcom/iflytek/msc/b/c;
.super Lcom/iflytek/msc/b/d;


# instance fields
.field private r:[B

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/iflytek/speech/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->r:[B

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/f;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0xd

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-interface {p4, v0}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/iflytek/msc/b/c;->r:[B

    iput-object p2, p0, Lcom/iflytek/msc/b/c;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/b/c;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-virtual {p0}, Lcom/iflytek/msc/b/c;->start()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/e;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->e()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/c;->d:J

    :goto_0
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->r:[B

    iget-object v3, p0, Lcom/iflytek/msc/b/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v2, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->t:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/speech/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_4
    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v0, :cond_d

    const-string v0, "mUploadListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-wide v0, p0, Lcom/iflytek/msc/b/c;->d:J

    iget v2, p0, Lcom/iflytek/msc/b/c;->f:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/b/c;->a(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechError;->printStackTrace()V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v0, :cond_7

    const-string v0, "mUploadListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    goto :goto_1

    :cond_7
    const-string v0, "mUploadListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0xc

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v0, :cond_8

    const-string v0, "mUploadListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    goto :goto_1

    :cond_8
    const-string v0, "mUploadListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0xe

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v0, :cond_9

    const-string v0, "mUploadListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    goto/16 :goto_1

    :cond_9
    const-string v0, "mUploadListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/speech/SpeechError;-><init>(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v0, :cond_a

    const-string v0, "mUploadListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    goto/16 :goto_1

    :cond_a
    const-string v0, "mUploadListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "onSessionEnd"

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->h:Lcom/iflytek/msc/b/b;

    const-string v2, "user abort\u0000"

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v1}, Lcom/iflytek/msc/b/c;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/iflytek/msc/b/c;->g:Z

    if-eqz v1, :cond_c

    const-string v1, "mUploadListener#onCancel"

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    invoke-interface {v1}, Lcom/iflytek/speech/f;->f()V

    :cond_b
    :goto_2
    throw v0

    :cond_c
    const-string v1, "mUploadListener#onEnd"

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v2, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_2

    :cond_d
    const-string v0, "mUploadListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/c;->u:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/msc/b/c;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto/16 :goto_1
.end method
