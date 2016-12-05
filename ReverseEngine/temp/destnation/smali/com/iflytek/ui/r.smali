.class Lcom/iflytek/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/g;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    invoke-virtual {v1}, Lcom/iflytek/ui/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    invoke-static {v0}, Lcom/iflytek/ui/g;->a(Lcom/iflytek/ui/g;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    invoke-static {v0}, Lcom/iflytek/ui/g;->b(Lcom/iflytek/ui/g;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    iget-object v1, v1, Lcom/iflytek/ui/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/r;->a:Lcom/iflytek/ui/g;

    invoke-static {v0}, Lcom/iflytek/ui/g;->b(Lcom/iflytek/ui/g;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method
