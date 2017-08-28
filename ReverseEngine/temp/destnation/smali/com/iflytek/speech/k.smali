.class Lcom/iflytek/speech/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/a/a$b;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SynthesizerPlayer;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SynthesizerPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onPlayPaused()V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onPlayPercent(III)V

    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->h(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->h(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/speech/d;->c()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onPlayResumed()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/k;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    return-void
.end method
