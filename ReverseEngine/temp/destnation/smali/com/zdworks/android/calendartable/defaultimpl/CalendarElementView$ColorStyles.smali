.class public Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;
.super Ljava/lang/Object;
.source "CalendarElementView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorStyles"
.end annotation


# instance fields
.field private festivalColor:I

.field private lunartextColor:I

.field private textColor:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .parameter "textColor"
    .parameter "lunartextColor"
    .parameter "festivalColor"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->textColor:I

    .line 70
    iput p2, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->lunartextColor:I

    .line 71
    iput p3, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->festivalColor:I

    .line 72
    return-void
.end method


# virtual methods
.method public getFestivalColor()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->festivalColor:I

    return v0
.end method

.method public getLunartextColor()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->lunartextColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->textColor:I

    return v0
.end method
