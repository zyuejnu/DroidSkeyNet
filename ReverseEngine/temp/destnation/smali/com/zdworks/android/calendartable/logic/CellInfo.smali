.class public Lcom/zdworks/android/calendartable/logic/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final STATE_FOCUSABLE:I = 0x80

.field public static final STATE_HOLIDAY:I = 0x20

.field public static final STATE_IN_CURRENT_MONTH:I = 0x4

.field public static final STATE_IN_LAST_MONTH:I = 0x8

.field public static final STATE_IN_NEXT_MONTH:I = 0x10

.field public static final STATE_ON_FOCUS:I = 0x1

.field public static final STATE_TODAY:I = 0x2

.field public static final STATE_WORKDAY:I = 0x40


# instance fields
.field public column:I

.field public date:Ljava/util/Calendar;

.field public lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

.field public modernFestival:Ljava/lang/String;

.field public row:I

.field public solarTerm:Ljava/lang/String;

.field public state:I

.field public tranditionalFestival:Ljava/lang/String;

.field public unimportantFestival:Ljava/lang/String;

.field public unimportantTraditionalFestival:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 73
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    .line 74
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    .line 82
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/logic/CellInfo;

    .line 88
    .local v0, clone:Lcom/zdworks/android/calendartable/logic/CellInfo;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, v0, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    .line 89
    iget-object v2, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/util/LunarDate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zdworks/android/calendartable/util/LunarDate;

    iput-object v2, v0, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object v0

    .line 91
    .end local v0           #clone:Lcom/zdworks/android/calendartable/logic/CellInfo;
    :catch_0
    move-exception v1

    .line 92
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getFestivalText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->solarTerm:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->solarTerm:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->modernFestival:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->modernFestival:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->tranditionalFestival:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->tranditionalFestival:Ljava/lang/String;

    .line 44
    :cond_2
    return-object v0
.end method

.method public getSortedFestivalText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->tranditionalFestival:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->tranditionalFestival:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->modernFestival:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->modernFestival:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantTraditionalFestival:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantTraditionalFestival:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantFestival:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 56
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->unimportantFestival:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_3
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->solarTerm:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 58
    iget-object v3, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->solarTerm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, raw:Ljava/lang/String;
    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, result:[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v6, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .end local v0           #raw:Ljava/lang/String;
    .end local v1           #result:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 62
    .restart local v0       #raw:Ljava/lang/String;
    .restart local v1       #result:[Ljava/lang/String;
    :cond_5
    aget-object v3, v1, v5

    goto :goto_0

    .line 64
    .end local v0           #raw:Ljava/lang/String;
    .end local v1           #result:[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public inState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 69
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 77
    iget v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zdworks/android/calendartable/logic/CellInfo;->state:I

    .line 78
    return-void
.end method
