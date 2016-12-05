.class Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;
.super Ljava/lang/Object;
.source "CalendarTableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/CalendarTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellOnClickListener"
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
    .line 563
    iput-object p1, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput p2, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->row:I

    .line 565
    iput p3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->column:I

    .line 566
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 570
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mTable:Lcom/zdworks/android/calendartable/logic/Weeks;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$000(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/logic/Weeks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zdworks/android/calendartable/logic/Weeks;->getFocusPosition()I

    move-result v1

    .line 571
    .local v1, focusPos:I
    iget v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->row:I

    mul-int/lit8 v3, v3, 0x7

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->column:I

    add-int v2, v3, v4

    .line 573
    .local v2, pos:I
    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v3, v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/zdworks/android/calendartable/logic/CellInfo;->inState(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 575
    .local v0, click:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$100(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 576
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    #getter for: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->mOnClick:Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;
    invoke-static {v3}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$100(Lcom/zdworks/android/calendartable/widget/CalendarTableView;)Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    invoke-virtual {v4, v2}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->getCellInfo(I)Lcom/zdworks/android/calendartable/logic/CellInfo;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;->onClick(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V

    .line 585
    :goto_1
    return-void

    .line 573
    .end local v0           #click:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    .restart local v0       #click:Z
    :cond_2
    iget-object v3, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->this$0:Lcom/zdworks/android/calendartable/widget/CalendarTableView;

    iget v4, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->row:I

    iget v5, p0, Lcom/zdworks/android/calendartable/widget/CalendarTableView$CellOnClickListener;->column:I

    #calls: Lcom/zdworks/android/calendartable/widget/CalendarTableView;->focusOn(II)Z
    invoke-static {v3, v4, v5}, Lcom/zdworks/android/calendartable/widget/CalendarTableView;->access$200(Lcom/zdworks/android/calendartable/widget/CalendarTableView;II)Z

    goto :goto_1
.end method
