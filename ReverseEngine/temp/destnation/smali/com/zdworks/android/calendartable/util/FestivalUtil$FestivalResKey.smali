.class public Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
.super Ljava/lang/Object;
.source "FestivalUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/util/FestivalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FestivalResKey"
.end annotation


# instance fields
.field public language:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "region"

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->language:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    .line 611
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    if-ne p1, p0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v1

    .line 618
    :cond_1
    instance-of v3, p1, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 619
    check-cast v0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;

    .line 620
    .local v0, o:Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    iget-object v4, v0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #o:Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;
    :cond_3
    move v1, v2

    .line 623
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/zdworks/android/calendartable/util/FestivalUtil$FestivalResKey;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
