.class public Lcom/iflytek/ui/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/i;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:[Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/iflytek/ui/t;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/iflytek/ui/t;->a(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(I)V
    .locals 2

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/iflytek/ui/t;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

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

    iget-object v0, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/t;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/t;->b:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/t;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/t;->d:Landroid/graphics/Rect;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
