.class Lcom/zdworks/android/calendartable/util/ViewFlow$1;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/util/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/util/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #getter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$000(Lcom/zdworks/android/calendartable/util/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$1;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    #getter for: Lcom/zdworks/android/calendartable/util/ViewFlow;->mCurrentScreen:I
    invoke-static {v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->access$100(Lcom/zdworks/android/calendartable/util/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/ViewFlow;->snapToScreen(I)V

    .line 87
    return-void
.end method
