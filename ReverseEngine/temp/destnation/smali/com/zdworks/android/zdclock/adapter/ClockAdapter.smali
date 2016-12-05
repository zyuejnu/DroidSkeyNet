.class public Lcom/zdworks/android/zdclock/adapter/ClockAdapter;
.super Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;
.source "ClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter",
        "<",
        "Lcom/zdworks/android/zdclock/model/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private mClockLogic:Lcom/zdworks/android/zdclock/logic/IClockLogic;


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
            "Lcom/zdworks/android/zdclock/model/Clock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/Clock;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    invoke-static {p1}, Lcom/zdworks/android/zdclock/logic/impl/ClockLogicImpl;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/logic/IClockLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->mClockLogic:Lcom/zdworks/android/zdclock/logic/IClockLogic;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "newClockId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/zdclock/model/Clock;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/Clock;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method private setDisabledBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 3
    .parameter "convertView"
    .parameter "position"
    .parameter "parent"

    .prologue
    const v2, 0x7f020074

    .line 94
    if-nez p2, :cond_0

    .line 95
    const v0, 0x7f020075

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 100
    :cond_1
    const v0, 0x7f020073

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setTimeView(Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;J)Ljava/lang/String;
    .locals 13
    .parameter "holder"
    .parameter "time"

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 110
    .local v4, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, timeLt:Ljava/lang/String;
    const/4 v2, 0x0

    .line 112
    .local v2, isShowExtra:Z
    const/4 v8, 0x0

    .line 114
    .local v8, timeRt:Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, isBefore:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, p2, v9

    if-gez v9, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 117
    const-wide/16 v9, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-long/2addr v9, v11

    sub-long/2addr v9, p2

    invoke-static {v9, v10}, Lcom/zdworks/android/common/utils/TimeUtils;->getCountDownDays(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, timeMd:Ljava/lang/String;
    :goto_0
    invoke-static/range {p2 .. p3}, Lcom/zdworks/android/common/utils/TimeUtils;->isToday(J)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08016a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 135
    .local v3, len:I
    const/4 v5, 0x0

    .line 136
    .local v5, size:F
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/zdworks/android/common/ctrl/OurContext;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 138
    .local v0, dens:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v0, v9

    if-lez v9, :cond_8

    .line 139
    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 140
    const/high16 v9, 0x4190

    mul-float v5, v9, v0

    .line 160
    :goto_2
    if-eqz v2, :cond_c

    .line 161
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    const/high16 v10, 0x4240

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 166
    :goto_3
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    if-eqz v2, :cond_d

    .line 169
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeRt:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeLt:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeRt:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeLt:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    :goto_4
    return-object v4

    .line 119
    .end local v0           #dens:F
    .end local v3           #len:I
    .end local v5           #size:F
    .end local v7           #timeMd:Ljava/lang/String;
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/zdworks/android/common/utils/TimeUtils;->getCountDownDays(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #timeMd:Ljava/lang/String;
    goto :goto_0

    .line 124
    :cond_1
    invoke-static/range {p2 .. p3}, Lcom/zdworks/android/common/utils/TimeUtils;->isTomorrow(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08016c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 126
    :cond_2
    invoke-static/range {p2 .. p3}, Lcom/zdworks/android/common/utils/TimeUtils;->isTheDayAfterTomorrow(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08016d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v1, :cond_4

    const v9, 0x7f08035e

    :goto_5
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08035f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 131
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 129
    :cond_4
    const v9, 0x7f08035d

    goto :goto_5

    .line 141
    .restart local v0       #dens:F
    .restart local v3       #len:I
    .restart local v5       #size:F
    :cond_5
    const/4 v9, 0x2

    if-ne v3, v9, :cond_6

    .line 142
    const/high16 v9, 0x4160

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 143
    :cond_6
    const/4 v9, 0x3

    if-ne v3, v9, :cond_7

    .line 144
    const/high16 v9, 0x4140

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 146
    :cond_7
    const/high16 v9, 0x4120

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 149
    :cond_8
    const/4 v9, 0x1

    if-ne v3, v9, :cond_9

    .line 150
    const/high16 v9, 0x41e0

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 151
    :cond_9
    const/4 v9, 0x2

    if-ne v3, v9, :cond_a

    .line 152
    const/high16 v9, 0x41d0

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 153
    :cond_a
    const/4 v9, 0x3

    if-ne v3, v9, :cond_b

    .line 154
    const/high16 v9, 0x41c0

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 156
    :cond_b
    const/high16 v9, 0x41a8

    mul-float v5, v9, v0

    goto/16 :goto_2

    .line 163
    :cond_c
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    const/high16 v10, 0x42b4

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 175
    :cond_d
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeLt:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeRt:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v9, p1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, holder:Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/Clock;

    .line 42
    .local v0, clock:Lcom/zdworks/android/zdclock/model/Clock;
    instance-of v4, v0, Lcom/zdworks/android/zdclock/model/HistoryClock;

    .line 43
    .local v4, isHistory:Z
    if-nez p2, :cond_0

    .line 44
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/RoundViewAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f030016

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    invoke-direct {v1}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;-><init>()V

    .line 46
    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    const v5, 0x7f0c0060

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeMd:Landroid/widget/TextView;

    .line 47
    const v5, 0x7f0c005f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeLt:Landroid/widget/TextView;

    .line 48
    const v5, 0x7f0c0061

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->timeRt:Landroid/widget/TextView;

    .line 49
    const v5, 0x7f0c0064

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 50
    const v5, 0x7f0c0067

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->title:Landroid/widget/TextView;

    .line 51
    const v5, 0x7f0c0043

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->info:Landroid/widget/TextView;

    .line 52
    const v5, 0x7f0c0068

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->disabledView:Landroid/view/View;

    .line 53
    const v5, 0x7f0c0066

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->historyIcon:Landroid/view/View;

    .line 54
    const v5, 0x7f0c0062

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->ringType:Landroid/widget/ImageView;

    .line 55
    const v5, 0x7f0c0065

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->securityView:Landroid/view/View;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, info:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v5, v0

    check-cast v5, Lcom/zdworks/android/zdclock/model/HistoryClock;

    invoke-static {v8, v5}, Lcom/zdworks/android/zdclock/util/ClockUtils;->getHistorySummary(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/HistoryClock;)Ljava/lang/String;

    move-result-object v3

    .line 68
    :goto_1
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->info:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {p0, p2, p1, p3}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->setNormalBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 72
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->disabledView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_2
    iget-object v8, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->securityView:Landroid/view/View;

    iget-object v5, p0, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->mClockLogic:Lcom/zdworks/android/zdclock/logic/IClockLogic;

    invoke-interface {v5, v0}, Lcom/zdworks/android/zdclock/logic/IClockLogic;->isEnabledSecurity(Lcom/zdworks/android/zdclock/model/Clock;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->historyIcon:Landroid/view/View;

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->title:Landroid/widget/TextView;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->ringType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getMediaSettings()Lcom/zdworks/android/zdclock/model/MediaSettings;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zdworks/android/zdclock/util/ClockUtils;->getRingTypeIconResId(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/MediaSettings;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getCreateTime()J

    move-result-wide v5

    invoke-direct {p0, v1, v5, v6}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->setTimeView(Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;J)Ljava/lang/String;

    .line 88
    :goto_5
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/zdworks/android/zdclock/util/IconUtils;->getSmallIconBitmap(Landroid/content/Context;Lcom/zdworks/android/zdclock/model/Clock;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    return-object p2

    .line 58
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #info:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    check-cast v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;

    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
    goto :goto_0

    .line 66
    .restart local v3       #info:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zdworks/android/zdclock/logic/impl/ClockLogicImpl;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/zdclock/logic/IClockLogic;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/zdworks/android/zdclock/logic/IClockLogic;->getClockTimeSummary(Lcom/zdworks/android/zdclock/model/Clock;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 74
    :cond_2
    invoke-direct {p0, p2, p1, p3}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->setDisabledBackground(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 75
    iget-object v5, v1, Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;->disabledView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v5, v7

    .line 78
    goto :goto_3

    :cond_4
    move v6, v7

    .line 79
    goto :goto_4

    .line 85
    :cond_5
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getOnTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getNextAlarmTime()J

    move-result-wide v5

    :goto_6
    invoke-direct {p0, v1, v5, v6}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->setTimeView(Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;J)Ljava/lang/String;

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getOnTime()J

    move-result-wide v5

    goto :goto_6
.end method

.method public update(Lcom/zdworks/android/zdclock/model/Clock;)V
    .locals 4
    .parameter "clock"

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->mClockLogic:Lcom/zdworks/android/zdclock/logic/IClockLogic;

    invoke-virtual {p1}, Lcom/zdworks/android/zdclock/model/Clock;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/zdworks/android/zdclock/logic/IClockLogic;->getClockById(J)Lcom/zdworks/android/zdclock/model/Clock;

    move-result-object v0

    .line 191
    .local v0, c:Lcom/zdworks/android/zdclock/model/Clock;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zdworks/android/zdclock/model/Clock;->setEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/zdworks/android/zdclock/model/Clock;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/ClockAdapter;->update(Lcom/zdworks/android/zdclock/model/Clock;)V

    return-void
.end method
