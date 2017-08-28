.class public Lcom/zdworks/android/common/widget/AdvancedTextView;
.super Landroid/widget/TextView;
.source "AdvancedTextView.java"


# instance fields
.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    .line 25
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    .line 25
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    .line 34
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/widget/AdvancedTextView;->initParameters(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    .line 25
    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    .line 29
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/widget/AdvancedTextView;->initParameters(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 70
    iget v1, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    if-lez v1, :cond_0

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 72
    .local v0, paint:Landroid/graphics/Paint;
    iget v1, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 75
    iget v1, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method private initParameters(Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "attrs"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/zdworks/android/common/R$styleable;->AdvancedTextView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 43
    .local v3, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 45
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 46
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 47
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    goto :goto_1

    .line 52
    :pswitch_1
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    goto :goto_1

    .line 59
    .end local v0           #attr:I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    return v0
.end method

.method public getStrokeColor(I)V
    .locals 0
    .parameter "colorRGB"

    .prologue
    .line 94
    iput p1, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeColor:I

    .line 95
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->invalidate()V

    .line 96
    return-void
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/AdvancedTextView;->drawStroke(Landroid/graphics/Canvas;)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 85
    iput p1, p0, Lcom/zdworks/android/common/widget/AdvancedTextView;->mStrokeWidth:I

    .line 86
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedTextView;->invalidate()V

    .line 87
    return-void
.end method
