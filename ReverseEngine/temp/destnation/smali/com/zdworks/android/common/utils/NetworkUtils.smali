.class public Lcom/zdworks/android/common/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 9
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 13
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 14
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 15
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 16
    const/4 v3, 0x1

    .line 21
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 14
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
