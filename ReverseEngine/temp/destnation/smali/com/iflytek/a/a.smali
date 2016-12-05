.class public Lcom/iflytek/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/a/a$a;,
        Lcom/iflytek/a/a$b;,
        Lcom/iflytek/a/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:Lcom/iflytek/a/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/a/a$c;

.field private e:Lcom/iflytek/a/a$b;

.field private volatile f:Lcom/iflytek/a/a$a;

.field private g:I

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/a/a;->a:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/iflytek/a/a;->b:Lcom/iflytek/a/c;

    iput-object v0, p0, Lcom/iflytek/a/a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/a/a;->d:Lcom/iflytek/a/a$c;

    iput-object v0, p0, Lcom/iflytek/a/a;->e:Lcom/iflytek/a/a$b;

    sget-object v0, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    iput-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/a/a;->g:I

    new-instance v0, Lcom/iflytek/a/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/a/d;-><init>(Lcom/iflytek/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/a/a;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/a/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/a/a;)Lcom/iflytek/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->e:Lcom/iflytek/a/a$b;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/a/a;I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/a/a;->g:I

    return-void
.end method

.method static synthetic a(Lcom/iflytek/a/a;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/a/a;->a:Landroid/media/AudioTrack;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/a/a;Lcom/iflytek/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/a/a;Lcom/iflytek/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/a/a;->e:Lcom/iflytek/a/a$b;

    return-void
.end method

.method static synthetic b(Lcom/iflytek/a/a;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/a/a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/a/a;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->a:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/a/a;)Lcom/iflytek/a/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->b:Lcom/iflytek/a/c;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/a/a;)Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/a/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    return-object v0
.end method

.method public a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    sget-object v1, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/a/a;->b:Lcom/iflytek/a/c;

    iput-object p2, p0, Lcom/iflytek/a/a;->e:Lcom/iflytek/a/a$b;

    sget-object v0, Lcom/iflytek/a/a$a;->b:Lcom/iflytek/a/a$a;

    iput-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    new-instance v0, Lcom/iflytek/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/a/a$c;-><init>(Lcom/iflytek/a/a;Lcom/iflytek/a/a$c;)V

    iput-object v0, p0, Lcom/iflytek/a/a;->d:Lcom/iflytek/a/a$c;

    iget-object v0, p0, Lcom/iflytek/a/a;->d:Lcom/iflytek/a/a$c;

    invoke-virtual {v0}, Lcom/iflytek/a/a$c;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    sget-object v1, Lcom/iflytek/a/a$a;->b:Lcom/iflytek/a/a$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/a/a$a;->c:Lcom/iflytek/a/a$a;

    iput-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    sget-object v1, Lcom/iflytek/a/a$a;->c:Lcom/iflytek/a/a$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/a/a$a;->b:Lcom/iflytek/a/a$a;

    iput-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    sget-object v0, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    iput-object v0, p0, Lcom/iflytek/a/a;->f:Lcom/iflytek/a/a$a;

    return-void
.end method
