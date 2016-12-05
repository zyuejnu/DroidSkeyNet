.class public abstract Lcom/zdworks/android/zdclock/adapter/BasicAdapter;
.super Landroid/widget/BaseAdapter;
.source "BasicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->notifyDataSetChanged()V

    .line 53
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->notifyDataSetChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 34
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    iget-object v0, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public reload(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->setList(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0}, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method protected setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/BasicAdapter;->mList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/zdworks/android/zdclock/adapter/BasicAdapter;,"Lcom/zdworks/android/zdclock/adapter/BasicAdapter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    return-void
.end method
