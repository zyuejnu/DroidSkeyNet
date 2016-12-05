.class Lcom/zdworks/android/calendartable/util/ViewFlow$2;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/util/ViewFlow$SnapHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/util/ViewFlow;->init()V
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
    .line 145
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/ViewFlow$2;->this$0:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcSnapDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 148
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method
