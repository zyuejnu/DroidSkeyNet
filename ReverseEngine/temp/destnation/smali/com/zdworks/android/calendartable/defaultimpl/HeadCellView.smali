.class public Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;
.super Landroid/widget/TextView;
.source "HeadCellView.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x8


# instance fields
.field private drawEdges:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->drawEdges:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "i"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->drawEdges:I

    .line 39
    const/4 v1, 0x1

    const/high16 v2, 0x4140

    invoke-virtual {p0, v1, v2}, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->setTextSize(IF)V

    .line 41
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->setDrawEdges(I)V

    .line 42
    const-string v0, ""

    .line 43
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->setGravity(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->drawEdges:I

    .line 35
    return-void
.end method


# virtual methods
.method public getDrawEdges()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->drawEdges:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method public setDrawEdges(I)V
    .locals 0
    .parameter "drawEdges"

    .prologue
    .line 24
    iput p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/HeadCellView;->drawEdges:I

    .line 25
    return-void
.end method
