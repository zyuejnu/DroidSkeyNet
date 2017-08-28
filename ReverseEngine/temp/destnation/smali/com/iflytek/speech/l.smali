.class Lcom/iflytek/speech/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/a$a;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/a$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v0, v0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

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
    iget-object v0, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v1, v0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/speech/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/speech/f;->a(Lcom/iflytek/speech/SpeechError;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v0, v0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->f()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v0, v0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    invoke-interface {v0}, Lcom/iflytek/speech/f;->e()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v0, v0, Lcom/iflytek/speech/a$a;->a:Lcom/iflytek/speech/f;

    iget-object v1, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v1, v1, Lcom/iflytek/speech/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/speech/l;->a:Lcom/iflytek/speech/a$a;

    iget-object v2, v2, Lcom/iflytek/speech/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/speech/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
