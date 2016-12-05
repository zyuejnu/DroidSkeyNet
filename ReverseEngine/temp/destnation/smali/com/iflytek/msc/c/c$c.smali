.class final Lcom/iflytek/msc/c/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/msc/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/msc/c/c;

.field private b:Lcom/iflytek/msc/c/a;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/msc/c/c;Lcom/iflytek/msc/c/a;Z)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/msc/c/c$c;->a:Lcom/iflytek/msc/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/c/c$c;->b:Lcom/iflytek/msc/c/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/c/c$c;->c:Z

    new-instance v0, Lcom/iflytek/msc/c/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/msc/c/e;-><init>(Lcom/iflytek/msc/c/c$c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/msc/c/c$c;->b:Lcom/iflytek/msc/c/a;

    iput-boolean p3, p0, Lcom/iflytek/msc/c/c$c;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/msc/c/c$c;)Lcom/iflytek/msc/c/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/c/c$c;->b:Lcom/iflytek/msc/c/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c$b;)V

    iget-object v0, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/msc/c/c$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/c$b;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/msc/c/c$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
