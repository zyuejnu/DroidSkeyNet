.class Lcom/iflytek/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/p;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/m;->a:Lcom/iflytek/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/ui/m;->a:Lcom/iflytek/ui/p;

    iget-object v0, p0, Lcom/iflytek/ui/m;->a:Lcom/iflytek/ui/p;

    invoke-static {v0}, Lcom/iflytek/ui/p;->l(Lcom/iflytek/ui/p;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/ui/p;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
