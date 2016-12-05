.class public Lcom/iflytek/speech/SpeechError;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/SpeechError$a;
    }
.end annotation


# static fields
.field public static final ERROR_AUDIO_RECORD:I = 0x9

.field public static final ERROR_CLIENT:I = 0x8

.field public static final ERROR_EMPTY_UTTERANCE:I = 0xd

.field public static final ERROR_FILE_ACCESS:I = 0xe

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x4

.field public static final ERROR_INVALID_DATA:I = 0x14

.field public static final ERROR_INVALID_ENCODING:I = 0xc

.field public static final ERROR_INVALID_GRAMMAR:I = 0x15

.field public static final ERROR_INVALID_LOCAL_RESOURCE:I = 0x16

.field public static final ERROR_INVALID_PARAM:I = 0x7

.field public static final ERROR_INVALID_RESULT:I = 0x5

.field public static final ERROR_IN_USE:I = 0x13

.field public static final ERROR_LOGIN:I = 0x12

.field public static final ERROR_MEMORY_WRANING:I = 0x10

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x2

.field public static final ERROR_NET_EXPECTION:I = 0x3

.field public static final ERROR_NO_MATCH:I = 0xa

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_PLAY_MEDIA:I = 0xf

.field public static final ERROR_SERVER_CONNECT:I = 0x6

.field public static final ERROR_SPEECH_TIMEOUT:I = 0xb

.field public static final ERROR_TEXT_OVERFLOW:I = 0x11

.field public static final UNKNOWN:I = 0x7530

.field private static final serialVersionUID:J = 0x3d8a3d5cb4c84b7cL


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/16 v2, 0x7530

    const/16 v1, 0x2786

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/speech/SpeechError;->a:I

    iput p2, p0, Lcom/iflytek/speech/SpeechError;->b:I

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-ne v0, v2, :cond_0

    add-int/lit16 v0, p1, 0x4e20

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    :cond_0
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    invoke-static {v0}, Lcom/iflytek/resource/a;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    return-void

    :cond_3
    const/16 v0, 0x277a

    iget v1, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-eq v0, v1, :cond_4

    const/16 v0, 0x277b

    iget v1, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-eq v0, v1, :cond_4

    const/16 v0, 0x278c

    iget v1, p0, Lcom/iflytek/speech/SpeechError;->b:I

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x27d8

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x283c

    if-ge v0, v1, :cond_6

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2785

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2775

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v0, 0x10

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2781

    if-ne v0, v1, :cond_9

    const/16 v0, 0x11

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2af8

    if-lt v0, v1, :cond_a

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2b5c

    if-ge v0, v1, :cond_a

    const/16 v0, 0x12

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2791

    if-ne v0, v1, :cond_b

    const/16 v0, 0x13

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x277d

    if-ne v0, v1, :cond_c

    const/16 v0, 0x14

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_c
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x29ce

    if-ne v0, v1, :cond_d

    const/16 v0, 0x15

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto :goto_0

    :cond_d
    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2904

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v1, 0x2968

    if-ge v0, v1, :cond_2

    const/16 v0, 0x16

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->a:I

    return v0
.end method

.method public getOperation()Lcom/iflytek/speech/SpeechError$a;
    .locals 2

    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    iget v1, p0, Lcom/iflytek/speech/SpeechError;->a:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    sget-boolean v1, Lcom/iflytek/resource/MscSetting;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    :cond_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->a:Lcom/iflytek/speech/SpeechError$a;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/iflytek/speech/SpeechError$a;->d:Lcom/iflytek/speech/SpeechError$a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x5 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-boolean v1, Lcom/iflytek/resource/MscSetting;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/resource/a;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/speech/SpeechError;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/resource/a;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/speech/SpeechError;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
