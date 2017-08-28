.class Lcom/zdworks/android/common/ExceptionHelper$1;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"

# interfaces
.implements Lcom/zdworks/jvm/common/net/IDataSender$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/common/ExceptionHelper;->sendErrorLogIfExists(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/common/ExceptionHelper;


# direct methods
.method constructor <init>(Lcom/zdworks/android/common/ExceptionHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zdworks/android/common/ExceptionHelper$1;->this$0:Lcom/zdworks/android/common/ExceptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess([[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .parameter "url"

    .prologue
    .line 62
    :try_start_0
    #calls: Lcom/zdworks/android/common/ExceptionHelper;->cleanException()V
    invoke-static {}, Lcom/zdworks/android/common/ExceptionHelper;->access$000()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ExceptionUtils"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
