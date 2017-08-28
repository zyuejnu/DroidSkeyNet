.class Lcom/iflytek/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/i;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/p;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/ui/p;J)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->d(Lcom/iflytek/ui/p;)V

    const-string v0, "end record"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    const-string v0, "session end"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->h(Lcom/iflytek/ui/p;)Lcom/iflytek/speech/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/speech/b;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-virtual {v1}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->g(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->g(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/ui/RecognizerDialogListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/iflytek/resource/MscSetting;->d:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-virtual {v0}, Lcom/iflytek/ui/p;->a()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0, p1}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/ui/p;Lcom/iflytek/speech/SpeechError;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->e(Lcom/iflytek/ui/p;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v3}, Lcom/iflytek/ui/p;->f(Lcom/iflytek/ui/p;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/ui/p;->b(Lcom/iflytek/ui/p;J)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->e(Lcom/iflytek/ui/p;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(J)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->g(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->g(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/ui/RecognizerDialogListener;->onResults(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string v2, "result arrived:"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/RecognizerResult;

    iget-object v0, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "all result arrived:"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/RecognizerResult;

    iget-object v0, v0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a([BI)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->c(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, p2}, Lcom/iflytek/ui/x;->a(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "onBeginOfSpeech"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/ui/p;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/n;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->b(Lcom/iflytek/ui/p;)V

    :cond_0
    const-string v0, "start record"

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
