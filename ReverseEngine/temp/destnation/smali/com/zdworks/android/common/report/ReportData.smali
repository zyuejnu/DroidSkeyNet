.class public Lcom/zdworks/android/common/report/ReportData;
.super Ljava/lang/Object;
.source "ReportData.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mValues:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->mValues:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/report/ReportData;->setKey(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lcom/zdworks/android/common/report/ReportData;
    .locals 2
    .parameter "item"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->mValues:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->mValues:Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->mValues:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportData;->mValues:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportData;->key:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public toArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zdworks/android/common/report/ReportData;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/zdworks/android/common/report/ReportData;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/zdworks/android/common/report/ReportData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
