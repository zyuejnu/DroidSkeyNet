.class Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "WheelPickerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/widget/WheelPickerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WheelPickerAdapter"
.end annotation


# instance fields
.field private final mContent:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/ListAdapter;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .parameter "content"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->this$0:Lcom/zdworks/android/common/widget/WheelPickerListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/ListAdapter;Lcom/zdworks/android/common/widget/WheelPickerListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;-><init>(Lcom/zdworks/android/common/widget/WheelPickerListView;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getRealPosistion(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 167
    const v0, 0x7fffffff

    return v0
.end method

.method public getDefaultPosition()I
    .locals 2

    .prologue
    .line 161
    const v0, 0x3fffffff

    .line 162
    .local v0, half:I
    iget-object v1, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->getRealPosistion(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->mContent:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/zdworks/android/common/widget/WheelPickerListView$WheelPickerAdapter;->getRealPosistion(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
