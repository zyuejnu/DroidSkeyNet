.class public abstract Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "RoundViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;,"Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter<TT;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final setNormalBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6
    .parameter "convertView"
    .parameter "position"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;,"Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter<TT;>;"
    const v5, 0x7f020076

    .line 20
    if-nez p2, :cond_0

    .line 21
    const v3, 0x7f020077

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_2

    .line 24
    const/high16 v3, 0x4040

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zdworks/android/common/ctrl/OurContext;->getDensity(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .local v2, r:I
    move-object v3, p3

    .line 26
    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 28
    .local v0, dividerHeight:I
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, oneChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->getCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 30
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 32
    :cond_1
    const v3, 0x7f020072

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 35
    .end local v0           #dividerHeight:I
    .end local v1           #oneChild:Landroid/view/View;
    .end local v2           #r:I
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
