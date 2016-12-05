.class public Lcom/iflytek/ui/RecognizerDialog;
.super Lcom/iflytek/ui/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/ui/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/ui/p;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/ui/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    return-void
.end method


# virtual methods
.method public getComsuingTime()J
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0}, Lcom/iflytek/ui/p;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/p;->a(Z)I

    move-result v0

    return v0
.end method

.method public getUpflowBytes(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/p;->b(Z)I

    move-result v0

    return v0
.end method

.method public setEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/ui/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/ui/RecognizerDialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/ui/RecognizerDialogListener;)V

    return-void
.end method

.method public setRecordInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/p;->a(I)V

    return-void
.end method

.method public setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/RecognizerDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/p;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method
