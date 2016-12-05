.class public Lcom/iflytek/speech/a;
.super Lcom/iflytek/speech/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/iflytek/speech/a;


# instance fields
.field private d:Lcom/iflytek/msc/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/a;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/speech/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/a;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/a;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/a;->c:Lcom/iflytek/speech/a;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/speech/a;Lcom/iflytek/msc/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    invoke-virtual {v0}, Lcom/iflytek/msc/b/c;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    :cond_0
    return-void
.end method

.method public a([BLjava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/f;)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/iflytek/speech/a$a;-><init>(Lcom/iflytek/speech/a;Lcom/iflytek/speech/f;Z)V

    new-instance v1, Lcom/iflytek/speech/SpeechError;

    const/16 v2, 0x13

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/iflytek/speech/SpeechError;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/a$a;->a(Lcom/iflytek/speech/SpeechError;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/msc/b/c;

    iget-object v1, p0, Lcom/iflytek/speech/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/msc/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    iget-object v0, p0, Lcom/iflytek/speech/a;->d:Lcom/iflytek/msc/b/c;

    new-instance v1, Lcom/iflytek/speech/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p4, v2}, Lcom/iflytek/speech/a$a;-><init>(Lcom/iflytek/speech/a;Lcom/iflytek/speech/f;Z)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/b/c;->a([BLjava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/f;)V

    goto :goto_0
.end method
