.class public Lcom/zdworks/android/common/OnStep;
.super Ljava/lang/Object;
.source "OnStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/zdworks/android/common/OnStep;,"Lcom/zdworks/android/common/OnStep<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public step(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/zdworks/android/common/OnStep;,"Lcom/zdworks/android/common/OnStep<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return v0
.end method
