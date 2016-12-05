.class public Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "TemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/Template;",
        ">;"
    }
.end annotation


# static fields
.field private static final NEW_TIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIconCachedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->NEW_TIDS:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->mIconCachedMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/zdclock/model/Template;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/Template;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public addTemplate(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/zdworks/android/zdclock/model/Template;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, templates:Ljava/util/List;,"Ljava/util/List<+Lcom/zdworks/android/zdclock/model/Template;>;"
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    if-nez p2, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030075

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;

    invoke-direct {v0}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;-><init>()V

    .line 41
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;
    const v3, 0x7f0c00dd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->name:Landroid/widget/TextView;

    .line 42
    const v3, 0x7f0c0042

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 43
    const v3, 0x7f0c0171

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->newTemplateTip:Landroid/view/View;

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/zdclock/model/Template;

    .line 49
    .local v2, tpl:Lcom/zdworks/android/zdclock/model/Template;
    sget-object v3, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->mIconCachedMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/zdworks/android/zdclock/model/Template;->getTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 50
    .local v1, icon:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zdworks/android/zdclock/model/Template;->getLargeIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    sget-object v3, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->mIconCachedMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/zdworks/android/zdclock/model/Template;->getTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v3, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v3, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zdworks/android/zdclock/model/Template;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v4, v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;->newTemplateTip:Landroid/view/View;

    sget-object v3, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter;->NEW_TIDS:Ljava/util/List;

    invoke-virtual {v2}, Lcom/zdworks/android/zdclock/model/Template;->getTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-object p2

    .line 46
    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;
    .end local v1           #icon:Landroid/graphics/Bitmap;
    .end local v2           #tpl:Lcom/zdworks/android/zdclock/model/Template;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/TemplateAdapter$Holder;
    goto :goto_0

    .line 57
    .restart local v1       #icon:Landroid/graphics/Bitmap;
    .restart local v2       #tpl:Lcom/zdworks/android/zdclock/model/Template;
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method
