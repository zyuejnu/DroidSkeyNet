.class Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;
.super Ljava/lang/Object;
.source "WheelPickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/widget/WheelPickerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerScrollRunner"
.end annotation


# instance fields
.field private volatile count:I

.field private volatile distance:I

.field final synthetic this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->distance:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    invoke-virtual {v2}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    invoke-virtual {v3}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 87
    .local v0, middle:I
    iget-object v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    #calls: Lcom/zdworks/android/common/widget/WheelPickerListView;->getClosestItem(I)Landroid/view/View;
    invoke-static {v2, v0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->access$400(Lcom/zdworks/android/common/widget/WheelPickerListView;I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->distance:I

    .line 90
    iget v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->distance:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    #getter for: Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I
    invoke-static {v2}, Lcom/zdworks/android/common/widget/WheelPickerListView;->access$500(Lcom/zdworks/android/common/widget/WheelPickerListView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    iget v3, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->distance:I

    const/16 v4, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/zdworks/android/common/widget/WheelPickerListView;->smoothScrollBy(II)V

    .line 92
    iget v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->count:I

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/zdworks/android/common/widget/WheelPickerListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_0
    const-string v2, "Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I am Fire ~!!!!!!!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Landroid/widget/TextView;

    .end local v1           #target:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-void
.end method
