.class public Lcom/iflytek/ui/f;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/ui/f$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/iflytek/ui/d;

.field private b:Lcom/iflytek/ui/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/f;->a:Lcom/iflytek/ui/d;

    new-instance v0, Lcom/iflytek/ui/a;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/a;-><init>(Lcom/iflytek/ui/f;)V

    iput-object v0, p0, Lcom/iflytek/ui/f;->b:Lcom/iflytek/ui/f$a;

    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/iflytek/ui/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/ui/b/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/f;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0}, Lcom/iflytek/ui/d;->d()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/f;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/iflytek/ui/f;->a:Lcom/iflytek/ui/d;

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/f;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iflytek/ui/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/f;->a:Lcom/iflytek/ui/d;

    iget-object v1, p0, Lcom/iflytek/ui/f;->b:Lcom/iflytek/ui/f$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/d;->a(Lcom/iflytek/ui/f$a;)V

    iget-object v0, p0, Lcom/iflytek/ui/f;->a:Lcom/iflytek/ui/d;

    invoke-virtual {v0}, Lcom/iflytek/ui/d;->c()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
