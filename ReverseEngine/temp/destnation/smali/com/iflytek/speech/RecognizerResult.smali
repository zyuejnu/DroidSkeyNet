.class public Lcom/iflytek/speech/RecognizerResult;
.super Ljava/lang/Object;


# instance fields
.field public confidence:I

.field public semanteme:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/speech/RecognizerResult;->text:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/speech/RecognizerResult;->confidence:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/speech/RecognizerResult;->semanteme:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/RecognizerResult;->semanteme:Ljava/util/ArrayList;

    return-void
.end method
