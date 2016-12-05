.class public Lcom/zdworks/android/common/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 31
    const-string v4, ""

    .line 40
    :goto_0
    return-object v4

    .line 33
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 35
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 36
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/common/widget/LockPatternView$Cell;

    .line 38
    .local v0, cell:Lcom/zdworks/android/common/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/zdworks/android/common/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/zdworks/android/common/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    .end local v0           #cell:Lcom/zdworks/android/common/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 17
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 18
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x30

    int-to-byte v0, v4

    .line 19
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/zdworks/android/common/widget/LockPatternView$Cell;->of(II)Lcom/zdworks/android/common/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method
