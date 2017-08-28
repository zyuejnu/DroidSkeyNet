.class public final enum Lcom/iflytek/msc/a/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/msc/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/msc/a/d$a;

.field public static final enum b:Lcom/iflytek/msc/a/d$a;

.field public static final enum c:Lcom/iflytek/msc/a/d$a;

.field public static final enum d:Lcom/iflytek/msc/a/d$a;

.field private static final synthetic e:[Lcom/iflytek/msc/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/msc/a/d$a;

    const-string v1, "China_Mobile"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/a/d$a;->a:Lcom/iflytek/msc/a/d$a;

    new-instance v0, Lcom/iflytek/msc/a/d$a;

    const-string v1, "China_Unicom"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/msc/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/a/d$a;->b:Lcom/iflytek/msc/a/d$a;

    new-instance v0, Lcom/iflytek/msc/a/d$a;

    const-string v1, "China_Telecom"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/msc/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/a/d$a;->c:Lcom/iflytek/msc/a/d$a;

    new-instance v0, Lcom/iflytek/msc/a/d$a;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/msc/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/a/d$a;->d:Lcom/iflytek/msc/a/d$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/msc/a/d$a;

    sget-object v1, Lcom/iflytek/msc/a/d$a;->a:Lcom/iflytek/msc/a/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/msc/a/d$a;->b:Lcom/iflytek/msc/a/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/msc/a/d$a;->c:Lcom/iflytek/msc/a/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/msc/a/d$a;->d:Lcom/iflytek/msc/a/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/msc/a/d$a;->e:[Lcom/iflytek/msc/a/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/msc/a/d$a;
    .locals 1

    const-class v0, Lcom/iflytek/msc/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/msc/a/d$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/msc/a/d$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/msc/a/d$a;->e:[Lcom/iflytek/msc/a/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/iflytek/msc/a/d$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
