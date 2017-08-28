.class public Lcom/zdworks/android/calendartable/util/SimpleDate;
.super Ljava/lang/Object;
.source "SimpleDate.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zdworks/android/calendartable/util/SimpleDate;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zdworks/android/calendartable/util/SimpleDate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate$1;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/SimpleDate$1;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/SimpleDate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zdworks/android/calendartable/util/SimpleDate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static compare(Lcom/zdworks/android/calendartable/util/SimpleDate;Lcom/zdworks/android/calendartable/util/SimpleDate;)I
    .locals 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 99
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 100
    .local v0, l:I
    iget v1, p1, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 101
    .local v1, r:I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static fromCalendar(Ljava/util/Calendar;)Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 4
    .parameter "c"

    .prologue
    .line 84
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(III)V

    return-object v0
.end method

.method public static fromDate(Ljava/util/Date;)Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 4
    .parameter "date"

    .prologue
    .line 71
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcom/zdworks/android/calendartable/util/SimpleDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/zdworks/android/calendartable/util/SimpleDate;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/SimpleDate;-><init>()V

    .line 118
    .local v0, date:Lcom/zdworks/android/calendartable/util/SimpleDate;
    iget v1, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    iput v1, v0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 119
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->clone()Lcom/zdworks/android/calendartable/util/SimpleDate;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/zdworks/android/calendartable/util/SimpleDate;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/zdworks/android/calendartable/util/SimpleDate;->compare(Lcom/zdworks/android/calendartable/util/SimpleDate;Lcom/zdworks/android/calendartable/util/SimpleDate;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/zdworks/android/calendartable/util/SimpleDate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/calendartable/util/SimpleDate;->compareTo(Lcom/zdworks/android/calendartable/util/SimpleDate;)I

    move-result v0

    return v0
.end method

.method public date()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 106
    instance-of v0, p1, Lcom/zdworks/android/calendartable/util/SimpleDate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zdworks/android/calendartable/util/SimpleDate;

    .end local p1
    iget v0, p1, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    iget v1, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    return v0
.end method

.method public month()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    and-int/lit16 v0, v0, 0x1ff

    ushr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public reset(II)V
    .locals 1
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 51
    shl-int/lit8 v0, p1, 0x5

    or-int/2addr v0, p2

    iput v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 52
    return-void
.end method

.method public reset(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 47
    shl-int/lit8 v0, p1, 0x9

    shl-int/lit8 v1, p2, 0x5

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    iput v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    .line 48
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 81
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3
    .parameter "date"

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/zdworks/android/calendartable/util/SimpleDate;->reset(III)V

    .line 68
    return-void
.end method

.method public toCalendar()Ljava/util/GregorianCalendar;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->date()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    return-object v0
.end method

.method public toCalendar(Ljava/util/Calendar;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->month()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->date()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 96
    return-void
.end method

.method public toDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v1

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->month()I

    move-result v2

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->date()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->year()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->month()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/SimpleDate;->date()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 139
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method

.method public year()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/zdworks/android/calendartable/util/SimpleDate;->data:I

    ushr-int/lit8 v0, v0, 0x9

    return v0
.end method
