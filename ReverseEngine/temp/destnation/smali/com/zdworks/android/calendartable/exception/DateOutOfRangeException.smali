.class public Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;
.super Ljava/lang/Exception;
.source "DateOutOfRangeException.java"


# static fields
.field public static final ABOVE_UPPER:I = 0x0

.field public static final BELOW_LOWER:I = 0x1

.field private static final serialVersionUID:J = 0x1c7d84cc69bb7ce0L


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput p1, p0, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;->state:I

    .line 13
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/zdworks/android/calendartable/exception/DateOutOfRangeException;->state:I

    return v0
.end method
