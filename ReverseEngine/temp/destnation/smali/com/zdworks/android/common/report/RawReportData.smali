.class public Lcom/zdworks/android/common/report/RawReportData;
.super Ljava/lang/Object;
.source "RawReportData.java"


# instance fields
.field private actionName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private time:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "actionName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/zdworks/android/common/report/RawReportData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "actionName"
    .parameter "key"
    .parameter "value"
    .parameter "time"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p4, p5}, Lcom/zdworks/android/common/report/RawReportData;->setTime(J)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/zdworks/android/common/report/RawReportData;->setValue(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/zdworks/android/common/report/RawReportData;->setKey(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/report/RawReportData;->setActionName(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static buildFrom(Ljava/lang/String;)Lcom/zdworks/android/common/report/RawReportData;
    .locals 8
    .parameter "line"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-wide/16 v4, 0x0

    .line 62
    .local v4, time:J
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, datas:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v1, v6

    if-le v1, v3, :cond_0

    .line 65
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 69
    new-instance v0, Lcom/zdworks/android/common/report/RawReportData;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    const/4 v2, 0x2

    aget-object v2, v6, v2

    aget-object v3, v6, v3

    invoke-direct/range {v0 .. v5}, Lcom/zdworks/android/common/report/RawReportData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zdworks/android/common/report/RawReportData;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zdworks/android/common/report/RawReportData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/zdworks/android/common/report/RawReportData;->time:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zdworks/android/common/report/RawReportData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .parameter "actionName"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zdworks/android/common/report/RawReportData;->actionName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zdworks/android/common/report/RawReportData;->key:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/zdworks/android/common/report/RawReportData;->time:J

    .line 34
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zdworks/android/common/report/RawReportData;->value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/zdworks/android/common/report/RawReportData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/report/RawReportData;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/report/RawReportData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zdworks/android/common/report/RawReportData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
