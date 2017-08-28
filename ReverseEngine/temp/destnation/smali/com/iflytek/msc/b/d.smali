.class public Lcom/iflytek/msc/b/d;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/iflytek/a/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/b/d$a;
    }
.end annotation


# static fields
.field public static k:I

.field public static l:I

.field private static synthetic t:[I


# instance fields
.field protected a:Landroid/content/Context;

.field protected volatile b:Lcom/iflytek/speech/i;

.field protected volatile c:Lcom/iflytek/msc/b/d$a;

.field protected d:J

.field protected e:J

.field protected f:I

.field protected volatile g:Z

.field protected h:Lcom/iflytek/msc/b/b;

.field protected i:Lcom/iflytek/a/b;

.field protected j:Lcom/iflytek/speech/SpeechError;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected q:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/msc/b/d;->k:I

    sput v0, Lcom/iflytek/msc/b/d;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    iput-wide v3, p0, Lcom/iflytek/msc/b/d;->d:J

    iput-wide v3, p0, Lcom/iflytek/msc/b/d;->e:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/msc/b/d;->f:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/iflytek/msc/b/d;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/b/d;->s:Z

    iput-boolean v2, p0, Lcom/iflytek/msc/b/d;->g:Z

    new-instance v0, Lcom/iflytek/msc/b/b;

    invoke-direct {v0}, Lcom/iflytek/msc/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v2, p0, Lcom/iflytek/msc/b/d;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    iput-wide v3, p0, Lcom/iflytek/msc/b/d;->d:J

    iput-wide v3, p0, Lcom/iflytek/msc/b/d;->e:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/msc/b/d;->f:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/iflytek/msc/b/d;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/b/d;->s:Z

    iput-boolean v2, p0, Lcom/iflytek/msc/b/d;->g:Z

    new-instance v0, Lcom/iflytek/msc/b/b;

    invoke-direct {v0}, Lcom/iflytek/msc/b/b;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v2, p0, Lcom/iflytek/msc/b/d;->g:Z

    return-void
.end method

.method public static a(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/4 v1, 0x2

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/d;->d:J

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/msc/b/d;->a(Z)V

    goto :goto_0
.end method

.method static synthetic o()[I
    .locals 3

    sget-object v0, Lcom/iflytek/msc/b/d;->t:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/b/b$a;->values()[Lcom/iflytek/msc/b/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/msc/b/b$a;->b:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/msc/b/b$a;->a:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iflytek/msc/b/b$a;->c:Lcom/iflytek/msc/b/b$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/iflytek/msc/b/d;->t:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private p()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->h()Lcom/iflytek/msc/b/b$a;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/msc/b/d;->o()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/msc/b/d;->c(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/msc/b/d;->c(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    :cond_0
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

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->j()Z

    move-result v5

    const-string v0, "start  record"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/a/b;

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->a()I

    move-result v1

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    invoke-virtual {v0, p0}, Lcom/iflytek/a/b;->a(Lcom/iflytek/a/b$a;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/d;->e:J

    :goto_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v0}, Lcom/iflytek/speech/i;->b()V

    :cond_2
    sget-object v0, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V

    return-void

    :cond_3
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-wide v0, p0, Lcom/iflytek/msc/b/d;->d:J

    iget v2, p0, Lcom/iflytek/msc/b/d;->f:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/b/d;->a(JI)V

    goto :goto_0
.end method

.method protected declared-synchronized a(Lcom/iflytek/msc/b/d$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/b/d;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->e()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/i;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    iput-object p1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beginRecognize:mEnt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEngineParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mGramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->b:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v1, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v1}, Lcom/iflytek/speech/RecognizerResult;-><init>()V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/iflytek/msc/a/h;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v1, v0, v2}, Lcom/iflytek/msc/a/h;->a(Lcom/iflytek/speech/RecognizerResult;[BLjava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean v2, Lcom/iflytek/msc/a/h;->a:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/iflytek/speech/RecognizerResult;->semanteme:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v3, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/iflytek/msc/b/d;->s:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/speech/i;->a(Ljava/util/ArrayList;Z)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->e()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->g()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v2, v1, v0}, Lcom/iflytek/speech/i;->a(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a([BI)V
    .locals 3

    const/4 v2, 0x0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    new-array v0, p2, [B

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a([B)V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/iflytek/msc/b/b;->a([BI)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VadCheck Time: Vad End Point"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->e()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/iflytek/msc/b/d;->b([BI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VadCheck Time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v3, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, [B

    :goto_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b([BI)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/speech/i;->a([BI)V

    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-boolean v1, Lcom/iflytek/resource/MscSetting;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/iflytek/msc/b/d;->a([BZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endRecognize fail  status is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_1
    sget-object v0, Lcom/iflytek/msc/b/d$a;->e:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/msc/b/d;->g:Z

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->i:Lcom/iflytek/a/b;

    invoke-virtual {v0}, Lcom/iflytek/a/b;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "exit recognizer"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2

    sget-object v0, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->c()Z

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v0}, Lcom/iflytek/speech/i;->a()V

    :cond_0
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v0}, Lcom/iflytek/speech/RecognizerResult;-><init>()V

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v3}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/b/d;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/msc/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/h;->a([BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v1, v0, v2}, Lcom/iflytek/speech/i;->a(Ljava/util/ArrayList;Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->e()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->g()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/h;->b([BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->g()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v1, v0, v2}, Lcom/iflytek/speech/i;->a(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/msc/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/e;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->c:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V

    return-void
.end method

.method protected j()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    const-string v2, "jsorec="

    invoke-static {v1, v2, v0}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/msc/b/d;->s:Z

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    const-string v2, "timeout="

    iget v3, p0, Lcom/iflytek/msc/b/d;->f:I

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/msc/b/d;->f:I

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->m:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x7530

    iput v1, p0, Lcom/iflytek/msc/b/d;->r:I

    :goto_0
    iget-object v1, p0, Lcom/iflytek/msc/b/d;->n:Ljava/lang/String;

    const-string v2, "speech_timeout="

    iget v3, p0, Lcom/iflytek/msc/b/d;->r:I

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/msc/b/d;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSpeechTimeOut="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/msc/b/d;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x1b58

    iput v1, p0, Lcom/iflytek/msc/b/d;->r:I

    goto :goto_0
.end method

.method k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/msc/b/d;->p()V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/msc/b/d;->e:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/iflytek/msc/b/d;->r:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->f()V

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/d;->sleep(J)V

    goto :goto_0
.end method

.method l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/b/d;->q()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/b;->c()V

    sget-object v0, Lcom/iflytek/msc/b/d$a;->f:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V

    goto :goto_0
.end method

.method m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/msc/b/d;->q()V

    invoke-direct {p0}, Lcom/iflytek/msc/b/d;->p()V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->f:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/iflytek/msc/b/d;->sleep(J)V

    :cond_0
    iget-wide v0, p0, Lcom/iflytek/msc/b/d;->d:J

    iget v2, p0, Lcom/iflytek/msc/b/d;->f:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/b/d;->a(JI)V

    return-void
.end method

.method n()V
    .locals 3

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/msc/b/d;->q()V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "upflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/b/d;->k:I

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "downflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/b/d;->l:I

    iget-boolean v0, p0, Lcom/iflytek/msc/b/d;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/msc/b/d;->a(Lcom/iflytek/msc/b/d$a;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/msc/b/d;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "RecognizerListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    invoke-interface {v0}, Lcom/iflytek/speech/i;->c()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->h:Lcom/iflytek/msc/b/b;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "RecognizerListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/b/d;->b:Lcom/iflytek/speech/i;

    iget-object v1, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/i;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1
.end method

.method public run()V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/msc/b/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->n()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->b:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0xe

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->n()V

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->c:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechError;->printStackTrace()V

    iput-object v0, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->n()V

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/speech/SpeechError;-><init>(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/iflytek/msc/b/d;->j:Lcom/iflytek/speech/SpeechError;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->n()V

    goto :goto_1

    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->e:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->l()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->n()V

    throw v0

    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/iflytek/msc/b/d;->c:Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->f:Lcom/iflytek/msc/b/d$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/msc/b/d;->m()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0
.end method
