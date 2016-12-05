.class Lcom/zdworks/android/calendartable/SampleActivity$1;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;


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
    .line 48
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$1;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 1
    .parameter "cell"
    .parameter "info"

    .prologue
    .line 51
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity$1;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/SampleActivity;->access$000(Lcom/zdworks/android/calendartable/SampleActivity;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->showPrevPage()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity$1;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/SampleActivity;->access$000(Lcom/zdworks/android/calendartable/SampleActivity;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->showNextPage()V

    goto :goto_0
.end method
