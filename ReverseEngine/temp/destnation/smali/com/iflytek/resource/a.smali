.class public Lcom/iflytek/resource/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/resource/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sput v0, Lcom/iflytek/resource/a;->a:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/iflytek/resource/a;->a:I

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/resource/c;->b:[Ljava/lang/String;

    sget v1, Lcom/iflytek/resource/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/resource/b;->b:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/resource/c;->a:[Ljava/lang/String;

    sget v1, Lcom/iflytek/resource/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/resource/b;->a:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(I)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/resource/c;->c:[[Ljava/lang/String;

    sget v1, Lcom/iflytek/resource/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/resource/b;->c:[[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/resource/c;->d:[Ljava/lang/String;

    sget v1, Lcom/iflytek/resource/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/resource/b;->d:[Ljava/lang/String;

    :cond_0
    if-lez p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/iflytek/resource/a;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/iflytek/resource/c;->e:[Ljava/lang/String;

    sget v1, Lcom/iflytek/resource/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/iflytek/resource/b;->e:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
