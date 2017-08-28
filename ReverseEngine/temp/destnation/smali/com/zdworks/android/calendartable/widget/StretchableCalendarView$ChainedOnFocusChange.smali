.class Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;
.super Ljava/lang/Object;
.source "StretchableCalendarView.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainedOnFocusChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;-><init>(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 1
    .parameter "focusedCell"
    .parameter "info"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->refreshWeekView()V

    .line 847
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$ChainedOnFocusChange;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mExternOnFocusChange:Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$700(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;->onFocusChange(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 850
    :cond_0
    return-void
.end method
