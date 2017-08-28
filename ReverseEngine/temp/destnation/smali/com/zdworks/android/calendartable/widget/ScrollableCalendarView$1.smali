.class Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;
.super Ljava/lang/Object;
.source "ScrollableCalendarView.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 81
    .local v0, page:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->waitForLoading()V

    .line 83
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$000(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;Z)Z

    .line 85
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #setter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mFirstSwitch:Z
    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$002(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;Z)Z

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$100(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$100(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->access$200(Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView$ScrollableCalendarAdapter;->posToDate(I)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, p1, v2, v3}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    .line 93
    :cond_1
    return-void
.end method
