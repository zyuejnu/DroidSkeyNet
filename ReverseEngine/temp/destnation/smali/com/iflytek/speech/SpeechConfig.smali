.class public Lcom/iflytek/speech/SpeechConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/SpeechConfig$RATE;
    }
.end annotation


# static fields
.field public static final Rate11K:I = 0x2af8

.field public static final Rate16K:I = 0x3e80

.field public static final Rate22K:I = 0x55f0

.field public static final Rate8K:I = 0x1f40

.field private static a:Lcom/iflytek/speech/SpeechConfig$RATE;

.field private static b:I

.field private static c:Lcom/iflytek/speech/SpeechConfig$RATE;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x32

    sget-object v0, Lcom/iflytek/speech/SpeechConfig$RATE;->rate16k:Lcom/iflytek/speech/SpeechConfig$RATE;

    sput-object v0, Lcom/iflytek/speech/SpeechConfig;->a:Lcom/iflytek/speech/SpeechConfig$RATE;

    const/16 v0, 0x96

    sput v0, Lcom/iflytek/speech/SpeechConfig;->b:I

    sget-object v0, Lcom/iflytek/speech/SpeechConfig$RATE;->rate16k:Lcom/iflytek/speech/SpeechConfig$RATE;

    sput-object v0, Lcom/iflytek/speech/SpeechConfig;->c:Lcom/iflytek/speech/SpeechConfig$RATE;

    const-string v0, "xiaoyan"

    sput-object v0, Lcom/iflytek/speech/SpeechConfig;->d:Ljava/lang/String;

    sput v1, Lcom/iflytek/speech/SpeechConfig;->e:I

    sput v1, Lcom/iflytek/speech/SpeechConfig;->f:I

    sput v1, Lcom/iflytek/speech/SpeechConfig;->g:I

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/SpeechConfig;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechConfig;->a:Lcom/iflytek/speech/SpeechConfig$RATE;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechConfig;->b(Lcom/iflytek/speech/SpeechConfig$RATE;)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/iflytek/speech/SpeechConfig;->b:I

    return-void
.end method

.method public static a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    sput-object p0, Lcom/iflytek/speech/SpeechConfig;->a:Lcom/iflytek/speech/SpeechConfig$RATE;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/iflytek/speech/SpeechConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/iflytek/speech/SpeechConfig;->b:I

    return v0
.end method

.method public static b(Lcom/iflytek/speech/SpeechConfig$RATE;)I
    .locals 2

    const/16 v0, 0x3e80

    sget-object v1, Lcom/iflytek/speech/SpeechConfig$RATE;->rate8k:Lcom/iflytek/speech/SpeechConfig$RATE;

    if-ne p0, v1, :cond_1

    const/16 v0, 0x1f40

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/iflytek/speech/SpeechConfig$RATE;->rate16k:Lcom/iflytek/speech/SpeechConfig$RATE;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/iflytek/speech/SpeechConfig$RATE;->rate11k:Lcom/iflytek/speech/SpeechConfig$RATE;

    if-ne p0, v1, :cond_2

    const/16 v0, 0x2af8

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/iflytek/speech/SpeechConfig$RATE;->rate22k:Lcom/iflytek/speech/SpeechConfig$RATE;

    if-ne p0, v1, :cond_0

    const/16 v0, 0x55f0

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/iflytek/speech/SpeechConfig;->e:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/iflytek/speech/SpeechConfig;->h:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechConfig;->c:Lcom/iflytek/speech/SpeechConfig$RATE;

    invoke-static {v0}, Lcom/iflytek/speech/SpeechConfig;->b(Lcom/iflytek/speech/SpeechConfig$RATE;)I

    move-result v0

    return v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcom/iflytek/speech/SpeechConfig;->f:I

    return-void
.end method

.method public static c(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 0

    sput-object p0, Lcom/iflytek/speech/SpeechConfig;->c:Lcom/iflytek/speech/SpeechConfig$RATE;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcom/iflytek/speech/SpeechConfig;->g:I

    return-void
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/iflytek/speech/SpeechConfig;->f:I

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget v0, Lcom/iflytek/speech/SpeechConfig;->e:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const-string v0, "x-slow"

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/iflytek/speech/SpeechConfig;->e:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    const-string v0, "slow"

    goto :goto_0

    :cond_1
    sget v0, Lcom/iflytek/speech/SpeechConfig;->e:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_2

    const-string v0, "medium"

    goto :goto_0

    :cond_2
    sget v0, Lcom/iflytek/speech/SpeechConfig;->e:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_3

    const-string v0, "fast"

    goto :goto_0

    :cond_3
    const-string v0, "x-fast"

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget v0, Lcom/iflytek/speech/SpeechConfig;->g:I

    if-gtz v0, :cond_0

    const-string v0, "silent"

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/iflytek/speech/SpeechConfig;->g:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const-string v0, "x-soft"

    goto :goto_0

    :cond_1
    sget v0, Lcom/iflytek/speech/SpeechConfig;->g:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_2

    const-string v0, "soft"

    goto :goto_0

    :cond_2
    sget v0, Lcom/iflytek/speech/SpeechConfig;->g:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_3

    const-string v0, "medium"

    goto :goto_0

    :cond_3
    sget v0, Lcom/iflytek/speech/SpeechConfig;->g:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const-string v0, "loud"

    goto :goto_0

    :cond_4
    const-string v0, "x-loud"

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/SpeechConfig;->h:Ljava/lang/String;

    return-object v0
.end method
