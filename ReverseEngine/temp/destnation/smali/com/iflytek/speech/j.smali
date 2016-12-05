.class Lcom/iflytek/speech/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/c;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/SynthesizerPlayer;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SynthesizerPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->g(Lcom/iflytek/speech/SynthesizerPlayer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tts_"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onBufferPercent(III)V

    :cond_0
    :try_start_0
    const-string v0, "pcm data arrived:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "percent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",text begindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",endindex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->b(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/a/c;->a(Ljava/util/ArrayList;III)V

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->c(Lcom/iflytek/speech/SynthesizerPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->b(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v1}, Lcom/iflytek/speech/SynthesizerPlayer;->d(Lcom/iflytek/speech/SynthesizerPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/a/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;Z)V

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->e(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v1}, Lcom/iflytek/speech/SynthesizerPlayer;->b(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v2}, Lcom/iflytek/speech/SynthesizerPlayer;->f(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/a/a$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/a/a;->a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->a(Lcom/iflytek/speech/SynthesizerPlayer;)Lcom/iflytek/speech/SynthesizerPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/SynthesizerPlayerListener;->onPlayBegin()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/16 v1, 0xe

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/j;->a(Lcom/iflytek/speech/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/speech/j;->a:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    goto :goto_0
.end method
