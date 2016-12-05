.class Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;
.super Landroid/os/AsyncTask;
.source "CalendarTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/CalendarTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Calendar;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Lcom/zdworks/android/calendartable/logic/Weeks;)V
    .locals 0
    .parameter
    .parameter "table"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    .line 627
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 621
    check-cast p1, [Ljava/util/Calendar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->doInBackground([Ljava/util/Calendar;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Calendar;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 631
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 633
    .local v0, date:Ljava/util/Calendar;
    :try_start_0
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;

    invoke-virtual {v2, v0}, Lcom/zdworks/android/calendartable/logic/Weeks;->jumpTo(Ljava/util/Calendar;)V

    .line 634
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    const/4 v3, 0x0

    #setter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    invoke-static {v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$402(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;)Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    :try_end_0
    .catch Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-object v4

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, e:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #setter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    invoke-static {v2, v1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$402(Lcom/zdworks/android/calendartable/widget/CalendarTableView;Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;)Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 621
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mDateOutOfRange:Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$400(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$RefreshTableTask;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->refreshAll()V

    .line 646
    :cond_0
    return-void
.end method
