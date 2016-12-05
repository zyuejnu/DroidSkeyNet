.class final Lcom/iflytek/speech/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/speech/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Lcom/iflytek/speech/f;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field final synthetic e:Lcom/iflytek/speech/a;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/a;Lcom/iflytek/speech/f;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iflytek/speech/a$a;->e:Lcom/iflytek/speech/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    iput-object v0, p0, Lcom/iflytek/speech/a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/speech/a$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/speech/a$a;->d:Z

    new-instance v0, Lcom/iflytek/speech/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/speech/l;-><init>(Lcom/iflytek/speech/a$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    iput-boolean p3, p0, Lcom/iflytek/speech/a$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/iflytek/speech/a$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->e:Lcom/iflytek/speech/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/speech/a;->a(Lcom/iflytek/speech/a;Lcom/iflytek/msc/b/c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/iflytek/speech/a$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/speech/a$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/iflytek/speech/a$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a$a;->e:Lcom/iflytek/speech/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/speech/a;->a(Lcom/iflytek/speech/a;Lcom/iflytek/msc/b/c;)V

    :cond_0
    return-void
.end method
