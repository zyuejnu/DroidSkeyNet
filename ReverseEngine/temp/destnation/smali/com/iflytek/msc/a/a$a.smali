.class public Lcom/iflytek/msc/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/msc/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/msc/a/a;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/iflytek/msc/a/a$a;-><init>(Lcom/iflytek/msc/a/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/msc/a/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->a:Lcom/iflytek/msc/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iflytek/msc/a/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/msc/a/a$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/iflytek/msc/a/a$a;->d:I

    iput-object p5, p0, Lcom/iflytek/msc/a/a$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/msc/a/a$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/msc/a/a$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/msc/a/a$a;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/iflytek/msc/a/a$a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/a/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/a/a$a;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/a/a$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/a/a$a;->h:Ljava/lang/String;

    return-void
.end method
