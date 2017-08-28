.class Lcom/iflytek/speech/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/b$a;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/b$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/speech/i;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/i;->c()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/iflytek/speech/i;->a([BI)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/i;->b()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/speech/i;->a()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/speech/e;->a:Lcom/iflytek/speech/b$a;

    invoke-static {v0}, Lcom/iflytek/speech/b$a;->a(Lcom/iflytek/speech/b$a;)Lcom/iflytek/speech/i;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_2
    invoke-interface {v2, v0, v1}, Lcom/iflytek/speech/i;->a(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
