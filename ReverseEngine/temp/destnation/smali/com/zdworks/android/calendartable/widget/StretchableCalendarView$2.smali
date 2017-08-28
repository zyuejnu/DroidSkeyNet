.class Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;
.super Ljava/lang/Object;
.source "StretchableCalendarView.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/util/ViewFlow$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    .line 271
    move-object v0, p1

    check-cast v0, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    .line 272
    .local v0, page:Lcom/zdworks/android/calendartable/widget/CalendarTableView;
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->waitForLoading()V

    .line 274
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$100(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(Ljava/util/Calendar;)Z

    .line 276
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    const/4 v2, 0x0

    #setter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mFirstSwitch:Z
    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$102(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;Z)Z

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$200(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mOnPageChange:Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$200(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$2;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mAdapter:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$300(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ScrollableCalendarAdapter;->posToDate(I)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, p1, v2, v3}, Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;->onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V

    .line 284
    :cond_1
    return-void
.end method
