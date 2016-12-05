.class Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;
.super Ljava/lang/Object;
.source "CalendarTableView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/CalendarTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellOnLongClickListener"
.end annotation


# instance fields
.field private column:I

.field private row:I

.field final synthetic this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/calendartable/widget/CalendarTableView;II)V
    .locals 0
    .parameter
    .parameter "row"
    .parameter "column"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->row:I

    .line 593
    iput p3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->column:I

    .line 594
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$300(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnLongClick:Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$300(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget v2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->row:I

    iget v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnLongClickListener;->column:I

    invoke-virtual {v1, v2, v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCellInfo(II)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;->onLongClick(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)Z

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
