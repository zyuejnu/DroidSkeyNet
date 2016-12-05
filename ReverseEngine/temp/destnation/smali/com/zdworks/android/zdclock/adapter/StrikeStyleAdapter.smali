.class public Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "StrikeStyleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$1;,
        Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/StrikePackage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mSelected:Lcom/zdworks/android/zdclock/model/StrikePackage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-static {p1}, Lcom/zdworks/android/zdclock/logic/impl/StrikePackageLogicImpl;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/logic/IStrikePackageLogic;

    move-result-object v0

    invoke-interface {v0}, Lcom/zdworks/android/zdclock/logic/IStrikePackageLogic;->getStrikePackageList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    invoke-static {p1}, Lcom/zdworks/android/zdclock/global/ConfigManager;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/global/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/global/ConfigManager;->getStrikePackage()Lcom/zdworks/android/zdclock/model/StrikePackage;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter;->mSelected:Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    if-nez p2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030070

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    invoke-direct {v0, v4}, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;-><init>(Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$1;)V

    .line 29
    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    const v2, 0x7f0c00dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;->name:Landroid/widget/TextView;

    .line 30
    const v2, 0x7f0c0166

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;->radio:Landroid/widget/RadioButton;

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 36
    .local v1, sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter;->mSelected:Lcom/zdworks/android/zdclock/model/StrikePackage;

    invoke-virtual {v1, v2}, Lcom/zdworks/android/zdclock/model/StrikePackage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;->radio:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    :goto_1
    return-object p2

    .line 33
    .end local v1           #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    check-cast v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;
    goto :goto_0

    .line 40
    .restart local v1       #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :cond_1
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikeStyleAdapter$Holder;->radio:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
