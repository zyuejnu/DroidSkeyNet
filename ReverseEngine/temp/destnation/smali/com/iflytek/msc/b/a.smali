.class public Lcom/iflytek/msc/b/a;
.super Lcom/iflytek/msc/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/msc/b/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/iflytek/msc/b/d;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/msc/b/a;->j()Z

    move-result v5

    :goto_0
    iget-object v0, p0, Lcom/iflytek/msc/b/a;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/a;->h:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/b/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/b/a;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/msc/b/a;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/iflytek/msc/b/d$a;->e:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/a;->a(Lcom/iflytek/msc/b/d$a;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-wide v0, p0, Lcom/iflytek/msc/b/a;->d:J

    iget v2, p0, Lcom/iflytek/msc/b/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/b/a;->a(JI)V

    goto :goto_0
.end method
