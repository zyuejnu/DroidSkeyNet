.class public Lcom/iflytek/msc/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/ConnectivityManager;

.field private b:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/iflytek/msc/a/e;->a:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/iflytek/msc/a/e;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/a/e;->b:Landroid/net/NetworkInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/speech/SpeechError;
        }
    .end annotation

    sget-boolean v0, Lcom/iflytek/resource/MscSetting;->f:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lcom/iflytek/speech/SpeechError;

    const/4 v1, 0x1

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/iflytek/msc/a/e;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
