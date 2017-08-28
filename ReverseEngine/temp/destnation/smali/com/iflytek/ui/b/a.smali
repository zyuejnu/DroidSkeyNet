.class public Lcom/iflytek/ui/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/msc/c/a;


# static fields
.field private static a:Lcom/iflytek/ui/b/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/ui/b/b;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/ui/b/a;->a:Lcom/iflytek/ui/b/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/ui/b/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/ui/b/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/msc/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/iflytek/ui/b/b;

    invoke-direct {v1, v0}, Lcom/iflytek/ui/b/b;-><init>([B)V

    iput-object v1, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/ui/b/a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v2, v1}, Lcom/iflytek/msc/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/msc/c/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sub=iad,dtt=config,ver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    invoke-virtual {v2}, Lcom/iflytek/ui/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/msc/c/c;->a(Lcom/iflytek/msc/c/a;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/ui/b/b;

    iget-object v1, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/ui/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/ui/b/a;
    .locals 1

    sget-object v0, Lcom/iflytek/ui/b/a;->a:Lcom/iflytek/ui/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/b/a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/ui/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/ui/b/a;->a:Lcom/iflytek/ui/b/a;

    :cond_0
    sget-object v0, Lcom/iflytek/ui/b/a;->a:Lcom/iflytek/ui/b/a;

    return-object v0
.end method

.method public static b()Lcom/iflytek/ui/b/a;
    .locals 1

    sget-object v0, Lcom/iflytek/ui/b/a;->a:Lcom/iflytek/ui/b/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MscConfig Error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    new-instance v0, Lcom/iflytek/ui/b/b;

    invoke-direct {v0, p1}, Lcom/iflytek/ui/b/b;-><init>([B)V

    invoke-virtual {v0}, Lcom/iflytek/ui/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    invoke-virtual {v2}, Lcom/iflytek/ui/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/ui/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/msc/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/msc/a/f;->a([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public c()Lcom/iflytek/ui/b/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/a;->c:Lcom/iflytek/ui/b/b;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
