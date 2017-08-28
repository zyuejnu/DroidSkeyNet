.class Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;
.super Ljava/lang/Object;
.source "StretchableCalendarView.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/widget/CalendarTableView$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->generateWeekView()V
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
    .line 199
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 203
    sub-int v0, p5, p3

    .line 204
    .local v0, height:I
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$000(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView$1;->this$0:Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;

    #getter for: Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->mWeekBackground:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;->access$000(Lcom/zdworks/android/calendartable/widget/StretchableCalendarView;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_0
    return-void
.end method
