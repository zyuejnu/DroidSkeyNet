.class public Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;
.super Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;
.source "StrikePackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;,
        Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/StrikePackage;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurr:Lcom/zdworks/android/zdclock/model/StrikePackage;

.field private mListener:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;

.field private mProgressViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/zdworks/android/zdclock/model/StrikePackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/StrikePackage;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mProgressViews:Ljava/util/Map;

    .line 29
    invoke-direct {p0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->reloadCurrent()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;)Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;

    return-object v0
.end method

.method private getCanCelBtnOnClickListener(IJ)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "position"
    .parameter "strikePackageId"

    .prologue
    .line 157
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$2;-><init>(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;IJ)V

    return-object v0
.end method

.method private reloadCurrent()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zdworks/android/zdclock/logic/impl/StrikeLogicImpl;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/logic/IStrikeLogic;

    move-result-object v0

    invoke-interface {v0}, Lcom/zdworks/android/zdclock/logic/IStrikeLogic;->getStrikePackage()Lcom/zdworks/android/zdclock/model/StrikePackage;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mCurr:Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 84
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 95
    if-nez p2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;

    invoke-direct {v0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;-><init>()V

    .line 98
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;
    const v2, 0x7f0c00dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->name:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0c0150

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pkgIcon:Landroid/widget/ImageView;

    .line 100
    const v2, 0x7f0c0151

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->current:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0c014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->setting:Landroid/view/View;

    .line 102
    const v2, 0x7f0c0152

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    .line 103
    const v2, 0x7f0c014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 111
    .local v1, sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mCurr:Lcom/zdworks/android/zdclock/model/StrikePackage;

    invoke-virtual {v1, v2}, Lcom/zdworks/android/zdclock/model/StrikePackage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->current:Landroid/widget/TextView;

    const v3, 0x7f0201f5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    :goto_1
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 118
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->setting:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->setting:Landroid/view/View;

    new-instance v3, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$1;-><init>(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;Lcom/zdworks/android/zdclock/model/StrikePackage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_2
    invoke-virtual {p0, p2, p1, p3}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->setNormalBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 152
    return-object p2

    .line 106
    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;
    .end local v1           #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;
    goto :goto_0

    .line 114
    .restart local v1       #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :cond_2
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->current:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->setting:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    const v3, 0x7f08036c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getId()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getCanCelBtnOnClickListener(IJ)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 139
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->getDownloadedSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mProgressViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 144
    :cond_4
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    const v3, 0x7f08036b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$Holder;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->reloadCurrent()V

    .line 89
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public setDownloadFinish(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/StrikePackage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->setDownloading(Z)V

    .line 74
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mProgressViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->notifyDataSetChanged()V

    .line 76
    const-string v0, "set download finish..."

    invoke-static {v0}, Lcom/zdworks/android/zdclock/util/Logger;->i(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setOnClickCancelListener(Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;)V
    .locals 0
    .parameter "onClickCancelListener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter$OnClickCancelListener;

    .line 34
    return-void
.end method

.method public declared-synchronized setPrepareDownloadView(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 42
    .local v0, sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/zdclock/model/StrikePackage;->setDownloading(Z)V

    .line 43
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->notifyDataSetChanged()V

    .line 44
    const-string v1, "set prepare download..."

    invoke-static {v1}, Lcom/zdworks/android/zdclock/util/Logger;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 41
    .end local v0           #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setStartDownloadView(IJ)V
    .locals 3
    .parameter "position"
    .parameter "total"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 54
    .local v0, sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    invoke-virtual {v0, p2, p3}, Lcom/zdworks/android/zdclock/model/StrikePackage;->setSize(J)V

    .line 55
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->updateDownloadProgressView(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 53
    .end local v0           #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateDownloadProgressView(IJ)V
    .locals 4
    .parameter "pos"
    .parameter "downloadedSize"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->mProgressViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 65
    .local v0, pb:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/StrikePackageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/zdclock/model/StrikePackage;

    .line 67
    .local v1, sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    invoke-virtual {v1, p2, p3}, Lcom/zdworks/android/zdclock/model/StrikePackage;->setDownloadedSize(J)V

    .line 68
    long-to-int v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v1           #sp:Lcom/zdworks/android/zdclock/model/StrikePackage;
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local v0           #pb:Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
