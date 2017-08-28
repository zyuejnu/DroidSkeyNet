.class public Lcom/iflytek/speech/SynthesizerPlayer;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/iflytek/speech/SynthesizerPlayer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/speech/d;

.field private c:Lcom/iflytek/a/a;

.field private d:Lcom/iflytek/a/c;

.field private f:Lcom/iflytek/speech/SynthesizerPlayerListener;

.field private g:I

.field private h:Z

.field private i:Lcom/iflytek/speech/c;

.field private j:Lcom/iflytek/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    iput v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    iput-boolean v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    new-instance v0, Lcom/iflytek/speech/j;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/j;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->i:Lcom/iflytek/speech/c;

    new-instance v0, Lcom/iflytek/speech/k;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/k;-><init>(Lcom/iflytek/speech/SynthesizerPlayer;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    iput-object p1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/iflytek/speech/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/d;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/speech/SynthesizerPlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/speech/SynthesizerPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    return v0
.end method

.method public static createSynthesizerPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SynthesizerPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/speech/SynthesizerPlayer;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/speech/SynthesizerPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getSynthesizerPlayer()Lcom/iflytek/speech/SynthesizerPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SynthesizerPlayer;->e:Lcom/iflytek/speech/SynthesizerPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/d;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0}, Lcom/iflytek/speech/d;->c()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    invoke-virtual {v0}, Lcom/iflytek/a/c;->g()V

    :cond_2
    return-void
.end method

.method public getDownflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->a(Z)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->a()Lcom/iflytek/a/a$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/a/a$a;->d:Lcom/iflytek/a/a$a;

    goto :goto_0
.end method

.method public getUpflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->b(Z)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->b()Z

    :cond_0
    return-void
.end method

.method public playText(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/SynthesizerPlayerListener;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    iput-object p3, p0, Lcom/iflytek/speech/SynthesizerPlayer;->f:Lcom/iflytek/speech/SynthesizerPlayerListener;

    new-instance v0, Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    const-string v0, "pcm_save_path="

    invoke-static {p2, v0}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/a/c;

    iget-object v2, p0, Lcom/iflytek/speech/SynthesizerPlayer;->a:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/speech/SpeechConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/iflytek/a/c;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/a/c;->a(Ljava/lang/String;)V

    const-string v0, "bft="

    invoke-static {p2, v0, v4}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->g:I

    iput-boolean v4, p0, Lcom/iflytek/speech/SynthesizerPlayer;->h:Z

    invoke-static {}, Lcom/iflytek/msc/a/c;->a()V

    const-string v0, "Tts session begin"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->i:Lcom/iflytek/speech/c;

    invoke-virtual {v0, p1, p2, v1}, Lcom/iflytek/speech/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/c;)Z

    return-void
.end method

.method public replay()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    iget-object v2, p0, Lcom/iflytek/speech/SynthesizerPlayer;->j:Lcom/iflytek/a/a$b;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/a/a;->a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->d:Lcom/iflytek/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->c:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->c()Z

    :cond_0
    return-void
.end method

.method public setBackgroundSound(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public setSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->b(I)V

    return-void
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SynthesizerPlayer;->b:Lcom/iflytek/speech/d;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/d;->c(I)V

    return-void
.end method
