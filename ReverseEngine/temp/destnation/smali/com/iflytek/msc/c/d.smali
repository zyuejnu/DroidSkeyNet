.class Lcom/iflytek/msc/c/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iflytek/msc/c/c;


# direct methods
.method constructor <init>(Lcom/iflytek/msc/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/c/d;->a:Lcom/iflytek/msc/c/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/c/d;->a:Lcom/iflytek/msc/c/c;

    iget-object v0, v0, Lcom/iflytek/msc/c/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/msc/c/d;->a:Lcom/iflytek/msc/c/c;

    invoke-static {v3}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/msc/c/d;->a:Lcom/iflytek/msc/c/c;

    invoke-static {v4}, Lcom/iflytek/msc/c/c;->b(Lcom/iflytek/msc/c/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/msc/c/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/iflytek/msc/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-----MSPDownLoader init request time:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
