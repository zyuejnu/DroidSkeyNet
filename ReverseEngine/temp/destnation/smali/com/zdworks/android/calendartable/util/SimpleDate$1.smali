.class final Lcom/zdworks/android/calendartable/util/SimpleDate$1;
.super Ljava/lang/Object;
.source "SimpleDate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/util/SimpleDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zdworks/android/calendartable/util/SimpleDate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 2
    .parameter "source"

    .prologue
    .line 18
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(Landroid/os/Parcel;Lcom/zdworks/android/calendartable/util/SimpleDate$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/util/SimpleDate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 1
    .parameter "size"

    .prologue
    .line 23
    new-array v0, p1, [Lcom/zdworks/android/calendartable/util/SimpleDate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/util/SimpleDate$1;->newArray(I)[Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v0

    return-object v0
.end method
