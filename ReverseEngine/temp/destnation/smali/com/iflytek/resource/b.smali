.class public Lcom/iflytek/resource/b;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;

.field public static d:[Ljava/lang/String;

.field public static e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Core technology powered by <a href=\"http://dev.voicecloud.cn/msc/help.html\">iFLYTEK</a> "

    aput-object v1, v0, v3

    const-string v1, "http://dev.voicecloud.cn/msc/help.html"

    aput-object v1, v0, v4

    const-string v1, "I know"

    aput-object v1, v0, v5

    const-string v1, "Details"

    aput-object v1, v0, v6

    const-string v1, "Cancel"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Done"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "More"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Restart"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Retry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Review record"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Recover result..."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1.Please keep moderate speech\n2.Away from mic about 10 centimeters\n3.Please use it in a relative quiet environment\n4.Severel words can be once"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1.Please keep moderate speech\n2.Away from mic about 10 centimeters\n3.Please use it in a relative quiet environment\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/resource/b;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Help"

    aput-object v1, v0, v3

    const-string v1, "Connecting server..."

    aput-object v1, v0, v4

    const-string v1, "Speak now"

    aput-object v1, v0, v5

    const-string v1, "Getting result..."

    aput-object v1, v0, v6

    const-string v1, "Getting speech..."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TTS Powered by iFLYTEK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Uploading data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/resource/b;->b:[Ljava/lang/String;

    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Please keep calm tone and moderate speech"

    aput-object v2, v1, v3

    const-string v2, "Away from mic about 10 centimeters"

    aput-object v2, v1, v4

    const-string v2, "Please use it in a relative quiet environment"

    aput-object v2, v1, v5

    const-string v2, "Severel words can be once"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Please keep calm tone and moderate speech"

    aput-object v2, v1, v3

    const-string v2, "Away from mic about 10 centimeters"

    aput-object v2, v1, v4

    const-string v2, "Please use it in a relative quiet environment"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "iFLYTEK Speech  Communicate immensely"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/resource/b;->c:[[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Without network"

    aput-object v1, v0, v4

    const-string v1, "Connect network overtime"

    aput-object v1, v0, v5

    const-string v1, "Unexpected network connection"

    aput-object v1, v0, v6

    const-string v1, "Without setting valid permission"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Cannot resolving result"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Cannot connecting server,please cheak network"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid parameter"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unexpected error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Fail to start record"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "No suited result"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "You seem not to speak"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Cannot sustaining coded format"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Invalid text messages"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Cannot reading file"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Audioplayer error"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Lack of memory"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Text overlength"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Sign in error"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Network is busy,please be waiting"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Uploaded data format is not correct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Cannot find valid syntax file"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Cannot find local resource"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/resource/b;->d:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Error code"

    aput-object v1, v0, v3

    const-string v1, "Error reason"

    aput-object v1, v0, v4

    const-string v1, "Unexpected error"

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/resource/b;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
