.class Lcom/iflytek/speech/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iflytek/speech/d;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/g;->a:Lcom/iflytek/speech/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/g;->a:Lcom/iflytek/speech/d;

    invoke-static {v0}, Lcom/iflytek/speech/d;->a(Lcom/iflytek/speech/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/speech/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iflytek/speech/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
