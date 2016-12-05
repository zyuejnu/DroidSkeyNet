.class public Lcom/iflytek/ui/x;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/iflytek/ui/i;

.field private b:Landroid/os/Handler;

.field private c:Lcom/iflytek/ui/s;

.field private d:Lcom/iflytek/ui/t;

.field private e:Lcom/iflytek/ui/i;

.field private f:Lcom/iflytek/ui/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/ui/j;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/j;-><init>(Lcom/iflytek/ui/x;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/iflytek/ui/j;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/j;-><init>(Lcom/iflytek/ui/x;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/iflytek/ui/j;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/j;-><init>(Lcom/iflytek/ui/x;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/x;)Lcom/iflytek/ui/i;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/ui/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->c:Lcom/iflytek/ui/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/s;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dot_normal"

    invoke-static {v1, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dot_highlight"

    invoke-static {v2, v3}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/ui/s;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->c:Lcom/iflytek/ui/s;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->c:Lcom/iflytek/ui/s;

    invoke-virtual {v0}, Lcom/iflytek/ui/s;->d()V

    iget-object v0, p0, Lcom/iflytek/ui/x;->c:Lcom/iflytek/ui/s;

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/t;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->f:Lcom/iflytek/ui/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/k;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "warning"

    invoke-static {v1, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/k;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->f:Lcom/iflytek/ui/k;

    iget-object v0, p0, Lcom/iflytek/ui/x;->f:Lcom/iflytek/ui/k;

    const/4 v1, 0x2

    const/high16 v2, 0x4190

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/k;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->f:Lcom/iflytek/ui/k;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->f:Lcom/iflytek/ui/k;

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/ui/t;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mic"

    invoke-static {v1, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_0"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_1"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_2"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_3"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_4"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wave_5"

    invoke-static {v4, v5}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/iflytek/ui/t;-><init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/t;->a(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->d:Lcom/iflytek/ui/t;

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    goto :goto_0
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->e:Lcom/iflytek/ui/i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/a;->c()Lcom/iflytek/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/iflytek/ui/e;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/ui/b/b;->b()Lcom/iflytek/ui/b/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/iflytek/ui/e;-><init>(Landroid/content/Context;Lcom/iflytek/ui/b/c;)V

    iput-object v1, p0, Lcom/iflytek/ui/x;->e:Lcom/iflytek/ui/i;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/x;->e:Lcom/iflytek/ui/i;

    invoke-interface {v0}, Lcom/iflytek/ui/i;->d()V

    iget-object v0, p0, Lcom/iflytek/ui/x;->e:Lcom/iflytek/ui/i;

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/ui/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/iflytek/ui/h;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pen"

    invoke-static {v1, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/ui/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/iflytek/ui/x;->e:Lcom/iflytek/ui/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/ui/x;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    invoke-interface {v1, p1, v0}, Lcom/iflytek/ui/i;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/x;->a:Lcom/iflytek/ui/i;

    invoke-interface {v0}, Lcom/iflytek/ui/i;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
