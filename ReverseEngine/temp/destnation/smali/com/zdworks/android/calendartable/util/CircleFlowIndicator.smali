.class public Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;
.super Landroid/view/View;
.source "CircleFlowIndicator.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/util/FlowIndicator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$1;,
        Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private currentScroll:I

.field private fadeOutTime:I

.field private flowWidth:I

.field private final mPaintActive:Landroid/graphics/Paint;

.field private final mPaintInactive:Landroid/graphics/Paint;

.field private radius:F

.field private timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

.field private viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    .line 61
    iput v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 65
    iput v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->currentScroll:I

    .line 66
    iput v1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    .line 68
    iput-object p0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 79
    invoke-direct {p0, v3, v3, v2, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->initColors(IIII)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v10, 0x4080

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v10, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    .line 61
    iput v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I

    .line 62
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 63
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 65
    iput v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->currentScroll:I

    .line 66
    iput v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    .line 68
    iput-object p0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 91
    sget-object v7, Lcom/zdworks/android/calendartable/R$styleable;->CircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 98
    .local v3, activeType:I
    const/4 v2, -0x1

    .line 101
    .local v2, activeDefaultColor:I
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 106
    .local v1, activeColor:I
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 109
    .local v6, inactiveType:I
    const v5, 0x44ffffff

    .line 111
    .local v5, inactiveDefaultColor:I
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 116
    .local v4, inactiveColor:I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    .line 119
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I

    .line 123
    invoke-direct {p0, v1, v4, v3, v6}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->initColors(IIII)V

    .line 124
    return-void
.end method

.method static synthetic access$200(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 2
    .parameter "activeColor"
    .parameter "inactiveColor"
    .parameter "activeType"
    .parameter "inactiveType"

    .prologue
    .line 129
    packed-switch p4, :pswitch_data_0

    .line 134
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    packed-switch p3, :pswitch_data_1

    .line 144
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 279
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 282
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 283
    move v0, v2

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    const/high16 v3, 0x4000

    iget v4, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 290
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 291
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .parameter "measureSpec"

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 246
    .local v2, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 249
    .local v3, specSize:I
    const/high16 v4, 0x4000

    if-ne v2, v4, :cond_1

    .line 250
    move v1, v3

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    const/4 v0, 0x3

    .line 255
    .local v0, count:I
    iget-object v4, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v4}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getViewsCount()I

    move-result v0

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 262
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_0

    .line 263
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    #getter for: Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->_run:Z
    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->access$000(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    :cond_0
    new-instance v0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;-><init>(Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$1;)V

    iput-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    .line 329
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->timer:Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 384
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->setVisibility(I)V

    .line 385
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 389
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 393
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4000

    .line 156
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    const/4 v2, 0x3

    .line 158
    .local v2, count:I
    iget-object v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    if-eqz v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v6}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getViewsCount()I

    move-result v2

    .line 162
    :cond_0
    iget v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v10

    iget v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float v1, v6, v7

    .line 164
    .local v1, circleSeparation:F
    const/4 v0, 0x0

    .line 166
    .local v0, centeringOffset:F
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingLeft()I

    move-result v5

    .line 169
    .local v5, leftPadding:I
    const/4 v4, 0x0

    .local v4, iLoop:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 170
    int-to-float v6, v5

    iget v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    int-to-float v7, v4

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    iget-object v9, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v3, 0x0

    .line 175
    .local v3, cx:F
    iget v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    if-eqz v6, :cond_2

    .line 177
    iget v6, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->currentScroll:I

    int-to-float v6, v6

    iget v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    mul-float/2addr v7, v10

    iget v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 180
    :cond_2
    int-to-float v6, v5

    iget v7, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->radius:F

    iget-object v9, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->setMeasuredDimension(II)V

    .line 234
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 1
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->setVisibility(I)V

    .line 219
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->resetTimer()V

    .line 220
    iput p1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->currentScroll:I

    .line 221
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    .line 222
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->invalidate()V

    .line 223
    return-void
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "position"

    .prologue
    .line 193
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->invalidate()V

    .line 306
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->invalidate()V

    .line 317
    return-void
.end method

.method public setViewFlow(Lcom/zdworks/android/calendartable/util/ViewFlow;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->resetTimer()V

    .line 205
    iput-object p1, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    .line 206
    iget-object v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->viewFlow:Lcom/zdworks/android/calendartable/util/ViewFlow;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->flowWidth:I

    .line 207
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/CircleFlowIndicator;->invalidate()V

    .line 208
    return-void
.end method
