.class Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;
.super Ljava/lang/Object;
.source "StretchableCalendarView.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/util/ViewFlow$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->setScrollListener(Lcom/zdworks/android/calendartable/callback/ScrollListener;)V
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
    .line 701
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollFailed(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1
    .parameter "currentPage"
    .parameter "destPage"
    .parameter "isNext"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$600(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$600(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zdworks/android/calendartable/callback/ScrollListener;->onScrollFailed(Landroid/view/View;Landroid/view/View;)V

    .line 736
    :cond_0
    return-void
.end method

.method public onScrollStart(Landroid/view/View;Landroid/view/View;Z)Z
    .locals 7
    .parameter "currentPage"
    .parameter "destPage"
    .parameter "isNext"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 707
    move-object v3, p2

    check-cast v3, Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getDateOutOfRangeException()Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    move-result-object v0

    .line 709
    .local v0, dateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    if-eqz v0, :cond_4

    .line 710
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;->getState()I

    move-result v2

    .line 711
    .local v2, state:I
    if-nez v2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-ne v2, v5, :cond_2

    if-nez p3, :cond_2

    :cond_1
    move v1, v5

    .line 713
    .local v1, forbidScroll:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 714
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$500(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    move-result-object v3

    if-nez v3, :cond_3

    .line 715
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-virtual {v5}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zdworks/android/calendartable/R$string;->wrongdatesettixing:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zdworks/android/calendartable/util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    move v3, v4

    .line 727
    .end local v1           #forbidScroll:Z
    .end local v2           #state:I
    :goto_2
    return v3

    .restart local v2       #state:I
    :cond_2
    move v1, v4

    .line 711
    goto :goto_0

    .line 718
    .restart local v1       #forbidScroll:Z
    :cond_3
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExceptionHandler:Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$500(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/zdworks/android/calendartable/callback/CalendarExceptionHandler;->handleDateOutOfRange(Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;)V

    goto :goto_1

    .line 724
    .end local v1           #forbidScroll:Z
    .end local v2           #state:I
    :cond_4
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$600(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 725
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$3;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mScrollListener:Lcom/zdworks/android/calendartable/callback/ScrollListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$600(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/ScrollListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/zdworks/android/calendartable/callback/ScrollListener;->onScrollStart(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v5

    .line 727
    goto :goto_2
.end method
