.class public Lcom/zdworks/android/calendartable/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static POSITION:[F

.field public static RECT:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/ViewUtils;->RECT:Landroid/graphics/Rect;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/zdworks/android/calendartable/util/ViewUtils;->POSITION:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixBackgroundRepeat(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 57
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, v0, v1}, Lcom/zdworks/android/calendartable/util/ViewUtils;->fixBackgroundTileMode(Landroid/view/View;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 58
    return-void
.end method

.method public static fixBackgroundTileMode(Landroid/view/View;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 3
    .parameter "view"
    .parameter "tileModeX"
    .parameter "tileModeY"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 76
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    .local v1, bmp:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 80
    .end local v1           #bmp:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public static fixForegroundRepeat(Landroid/widget/FrameLayout;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 84
    .local v1, fg:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 85
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .local v0, bmp:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 87
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 89
    .end local v0           #bmp:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public static getLocationInAncestor(Landroid/view/View;Landroid/view/ViewParent;[I)V
    .locals 8
    .parameter "view"
    .parameter "ancestor"
    .parameter "location"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    if-eqz p2, :cond_0

    array-length v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 29
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "location must be an array of two integers"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_1
    sget-object v0, Lcom/zdworks/android/calendartable/util/ViewUtils;->POSITION:[F

    .line 34
    .local v0, position:[F
    const/4 v3, 0x0

    aput v3, v0, v6

    aput v3, v0, v5

    .line 36
    aget v3, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v5

    .line 37
    aget v3, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v6

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 40
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_0
    if-eq v2, p1, :cond_2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 41
    check-cast v1, Landroid/view/View;

    .line 43
    .local v1, tmpView:Landroid/view/View;
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v0, v5

    .line 44
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v0, v6

    .line 46
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v5

    .line 47
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v6

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 50
    goto :goto_0

    .line 52
    .end local v1           #tmpView:Landroid/view/View;
    :cond_2
    aget v3, v0, v5

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, p2, v5

    .line 53
    aget v3, v0, v6

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, p2, v6

    .line 54
    return-void
.end method

.method public static isViewContains(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 17
    sget-object v0, Lcom/zdworks/android/calendartable/util/ViewUtils;->RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 18
    sget-object v0, Lcom/zdworks/android/calendartable/util/ViewUtils;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
