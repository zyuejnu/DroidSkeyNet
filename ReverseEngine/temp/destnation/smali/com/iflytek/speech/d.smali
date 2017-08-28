.class public Lcom/iflytek/speech/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/speech/d;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/msc/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/d;->a:Lcom/iflytek/speech/d;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/speech/d;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/d;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    iput-object p1, p0, Lcom/iflytek/speech/d;->b:Landroid/content/Context;

    sput-object p2, Lcom/iflytek/speech/d;->d:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/speech/g;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/g;-><init>(Lcom/iflytek/speech/d;)V

    invoke-virtual {v0}, Lcom/iflytek/speech/g;->start()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/d;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/d;->a:Lcom/iflytek/speech/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/d;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/d;->a:Lcom/iflytek/speech/d;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/d;->a:Lcom/iflytek/speech/d;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/d;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "downflow\u0000"

    invoke-static {v0}, Lcom/iflytek/msc/d/a;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/d/b;->c:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->c(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->c(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->a(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/c;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/iflytek/speech/d$a;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/speech/d$a;-><init>(Lcom/iflytek/speech/d;Lcom/iflytek/speech/c;)V

    iget-object v2, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    invoke-virtual {v2}, Lcom/iflytek/msc/d/b;->a()V

    :cond_2
    new-instance v2, Lcom/iflytek/msc/d/b;

    iget-object v3, p0, Lcom/iflytek/speech/d;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/msc/d/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    iget-object v2, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    invoke-virtual {v2, p1, p2, v1}, Lcom/iflytek/msc/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/c;)V

    invoke-static {}, Lcom/iflytek/msc/d/a;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "upflow\u0000"

    invoke-static {v0}, Lcom/iflytek/msc/d/a;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/msc/d/b;->b:I

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/d/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->b(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;

    invoke-virtual {v0}, Lcom/iflytek/msc/d/b;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/d;->c:Lcom/iflytek/msc/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/speech/SpeechConfig;->d(I)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/speech/d;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
