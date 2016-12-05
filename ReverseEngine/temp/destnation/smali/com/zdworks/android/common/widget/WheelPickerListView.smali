.class public Lcom/zdworks/android/common/widget/WheelPickerListView;
.super Landroid/widget/ListView;
.source "WheelPickerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/widget/WheelPickerListView$1;,
        Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;,
        Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;,
        Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile mScrollState:I

.field private final runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    iput-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I

    .line 39
    invoke-direct {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->initView()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    iput-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I

    .line 34
    invoke-direct {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->initView()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    iput-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I

    .line 29
    invoke-direct {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->initView()V

    .line 30
    return-void
.end method

.method static synthetic access$400(Lcom/zdworks/android/common/widget/WheelPickerListView;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getClosestItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/zdworks/android/common/widget/WheelPickerListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/zdworks/android/common/widget/WheelPickerListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->mScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/zdworks/android/common/widget/WheelPickerListView;)Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView;->runner:Lcom/zdworks/android/common/widget/WheelPickerListView$PickerScrollRunner;

    return-object v0
.end method

.method private getClosestItem(I)Landroid/view/View;
    .locals 5
    .parameter "valueY"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getChildCount()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 103
    .local v1, index:I
    invoke-virtual {p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, target:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v0, v4, p1

    .line 105
    .local v0, differenceY:I
    if-lez v0, :cond_0

    .line 106
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, next:Landroid/view/View;
    if-nez v2, :cond_1

    .line 109
    .end local v2           #next:Landroid/view/View;
    .end local v3           #target:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v3

    .restart local v2       #next:Landroid/view/View;
    .restart local v3       #target:Landroid/view/View;
    :cond_1
    move-object v3, v2

    .line 107
    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .line 75
    .local v6, middle:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zdworks/android/common/widget/WheelPickerListView;->setAdapter(Landroid/widget/ListAdapter;Z)V

    .line 57
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 2
    .parameter "adapter"
    .parameter "isLoop"

    .prologue
    .line 60
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, p1, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;

    if-nez v1, :cond_1

    .line 63
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/ListAdapter;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    .line 64
    .end local p1
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v1, v0

    .line 65
    check-cast v1, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;

    invoke-virtual {v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->getDefaultPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView;->setSelection(I)V

    move-object p1, v0

    .line 69
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .restart local p1
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 48
    instance-of v1, p1, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerOnScrollListener;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/AbsListView$OnScrollListener;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V

    .end local p1
    .local v0, listener:Landroid/widget/AbsListView$OnScrollListener;
    move-object p1, v0

    .line 51
    .end local v0           #listener:Landroid/widget/AbsListView$OnScrollListener;
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    return-void
.end method
