.class Lcom/zdworks/android/common/update/UpdateLogic$1;
.super Ljava/lang/Object;
.source "UpdateLogic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/update/UpdateLogic;->updateByChoose(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/update/UpdateLogic;

.field final synthetic val$cxt:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$updateUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    iput-object p2, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$cxt:Landroid/content/Context;

    iput-object p3, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$updateUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 249
    if-nez p2, :cond_2

    .line 250
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    #getter for: Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;
    invoke-static {v0}, Lcom/zdworks/android/common/update/UpdateLogic;->access$000(Lcom/zdworks/android/common/update/UpdateLogic;)Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 251
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    #getter for: Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;
    invoke-static {v0}, Lcom/zdworks/android/common/update/UpdateLogic;->access$000(Lcom/zdworks/android/common/update/UpdateLogic;)Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 252
    invoke-static {}, Lcom/zdworks/android/common/update/UpdateLogic;->access$100()Lcom/zdworks/android/common/update/IUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/zdworks/android/common/update/UpdateLogic;->access$100()Lcom/zdworks/android/common/update/IUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    invoke-virtual {v1}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$cxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$cxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->val$updateUrl:Ljava/lang/String;

    #calls: Lcom/zdworks/android/common/update/UpdateLogic;->updateFromSrv(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zdworks/android/common/update/UpdateLogic;->access$200(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/zdworks/android/common/update/UpdateLogic;->access$100()Lcom/zdworks/android/common/update/IUpdate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zdworks/android/common/update/UpdateLogic;->access$100()Lcom/zdworks/android/common/update/IUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic$1;->this$0:Lcom/zdworks/android/common/update/UpdateLogic;

    invoke-virtual {v1}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateStart(Lcom/zdworks/android/common/update/UpdateModel;)V

    goto :goto_0
.end method
