.class Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/util/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 855
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #getter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$200(Lcom/zdworks/android/calendartable/util/ViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 856
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 857
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #getter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$300(Lcom/zdworks/android/calendartable/util/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 858
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #getter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$300(Lcom/zdworks/android/calendartable/util/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #setter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v2, v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$402(Lcom/zdworks/android/calendartable/util/ViewFlow;I)I

    .line 864
    .end local v0           #index:I
    :cond_0
    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #calls: Lcom/zdworks/android/calendartable/util/ViewFlow;->resetFocus()V
    invoke-static {v2}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$500(Lcom/zdworks/android/calendartable/util/ViewFlow;)V

    .line 865
    return-void

    .line 857
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method
