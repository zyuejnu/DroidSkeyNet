.class Lcom/zdworks/android/calendartable/SampleActivity$6;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;


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
    .line 157
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChange(Landroid/view/View;Ljava/util/Calendar;I)V
    .locals 5
    .parameter "page"
    .parameter "focusedDate"
    .parameter "state"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x5

    .line 160
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 162
    .local v0, maxDate:I
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 166
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 168
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 169
    iget-object v1, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/SampleActivity;->access$000(Lcom/zdworks/android/calendartable/SampleActivity;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/calendartable/SampleActivity$6;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->focusOn(Ljava/util/Calendar;)Z

    .line 171
    return-void
.end method
