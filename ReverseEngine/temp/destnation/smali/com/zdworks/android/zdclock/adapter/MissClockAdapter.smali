.class public Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "MissClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$1;,
        Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/Clock;",
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
            "Lcom/zdworks/android/zdclock/model/Clock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/Clock;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, holder:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 27
    new-instance v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    invoke-direct {v1, p0, v4}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;-><init>(Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$1;)V

    .line 28
    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    const v2, 0x7f0c0067

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->title:Landroid/widget/TextView;

    .line 29
    const v2, 0x7f0c00e2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->timeStr:Landroid/widget/TextView;

    .line 30
    const v2, 0x7f0c0042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/Clock;

    .line 36
    .local v0, clock:Lcom/zdworks/android/zdclock/model/Clock;
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->timeStr:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zdworks/android/zdclock/logic/impl/ClockLogicImpl;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/logic/IClockLogic;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/zdworks/android/zdclock/logic/IClockLogic;->getClockTimeSummary(Lcom/zdworks/android/zdclock/model/Clock;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/zdworks/android/zdclock/util/IconUtils;->getSmallIconBitmap(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/Clock;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    return-object p2

    .line 33
    .end local v0           #clock:Lcom/zdworks/android/zdclock/model/Clock;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    check-cast v1, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;

    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
    goto :goto_0
.end method
