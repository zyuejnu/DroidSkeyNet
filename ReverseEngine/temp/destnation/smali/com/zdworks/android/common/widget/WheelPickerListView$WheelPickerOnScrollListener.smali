.class Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;
.super Ljava/lang/Object;
.source "WheelPickerListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/widget/WheelPickerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WheelPickerOnScrollListener"
.end annotation


# instance fields
.field private final content:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter
    .parameter "content"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->content:Landroid/widget/AbsListView$OnScrollListener;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/AbsListView$OnScrollListener;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->content:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->content:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 140
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    #setter for: Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/zdworks/android/common/widget/WheelPickerListView;->access$502(Lcom/zdworks/android/common/widget/WheelPickerListView;I)I

    .line 133
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    iget-object v1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    #getter for: Lcom/zdworks/android/common/widget/WheelPickerListView;->runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;
    invoke-static {v1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->access$600(Lcom/zdworks/android/common/widget/WheelPickerListView;)Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->post(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->content:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;->content:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 135
    :cond_0
    return-void
.end method
