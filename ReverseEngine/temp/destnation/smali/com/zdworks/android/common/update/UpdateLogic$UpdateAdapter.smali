.class public Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpdateLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/update/UpdateLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zdworks/android/common/update/UpdateLogic;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;>;"
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->context:Landroid/content/Context;

    .line 641
    iput-object p3, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->list:Ljava/util/List;

    .line 642
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    .locals 1
    .parameter "position"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->getItem(I)Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 656
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 661
    if-nez p2, :cond_0

    .line 662
    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 663
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/zdworks/android/common/R$layout;->dialog_list:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 665
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;->getItem(I)Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    move-result-object v2

    .line 666
    .local v2, mode:Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    sget v4, Lcom/zdworks/android/common/R$id;->item_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 667
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    sget v4, Lcom/zdworks/android/common/R$id;->item_title:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 669
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-object p2
.end method
