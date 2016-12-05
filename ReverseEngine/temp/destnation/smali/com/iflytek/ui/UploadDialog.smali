.class public Lcom/iflytek/ui/UploadDialog;
.super Lcom/iflytek/ui/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/ui/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/ui/g;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/ui/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/d;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setContent([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/ui/g;->a([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/ui/UploadDialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/UploadDialog;->a:Lcom/iflytek/ui/d;

    check-cast v0, Lcom/iflytek/ui/g;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/g;->a(Lcom/iflytek/ui/UploadDialogListener;)V

    return-void
.end method
