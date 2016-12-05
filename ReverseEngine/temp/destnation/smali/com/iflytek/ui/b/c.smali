.class public Lcom/iflytek/ui/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/ui/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    iput-object p1, p0, Lcom/iflytek/ui/b/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/ui/a/c;

    invoke-direct {v0, p2, p0}, Lcom/iflytek/ui/a/c;-><init>([BLcom/iflytek/ui/a/b;)V

    iput-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->d()Lcom/iflytek/ui/a/a;

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->c()V

    :cond_0
    return-void
.end method

.method public c()Lcom/iflytek/ui/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->b()Lcom/iflytek/ui/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->b:Lcom/iflytek/ui/a/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string v0, ""

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/a/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/b/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/speech/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/a/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
