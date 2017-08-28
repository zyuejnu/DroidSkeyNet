.class public Lcom/zdworks/android/common/update/UpdateCheckInfo;
.super Ljava/lang/Object;
.source "UpdateCheckInfo.java"


# instance fields
.field public final channel:Ljava/lang/String;

.field public final forceUpdate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "channel"
    .parameter "forceUpdate"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateCheckInfo;->channel:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/zdworks/android/common/update/UpdateCheckInfo;->forceUpdate:Z

    .line 10
    return-void
.end method
