.class public Lcom/zdworks/android/zdclock/adapter/HistoryAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/BasicAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, holder:Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    if-nez p2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    invoke-direct {v1}, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;-><init>()V

    .line 29
    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    const v3, 0x7f0c00c5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->time:Landroid/widget/TextView;

    .line 30
    const v3, 0x7f0c0028

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->note:Landroid/widget/TextView;

    .line 31
    const v3, 0x7f0c0043

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->info:Landroid/widget/TextView;

    .line 32
    const v3, 0x7f0c0042

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 33
    const v3, 0x7f0c00c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->date:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, item:Ljava/lang/Object;
    instance-of v3, v2, Lcom/zdworks/android/zdclock/model/HistoryClock;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 41
    check-cast v0, Lcom/zdworks/android/zdclock/model/HistoryClock;

    .line 42
    .local v0, historyClock:Lcom/zdworks/android/zdclock/model/HistoryClock;
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->time:Landroid/widget/TextView;

    const-string v4, "kk : mm"

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/HistoryClock;->getCreateTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->note:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/HistoryClock;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/zdworks/android/zdclock/util/ClockUtils;->getHistorySummary(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/HistoryClock;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/zdworks/android/zdclock/util/IconUtils;->getSmallIcon(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/Clock;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->note:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    .end local v0           #historyClock:Lcom/zdworks/android/zdclock/model/HistoryClock;
    :goto_1
    return-object p2

    .line 36
    .end local v2           #item:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    check-cast v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;

    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;
    goto :goto_0

    .line 54
    .restart local v2       #item:Ljava/lang/Object;
    :cond_1
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->date:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->note:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v3, v1, Lcom/zdworks/android/zdclock/adapter/HistoryAdapter$Holder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
