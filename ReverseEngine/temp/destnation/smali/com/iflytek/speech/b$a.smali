.class final Lcom/iflytek/speech/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/speech/b;

.field private b:Lcom/iflytek/speech/i;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/b;Lcom/iflytek/speech/i;Z)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/speech/b$a;->a:Lcom/iflytek/speech/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/b$a;->b:Lcom/iflytek/speech/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/speech/b$a;->c:Z

    new-instance v0, Lcom/iflytek/speech/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/speech/e;-><init>(Lcom/iflytek/speech/b$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/speech/b$a;->b:Lcom/iflytek/speech/i;

    iput-boolean p3, p0, Lcom/iflytek/speech/b$a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->b:Lcom/iflytek/speech/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/iflytek/speech/b$a;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->a:Lcom/iflytek/speech/b;

    invoke-static {}, Lcom/iflytek/speech/b;->g()Lcom/iflytek/msc/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/msc/b/d;->b()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/speech/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :goto_0
    const-string v0, "set mIsr = null"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/msc/b/d;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/speech/b$a;->a:Lcom/iflytek/speech/b;

    iput-object v2, v0, Lcom/iflytek/speech/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a([BI)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/b$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/iflytek/speech/b$a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "set mIsr = null"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/msc/b/d;)V

    :cond_0
    return-void
.end method
