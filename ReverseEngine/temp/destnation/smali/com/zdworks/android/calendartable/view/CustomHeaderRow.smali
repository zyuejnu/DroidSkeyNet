.class public Lcom/zdworks/android/calendartable/view/CustomHeaderRow;
.super Landroid/widget/LinearLayout;
.source "CustomHeaderRow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    .line 20
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;->getChildCount()I

    move-result v4

    .line 21
    .local v4, count:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;->getWidth()I

    move-result v9

    .line 22
    .local v9, width:I
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;->getHeight()I

    move-result v7

    .line 24
    .local v7, height:I
    div-int v0, v9, v4

    .line 25
    .local v0, avgWidth:I
    rem-int v10, v9, v4

    div-int/lit8 v6, v10, 0x2

    .line 26
    .local v6, headExtra:I
    rem-int v10, v9, v4

    sub-int v5, v10, v6

    .line 28
    .local v5, endExtra:I
    const/4 v2, 0x0

    .local v2, childLeft:I
    const/4 v3, 0x0

    .line 29
    .local v3, childWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 30
    invoke-virtual {p0, v8}, Lcom/zdworks/android/calendartable/view/CustomHeaderRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, child:Landroid/view/View;
    if-nez v8, :cond_0

    .line 32
    add-int v3, v0, v6

    .line 39
    :goto_1
    const/high16 v10, 0x4000

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/view/View;->measure(II)V

    .line 41
    const/4 v10, 0x0

    add-int v11, v2, v3

    invoke-virtual {v1, v2, v10, v11, v7}, Landroid/view/View;->layout(IIII)V

    .line 43
    add-int/2addr v2, v3

    .line 29
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 33
    :cond_0
    add-int/lit8 v10, v4, -0x1

    if-ne v8, v10, :cond_1

    .line 34
    add-int v3, v0, v5

    goto :goto_1

    .line 36
    :cond_1
    move v3, v0

    goto :goto_1

    .line 45
    .end local v1           #child:Landroid/view/View;
    :cond_2
    return-void
.end method
