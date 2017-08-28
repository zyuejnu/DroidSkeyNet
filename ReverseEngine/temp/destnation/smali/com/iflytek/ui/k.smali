.class public Lcom/iflytek/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/ui/i;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 12

    iget-object v0, p0, Lcom/iflytek/ui/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f266666

    mul-float v5, v0, v1

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v6, v0, [F

    iget-object v0, p0, Lcom/iflytek/ui/k;->c:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    :goto_0
    if-lt v8, v11, :cond_2

    iget-object v1, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    iget-object v3, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    invoke-static {}, Lcom/iflytek/ui/u;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v2, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    int-to-float v2, v8

    mul-float/2addr v2, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/k;->c:Ljava/lang/String;

    const-string v1, "\n"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_0

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v3, v2, v11

    iget-object v6, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/2addr v2, v11

    add-float/2addr v5, v10

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    aget-object v1, v10, v8

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    move v7, v0

    :goto_2
    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget v0, v6, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_4

    const/4 v0, 0x0

    aget v0, v6, v0

    :goto_3
    add-int/2addr v2, v4

    if-lt v2, v3, :cond_3

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    :cond_3
    move v7, v0

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/k;->c:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/iflytek/ui/k;->a:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/iflytek/ui/k;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/k;->c:Ljava/lang/String;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
