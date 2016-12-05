.class public Lcom/iflytek/speech/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/iflytek/speech/b;

.field private static d:Ljava/lang/String;

.field private static volatile e:Lcom/iflytek/msc/b/d;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/speech/b;->d:Ljava/lang/String;

    sput-object v1, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iflytek/speech/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    :goto_0
    sput-object p2, Lcom/iflytek/speech/b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/iflytek/speech/b;->a(Landroid/content/Context;)V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    sget-object v3, Lcom/iflytek/speech/b;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-----MSC init request time:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/msc/b/d;)V
    .locals 0

    sput-object p0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/b;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/b;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/iflytek/msc/b/d;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "downflow\u0000"

    invoke-static {v0}, Lcom/iflytek/msc/b/b;->c(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/b/d;->l:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/d;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/iflytek/speech/b$a;-><init>(Lcom/iflytek/speech/b;Lcom/iflytek/speech/i;Z)V

    new-instance v2, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/SpeechError;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/msc/b/d;

    iget-object v2, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/msc/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    new-instance v2, Lcom/iflytek/speech/b$a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/iflytek/speech/b$a;-><init>(Lcom/iflytek/speech/b;Lcom/iflytek/speech/i;Z)V

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/iflytek/msc/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/i;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startListening mIsr = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/iflytek/speech/i;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/speech/i;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/iflytek/speech/b$a;-><init>(Lcom/iflytek/speech/b;Lcom/iflytek/speech/i;Z)V

    new-instance v2, Lcom/iflytek/speech/SpeechError;

    const/16 v3, 0x13

    const/16 v4, 0x7530

    invoke-direct {v2, v3, v4}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/SpeechError;)V

    monitor-exit v1

    :goto_0
    return v5

    :cond_0
    new-instance v0, Lcom/iflytek/msc/b/a;

    iget-object v2, p0, Lcom/iflytek/speech/b;->a:Landroid/content/Context;

    invoke-direct {v0, p2, v2}, Lcom/iflytek/msc/b/a;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    new-instance v2, Lcom/iflytek/speech/b$a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/iflytek/speech/b$a;-><init>(Lcom/iflytek/speech/b;Lcom/iflytek/speech/i;Z)V

    invoke-virtual {v0, p3, p4, p5, v2}, Lcom/iflytek/msc/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/i;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "recognizePcm mIsr = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)I
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "upflow\u0000"

    invoke-static {v0}, Lcom/iflytek/msc/b/b;->c(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/b/d;->k:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/d;->c()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/speech/b;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "destory mIsr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/speech/b;->e:Lcom/iflytek/msc/b/d;

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/iflytek/msc/b/b;->b()V

    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/speech/b;->c:Lcom/iflytek/speech/b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->a()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/speech/b;->e()Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
