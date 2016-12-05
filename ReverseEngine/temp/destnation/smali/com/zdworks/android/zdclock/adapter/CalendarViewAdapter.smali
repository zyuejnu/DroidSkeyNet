.class public Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter;
.super Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.source "CalendarViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
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
    .line 29
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/zdclock/model/Clock;>;"
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method private GetTimeFromClock(Lcom/zdworks/android/zdclock/model/Clock;)Ljava/lang/String;
    .locals 6
    .parameter "clock"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/zdworks/android/zdclock/model/Clock;->getOnTime()J

    move-result-wide v0

    .line 85
    .local v0, nTime:J
    const-string v4, "kk:mm"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, str:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zdworks/android/zdclock/model/Clock;->getLoopType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 88
    invoke-static {p1}, Lcom/zdworks/android/zdclock/engine/looper/DayLooperImpl;->GetLoopGapTimeString(Lcom/zdworks/android/zdclock/engine/LoopTimer;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    .line 92
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, strArray:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .end local v3           #strArray:[Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, holder:Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/zdclock/model/Clock;

    .line 38
    .local v0, clock:Lcom/zdworks/android/zdclock/model/Clock;
    if-nez p2, :cond_0

    .line 39
    invoke-super {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
    invoke-direct {v1}, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;-><init>()V

    .line 42
    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
    const v2, 0x7f0c0048

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->tvTime:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f0c0049

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0c004a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->iconDisable:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->tvTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter;->GetTimeFromClock(Lcom/zdworks/android/zdclock/model/Clock;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcom/zdworks/android/zdclock/model/Clock;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    const v2, 0x7f020048

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->iconDisable:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_1
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
    check-cast v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;

    .restart local v1       #holder:Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, v1, Lcom/zdworks/android/zdclock/adapter/CalendarViewAdapter$Holder;->iconDisable:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
