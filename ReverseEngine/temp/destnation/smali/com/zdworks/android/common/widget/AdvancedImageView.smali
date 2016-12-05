.class public Lcom/zdworks/android/common/widget/AdvancedImageView;
.super Landroid/widget/ImageView;
.source "AdvancedImageView.java"


# instance fields
.field private cornerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedImageView;->cornerRadius:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedImageView;->cornerRadius:I

    .line 25
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/widget/AdvancedImageView;->initParameters(Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/AdvancedImageView;->cornerRadius:I

    .line 20
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/widget/AdvancedImageView;->initParameters(Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private initParameters(Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "attrs"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/AdvancedImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/zdworks/android/common/R$styleable;->AdvancedTextView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 34
    .local v3, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 36
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 38
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/zdworks/android/common/widget/AdvancedImageView;->cornerRadius:I

    goto :goto_1

    .line 47
    .end local v0           #attr:I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 56
    const/16 v3, 0x8

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 57
    .local v1, roundedCorners:[F
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v1, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 59
    .local v2, shape:Landroid/graphics/drawable/shapes/RoundRectShape;
    return-void

    .line 56
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method
