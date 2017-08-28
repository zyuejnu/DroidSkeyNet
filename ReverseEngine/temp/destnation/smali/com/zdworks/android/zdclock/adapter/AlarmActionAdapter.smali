.class public Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "AlarmActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/AlarmAction;",
        ">;"
    }
.end annotation


# direct methods
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
            "Lcom/zdworks/android/zdclock/model/AlarmAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/AlarmAction;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    if-nez p2, :cond_0

    .line 23
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 24
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    invoke-direct {v0}, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;-><init>()V

    .line 25
    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    const v1, 0x7f0c0021

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;->content:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    :goto_0
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/zdclock/model/AlarmAction;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/AlarmAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-object p2

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    check-cast v0, Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/AlarmActionAdapter$Holder;
    goto :goto_0
.end method
