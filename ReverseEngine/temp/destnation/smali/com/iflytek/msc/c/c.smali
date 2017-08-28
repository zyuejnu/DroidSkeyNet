.class public Lcom/iflytek/msc/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/c/c$c;,
        Lcom/iflytek/msc/c/c$b;,
        Lcom/iflytek/msc/c/c$a;
    }
.end annotation


# static fields
.field private static b:Lcom/iflytek/msc/c/c;

.field private static c:Ljava/lang/String;

.field private static f:Lcom/iflytek/msc/c/c$b;


# instance fields
.field protected a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    const-string v0, ""

    sput-object v0, Lcom/iflytek/msc/c/c;->c:Ljava/lang/String;

    sput-object v1, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/c/c;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/iflytek/msc/c/c;->a:Landroid/content/Context;

    sput-object p4, Lcom/iflytek/msc/c/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/msc/c/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/c/c;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iflytek/msc/c/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/msc/c/c;
    .locals 1

    sget-object v0, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/msc/c/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/msc/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    :goto_0
    sget-object v0, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/msc/c/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/msc/c/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/msc/c/c$b;)V
    .locals 0

    sput-object p0, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/msc/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/msc/c/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/c/c;->a:Landroid/content/Context;

    sput-object p4, Lcom/iflytek/msc/c/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/msc/c/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/c/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/msc/c/d;

    invoke-direct {v0, p0}, Lcom/iflytek/msc/c/d;-><init>(Lcom/iflytek/msc/c/c;)V

    invoke-virtual {v0}, Lcom/iflytek/msc/c/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/msc/c/a;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/msc/c/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/msc/c/c$c;-><init>(Lcom/iflytek/msc/c/c;Lcom/iflytek/msc/c/a;Z)V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0x13

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/msc/c/c$c;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/msc/c/c$b;

    iget-object v1, p0, Lcom/iflytek/msc/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/msc/c/c$b;-><init>(Lcom/iflytek/msc/c/c;Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    sget-object v0, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    new-instance v1, Lcom/iflytek/msc/c/c$c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/iflytek/msc/c/c$c;-><init>(Lcom/iflytek/msc/c/c;Lcom/iflytek/msc/c/a;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/msc/c/c$b;->a(Lcom/iflytek/msc/c/a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "MspCommoner destory,mInstance=null"

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/msc/c/c;->f:Lcom/iflytek/msc/c/c$b;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/c/b;->a()V

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/msc/c/c;->b:Lcom/iflytek/msc/c/c;

    const-string v1, "MspCommoner destory,mInstance=null"

    invoke-static {v1}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/msc/c/c;->a()Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
