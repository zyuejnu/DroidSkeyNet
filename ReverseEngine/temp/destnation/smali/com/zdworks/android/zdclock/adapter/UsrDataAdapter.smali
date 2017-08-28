.class public Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "UsrDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field typeLine:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->typeLine:I

    .line 26
    return-void
.end method


# virtual methods
.method public getTypeLine()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->typeLine:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03009a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    invoke-direct {v0}, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;-><init>()V

    .line 34
    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    const v3, 0x7f0c01d5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;->info:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, item:Ljava/lang/Object;
    iget-object v3, v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget v3, p0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->typeLine:I

    if-lt v3, p1, :cond_1

    .line 44
    iget-object v3, v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 45
    .local v2, tp:Landroid/text/TextPaint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 53
    :goto_1
    return-object p2

    .line 37
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #tp:Landroid/text/TextPaint;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    check-cast v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;
    goto :goto_0

    .line 49
    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    iget-object v3, v0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 50
    .restart local v2       #tp:Landroid/text/TextPaint;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1
.end method

.method public setTypeLine(I)V
    .locals 0
    .parameter "typeLine"

    .prologue
    .line 21
    iput p1, p0, Lcom/zdworks/android/zdclock/adapter/UsrDataAdapter;->typeLine:I

    .line 22
    return-void
.end method
