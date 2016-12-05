.class public Lcom/iflytek/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/i;


# instance fields
.field private a:Lcom/iflytek/ui/b/c;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/ui/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    iput-object v0, p0, Lcom/iflytek/ui/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    iput-object p1, p0, Lcom/iflytek/ui/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/b/c;->c()Lcom/iflytek/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/iflytek/ui/a/a;->b:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x78

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/b/c;->c()Lcom/iflytek/ui/a/a;

    move-result-object v0

    iget-object v1, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    invoke-virtual {v1}, Lcom/iflytek/ui/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/ui/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/b/c;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/e;->a:Lcom/iflytek/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/b/c;->b()V

    return-void
.end method
