.class Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;
.super Landroid/os/AsyncTask;
.source "CircleFlowIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _run:Z

.field final synthetic this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

.field private timer:I


# direct methods
.method private constructor <init>(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->timer:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->_run:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;-><init>(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->_run:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 353
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->_run:Z

    if-eqz v1, :cond_1

    .line 356
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    iget v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->timer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->timer:I

    .line 361
    iget v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->timer:I

    iget-object v2, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    #getter for: Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I
    invoke-static {v2}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->access$200(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->_run:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 341
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->access$302(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 377
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    #getter for: Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->access$300(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    iget-object v1, v1, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->this$0:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;

    #getter for: Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->access$300(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    return-void
.end method

.method public resetTimer()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->timer:I

    .line 349
    return-void
.end method
