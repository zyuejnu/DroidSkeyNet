.class Lcom/zdworks/android/calendartable/SampleActivity$4;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/FillCellHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/SampleActivity;->initCalendarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/SampleActivity;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/SampleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$4;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 4
    .parameter "cell"
    .parameter "info"

    .prologue
    const/16 v3, 0x1000

    const/4 v2, 0x1

    .line 85
    sget v1, Lcom/zdworks/android/calendartable/R$id;->cellText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;

    .line 87
    .local v0, elemView:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;
    iget-object v1, p2, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setCalendar(Ljava/util/Calendar;)V

    .line 88
    iget v1, p2, Lcom/zdworks/android/calendartable/logic/CellInfo;->row:I

    sparse-switch v1, :sswitch_data_0

    .line 100
    const/16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setDrawEdges(I)V

    .line 107
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$4;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zdworks/android/calendartable/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setBackgroundColor(I)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setFocusableInTouchMode(Z)V

    .line 112
    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_NO_CURMONTH:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setColorStyles(I)V

    .line 145
    :goto_1
    invoke-virtual {v0, p2}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->makeContent(Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 146
    return-void

    .line 90
    :sswitch_0
    const/16 v1, 0x1110

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setDrawEdges(I)V

    goto :goto_0

    .line 95
    :sswitch_1
    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setDrawEdges(I)V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    sget v1, Lcom/zdworks/android/calendartable/R$drawable;->cell_today_selector:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setBackgroundResource(I)V

    .line 117
    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_TODAY:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setColorStyles(I)V

    .line 118
    invoke-virtual {v0, v3}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->delOneEdge(I)V

    .line 130
    :goto_2
    invoke-virtual {v0, v2}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setFocusableInTouchMode(Z)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p2, v2}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_FOUCUS:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setColorStyles(I)V

    .line 123
    invoke-virtual {v0, v3}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->delOneEdge(I)V

    goto :goto_2

    .line 125
    :cond_3
    sget v1, Lcom/zdworks/android/calendartable/R$drawable;->cell_bg_selector:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setBackgroundResource(I)V

    .line 126
    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_CURMONTH:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setColorStyles(I)V

    goto :goto_2

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
