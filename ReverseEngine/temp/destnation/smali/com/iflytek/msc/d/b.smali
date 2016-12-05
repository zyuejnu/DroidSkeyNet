.class public Lcom/iflytek/msc/d/b;
.super Ljava/lang/Thread;


# static fields
.field public static b:I

.field public static c:I


# instance fields
.field protected a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/iflytek/msc/d/a;

.field private h:Lcom/iflytek/speech/c;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/iflytek/speech/SpeechError;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/msc/d/b;->b:I

    sput v0, Lcom/iflytek/msc/d/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->a:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/d/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/d/b;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/msc/d/b;->f:Z

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    iput v1, p0, Lcom/iflytek/msc/d/b;->j:I

    iput v1, p0, Lcom/iflytek/msc/d/b;->k:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/d/b;->l:J

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/msc/d/b;->n:I

    iput-object p1, p0, Lcom/iflytek/msc/d/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/msc/d/a;

    invoke-direct {v0}, Lcom/iflytek/msc/d/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

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


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/d/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/c;)V
    .locals 4

    iput-object p1, p0, Lcom/iflytek/msc/d/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/msc/d/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0xd

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/msc/d/b;->start()V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/msc/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/msc/a/e;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->e:Ljava/lang/String;

    const-string v1, "timeout="

    iget v2, p0, Lcom/iflytek/msc/d/b;->n:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/msc/d/b;->n:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/msc/d/b;->l:J

    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/msc/d/b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->e:Ljava/lang/String;

    const-string v3, "gb2312"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/msc/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/msc/d/b;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->d:Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a([B)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/iflytek/msc/d/b;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-boolean v0, p0, Lcom/iflytek/msc/d/b;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    const/16 v2, 0x64

    iget v3, p0, Lcom/iflytek/msc/d/b;->k:I

    iget-object v4, p0, Lcom/iflytek/msc/d/b;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/iflytek/speech/c;->a(Ljava/util/ArrayList;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "upflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->b:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "downflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->c:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechError;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Lcom/iflytek/msc/d/b;->sleep(J)V

    iget-wide v0, p0, Lcom/iflytek/msc/d/b;->l:J

    iget v2, p0, Lcom/iflytek/msc/d/b;->n:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/d/b;->a(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iput-object v0, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "upflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->b:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "downflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->c:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_3

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/a;->c()[B

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    invoke-virtual {v1}, Lcom/iflytek/msc/d/a;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/iflytek/msc/d/b;->j:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/iflytek/msc/d/b;->j:I

    if-eq v1, v2, :cond_8

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget v2, p0, Lcom/iflytek/msc/d/b;->j:I

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/iflytek/msc/d/b;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v4, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iflytek/msc/d/b;->k:I

    iget v6, p0, Lcom/iflytek/msc/d/b;->j:I

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/iflytek/speech/c;->a(Ljava/util/ArrayList;III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iflytek/msc/d/b;->j:I

    iput v2, p0, Lcom/iflytek/msc/d/b;->k:I

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/msc/d/b;->l:J

    iput v1, p0, Lcom/iflytek/msc/d/b;->j:I

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iflytek/msc/a/c;->b()V

    :cond_9
    iget-wide v0, p0, Lcom/iflytek/msc/d/b;->l:J

    iget v2, p0, Lcom/iflytek/msc/d/b;->n:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/d/b;->a(JI)V

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/iflytek/msc/d/b;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/speech/SpeechError;-><init>(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "upflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->b:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "downflow\u0000"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/msc/d/b;->c:I

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechError;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v2, "upflow\u0000"

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/iflytek/msc/d/b;->b:I

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v2, "downflow\u0000"

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/d/a;->b(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/iflytek/msc/d/b;->c:I

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v2, "user abort"

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    :goto_6
    iget-object v1, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->h:Lcom/iflytek/speech/c;

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/c;->a(Lcom/iflytek/speech/SpeechError;)V

    :cond_e
    throw v0

    :cond_f
    iget-object v1, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v3}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    iget-object v1, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/d/b;->m:Lcom/iflytek/speech/SpeechError;

    invoke-virtual {v2}, Lcom/iflytek/speech/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/iflytek/msc/d/b;->g:Lcom/iflytek/msc/d/a;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
