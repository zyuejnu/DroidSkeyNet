.class Lcom/iflytek/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/q;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/q;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

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

    iget-object v1, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

    invoke-virtual {v1}, Lcom/iflytek/ui/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

    invoke-static {v0}, Lcom/iflytek/ui/q;->g(Lcom/iflytek/ui/q;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

    invoke-static {v0}, Lcom/iflytek/ui/q;->h(Lcom/iflytek/ui/q;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

    iget-object v1, v1, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/w;->a:Lcom/iflytek/ui/q;

    invoke-static {v0}, Lcom/iflytek/ui/q;->h(Lcom/iflytek/ui/q;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method
