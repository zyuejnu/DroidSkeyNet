.class public Lcom/iflytek/ui/SynthesizerDialog;
.super Lcom/iflytek/ui/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/ui/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/ui/q;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/ui/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    return-void
.end method


# virtual methods
.method public getDownflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->a(Z)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0}, Lcom/iflytek/ui/q;->e()Lcom/iflytek/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getUpflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->b(Z)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0}, Lcom/iflytek/ui/q;->f()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0}, Lcom/iflytek/ui/q;->g()V

    return-void
.end method

.method public setBackgroundSound(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/ui/SynthesizerDialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->a(Lcom/iflytek/ui/SynthesizerDialogListener;)V

    return-void
.end method

.method public setPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public setSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->b(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/ui/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/SynthesizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/q;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/q;->c(I)V

    return-void
.end method
