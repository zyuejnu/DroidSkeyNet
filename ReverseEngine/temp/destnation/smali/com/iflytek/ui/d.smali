.class public Lcom/iflytek/ui/d;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/iflytek/ui/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/d;->d:Lcom/iflytek/ui/f$a;

    iput-object v0, p0, Lcom/iflytek/ui/d;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/ui/d;->d:Lcom/iflytek/ui/f$a;

    iput-object v0, p0, Lcom/iflytek/ui/d;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Lcom/iflytek/ui/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Lcom/iflytek/ui/f$a;

    invoke-interface {v0}, Lcom/iflytek/ui/f$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/ui/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/d;->d:Lcom/iflytek/ui/f$a;

    return-void
.end method

.method protected b()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn_left"

    invoke-static {v0, v1}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn_right"

    invoke-static {v0, v1}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn"

    invoke-static {v0, v1}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
