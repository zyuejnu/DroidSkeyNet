.class public Lcom/zdworks/android/calendartable/view/CustomTableLayout;
.super Landroid/view/ViewGroup;
.source "CustomTableLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 44
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getChildCount()I

    move-result v4

    .line 46
    .local v4, count:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getWidth()I

    move-result v9

    .line 47
    .local v9, width:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getHeight()I

    move-result v7

    .line 49
    .local v7, height:I
    div-int v0, v7, v4

    .line 50
    .local v0, avgHeight:I
    rem-int v10, v7, v4

    div-int/lit8 v6, v10, 0x2

    .line 51
    .local v6, headExtra:I
    rem-int v10, v7, v4

    sub-int v5, v10, v6

    .line 53
    .local v5, endExtra:I
    const/4 v3, 0x0

    .local v3, childTop:I
    const/4 v2, 0x0

    .line 54
    .local v2, childHeight:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 55
    invoke-virtual {p0, v8}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, child:Landroid/view/View;
    if-nez v8, :cond_0

    .line 57
    add-int v2, v0, v6

    .line 63
    :goto_1
    const/4 v10, 0x0

    add-int v11, v3, v2

    invoke-virtual {v1, v10, v3, v9, v11}, Landroid/view/View;->layout(IIII)V

    .line 64
    add-int/2addr v3, v2

    .line 54
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 58
    :cond_0
    add-int/lit8 v10, v4, -0x1

    if-ne v8, v10, :cond_1

    .line 59
    add-int v2, v0, v5

    goto :goto_1

    .line 61
    :cond_1
    move v2, v0

    goto :goto_1

    .line 67
    .end local v0           #avgHeight:I
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v3           #childTop:I
    .end local v4           #count:I
    .end local v5           #endExtra:I
    .end local v6           #headExtra:I
    .end local v7           #height:I
    .end local v8           #i:I
    .end local v9           #width:I
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v9, 0x4000

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 22
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getChildCount()I

    move-result v3

    .line 23
    .local v3, count:I
    div-int v0, p2, v3

    .line 24
    .local v0, avgHeight:I
    rem-int v7, p2, v3

    div-int/lit8 v5, v7, 0x2

    .line 25
    .local v5, headExtra:I
    rem-int v7, p2, v3

    sub-int v4, v7, v5

    .line 27
    .local v4, endExtra:I
    const/4 v2, 0x0

    .line 28
    .local v2, childHeight:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 29
    invoke-virtual {p0, v6}, Lcom/zdworks/android/calendartable/view/CustomTableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, child:Landroid/view/View;
    if-nez v6, :cond_0

    .line 31
    add-int v2, v0, v5

    .line 37
    :goto_1
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 28
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 32
    :cond_0
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_1

    .line 33
    add-int v2, v0, v4

    goto :goto_1

    .line 35
    :cond_1
    move v2, v0

    goto :goto_1

    .line 40
    .end local v1           #child:Landroid/view/View;
    :cond_2
    return-void
.end method
