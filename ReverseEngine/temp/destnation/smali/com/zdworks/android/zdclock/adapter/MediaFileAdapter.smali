.class public Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;
.super Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;,
        Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;

.field protected mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

.field protected mSelectedPath:Ljava/lang/String;

.field protected mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "selectedPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/zdclock/model/MediaFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/MediaFile;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    .line 26
    iput-object p3, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;)Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;

    return-object v0
.end method

.method private setSelectedItemView(ILcom/zdworks/android/zdclock/model/MediaFile;)V
    .locals 1
    .parameter "position"
    .parameter "playingItem"

    .prologue
    .line 147
    if-ltz p1, :cond_1

    .line 148
    iput p1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    .line 149
    iput-object p2, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/MediaFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPath:Ljava/lang/String;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_1
    return-void
.end method

.method private setUseAction(Landroid/view/View;I)V
    .locals 1
    .parameter "targetView"
    .parameter "position"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$1;-><init>(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/zdclock/model/MediaFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/MediaFile;>;"
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setList(Ljava/util/List;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, holder:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;
    if-nez p2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;
    invoke-direct {v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;-><init>()V

    .line 35
    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;
    const v2, 0x7f0c00dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->name:Landroid/widget/TextView;

    .line 36
    const v2, 0x7f0c00de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->size:Landroid/widget/TextView;

    .line 37
    const v2, 0x7f0c0042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 38
    const v2, 0x7f0c00dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->uses:Landroid/view/View;

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/zdclock/model/MediaFile;

    .line 45
    .local v1, mf:Lcom/zdworks/android/zdclock/model/MediaFile;
    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/MediaFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iput p1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    .line 48
    :cond_0
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zdworks/android/zdclock/model/MediaFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020139

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v2, v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->uses:Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setUseAction(Landroid/view/View;I)V

    .line 52
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setSelectedView(Landroid/view/View;ILandroid/view/ViewGroup;Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;)V

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setPlayingView(ILcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;)V

    .line 54
    return-object p2

    .line 41
    .end local v1           #mf:Lcom/zdworks/android/zdclock/model/MediaFile;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;
    check-cast v0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;

    .restart local v0       #holder:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;
    goto :goto_0
.end method

.method public removeItem(Lcom/zdworks/android/zdclock/model/MediaFile;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    invoke-virtual {v0, p1, p2}, Lcom/zdworks/android/zdclock/model/MediaFile;->setDuration(J)V

    .line 134
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public setOnItemButtonClickListener(Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mListener:Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$OnItemButtonClickListener;

    .line 185
    return-void
.end method

.method public setPlayFinishView()V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setSelectedItemView(ILcom/zdworks/android/zdclock/model/MediaFile;)V

    .line 79
    return-void
.end method

.method public setPlayingPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/MediaFile;

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setSelectedItemView(ILcom/zdworks/android/zdclock/model/MediaFile;)V

    .line 144
    return-void
.end method

.method protected setPlayingView(ILcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;)V
    .locals 9
    .parameter "position"
    .parameter "holder"

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 108
    iget v5, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 109
    .local v1, isPlaying:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, info:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    invoke-virtual {v5}, Lcom/zdworks/android/zdclock/model/MediaFile;->getSize()J

    move-result-wide v2

    .line 112
    .local v2, size:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 113
    invoke-static {v2, v3}, Lcom/zdworks/android/zdclock/util/Utils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mPlayingItem:Lcom/zdworks/android/zdclock/model/MediaFile;

    invoke-virtual {v6}, Lcom/zdworks/android/zdclock/model/MediaFile;->getDuration()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/zdworks/android/common/utils/TimeUtils;->getTimeDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 119
    iget-object v5, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->size:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->size:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_1
    iget-object v4, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020161

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    .end local v0           #info:Ljava/lang/StringBuilder;
    .end local v2           #size:J
    :goto_2
    return-void

    .end local v1           #isPlaying:Z
    :cond_1
    move v1, v4

    .line 108
    goto :goto_0

    .line 122
    .restart local v0       #info:Ljava/lang/StringBuilder;
    .restart local v1       #isPlaying:Z
    .restart local v2       #size:J
    :cond_2
    iget-object v4, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->size:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 126
    .end local v0           #info:Ljava/lang/StringBuilder;
    .end local v2           #size:J
    :cond_3
    iget-object v4, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020139

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v4, p2, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->size:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setSelectedItemView(ILcom/zdworks/android/zdclock/model/MediaFile;)V

    .line 163
    return-void
.end method

.method protected setSelectedView(Landroid/view/View;ILandroid/view/ViewGroup;Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;)V
    .locals 4
    .parameter "convertView"
    .parameter "position"
    .parameter "parent"
    .parameter "holder"

    .prologue
    const v3, 0x7f020181

    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->mSelectedPosition:I

    if-ne p2, v0, :cond_4

    .line 89
    if-nez p2, :cond_1

    .line 90
    const v0, 0x7f020182

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    :goto_1
    iget-object v0, p4, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->uses:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->getCount()I

    move-result v0

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 95
    :cond_2
    const v0, 0x7f020180

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object v0, p4, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter$Holder;->uses:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/zdworks/android/zdclock/adapter/MediaFileAdapter;->setNormalBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V

    goto :goto_0
.end method
