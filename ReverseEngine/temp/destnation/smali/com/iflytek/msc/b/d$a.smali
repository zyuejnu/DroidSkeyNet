.class final enum Lcom/iflytek/msc/b/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/msc/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/msc/b/d$a;

.field public static final enum b:Lcom/iflytek/msc/b/d$a;

.field public static final enum c:Lcom/iflytek/msc/b/d$a;

.field public static final enum d:Lcom/iflytek/msc/b/d$a;

.field public static final enum e:Lcom/iflytek/msc/b/d$a;

.field public static final enum f:Lcom/iflytek/msc/b/d$a;

.field public static final enum g:Lcom/iflytek/msc/b/d$a;

.field private static final synthetic h:[Lcom/iflytek/msc/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "idle"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "init"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->b:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "start"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->c:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "recording"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "stoprecord"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->e:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "waitresult"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->f:Lcom/iflytek/msc/b/d$a;

    new-instance v0, Lcom/iflytek/msc/b/d$a;

    const-string v1, "exiting"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/msc/b/d$a;

    sget-object v1, Lcom/iflytek/msc/b/d$a;->a:Lcom/iflytek/msc/b/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/msc/b/d$a;->b:Lcom/iflytek/msc/b/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/msc/b/d$a;->c:Lcom/iflytek/msc/b/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/msc/b/d$a;->d:Lcom/iflytek/msc/b/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/msc/b/d$a;->e:Lcom/iflytek/msc/b/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/msc/b/d$a;->f:Lcom/iflytek/msc/b/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/msc/b/d$a;->g:Lcom/iflytek/msc/b/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/msc/b/d$a;->h:[Lcom/iflytek/msc/b/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/msc/b/d$a;
    .locals 1

    const-class v0, Lcom/iflytek/msc/b/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/msc/b/d$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/msc/b/d$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/msc/b/d$a;->h:[Lcom/iflytek/msc/b/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/iflytek/msc/b/d$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
