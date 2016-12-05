.class public Lcom/zdworks/android/common/view/FlingGallery;
.super Landroid/widget/FrameLayout;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/view/FlingGallery$1;,
        Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;,
        Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;,
        Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;,
        Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;,
        Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mAnimation:Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;

.field private mAnimationDuration:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOffset:F

.field private mCurrentPosition:I

.field private mCurrentViewNumber:I

.field private mDecelerateInterpolater:Landroid/view/animation/Interpolator;

.field private mDetectScrollX:I

.field private mFlingDirection:I

.field private mGalleryWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureDetectorListener:Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

.field private mInterruptDetector:Landroid/view/GestureDetector;

.field private mIsDragging:Z

.field private mIsGalleryCircular:Z

.field private mIsTouched:Z

.field private mLastedPositon:I

.field private mOnViewChangedListener:Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;

.field private mScrollTimestamp:J

.field private mSnapBorderRatio:F

.field private mViewPaddingWidth:I

.field private mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

.field private final swipe_max_off_path:I

.field private final swipe_min_distance:I

.field private final swipe_threshold_veloicty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0x78

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_min_distance:I

    .line 30
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_max_off_path:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_threshold_veloicty:I

    .line 35
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViewPaddingWidth:I

    .line 36
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I

    .line 37
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mSnapBorderRatio:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDetectScrollX:I

    .line 43
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    .line 44
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    .line 45
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J

    .line 48
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 49
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 50
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mLastedPositon:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 67
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v0, 0x78

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_min_distance:I

    .line 30
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_max_off_path:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_threshold_veloicty:I

    .line 35
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViewPaddingWidth:I

    .line 36
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I

    .line 37
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mSnapBorderRatio:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDetectScrollX:I

    .line 43
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    .line 44
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    .line 45
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J

    .line 48
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 49
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 50
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mLastedPositon:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 81
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/16 v0, 0x78

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_min_distance:I

    .line 30
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_max_off_path:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->swipe_threshold_veloicty:I

    .line 35
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViewPaddingWidth:I

    .line 36
    iput v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I

    .line 37
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mSnapBorderRatio:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDetectScrollX:I

    .line 43
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    .line 44
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    .line 45
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J

    .line 48
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 49
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 50
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mLastedPositon:I

    .line 51
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 75
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic access$1000(Lcom/zdworks/android/common/view/FlingGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/zdworks/android/common/view/FlingGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zdworks/android/common/view/FlingGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/zdworks/android/common/view/FlingGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/zdworks/android/common/view/FlingGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    return p1
.end method

.method static synthetic access$1300(Lcom/zdworks/android/common/view/FlingGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/zdworks/android/common/view/FlingGallery;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/zdworks/android/common/view/FlingGallery;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mScrollTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/zdworks/android/common/view/FlingGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDetectScrollX:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zdworks/android/common/view/FlingGallery;)Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetectorListener:Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zdworks/android/common/view/FlingGallery;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$1702(Lcom/zdworks/android/common/view/FlingGallery;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentOffset:F

    return p1
.end method

.method static synthetic access$1800(Lcom/zdworks/android/common/view/FlingGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zdworks/android/common/view/FlingGallery;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/view/FlingGallery;->getViewOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/zdworks/android/common/view/FlingGallery;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zdworks/android/common/view/FlingGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$800(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zdworks/android/common/view/FlingGallery;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I

    move-result v0

    return v0
.end method

.method private getNextPosition(I)I
    .locals 3
    .parameter "relativePosition"

    .prologue
    .line 204
    add-int/lit8 v0, p1, 0x1

    .line 206
    .local v0, nextPosition:I
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 210
    iget-boolean v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v0

    .line 216
    :cond_0
    return v0
.end method

.method private getNextViewNumber(I)I
    .locals 1
    .parameter "relativeViewNumber"

    .prologue
    .line 226
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getPrevPosition(I)I
    .locals 3
    .parameter "relativePosition"

    .prologue
    .line 187
    add-int/lit8 v0, p1, -0x1

    .line 189
    .local v0, prevPosition:I
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 193
    iget-boolean v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v0

    .line 199
    :cond_0
    return v0
.end method

.method private getPrevViewNumber(I)I
    .locals 1
    .parameter "relativeViewNumber"

    .prologue
    .line 221
    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private getViewOffset(II)I
    .locals 3
    .parameter "viewNumber"
    .parameter "relativeViewNumber"

    .prologue
    .line 266
    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViewPaddingWidth:I

    add-int v0, v1, v2

    .line 269
    .local v0, offsetWidth:I
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 280
    .end local v0           #offsetWidth:I
    :goto_0
    return v0

    .line 275
    .restart local v0       #offsetWidth:I
    :cond_0
    invoke-direct {p0, p2}, Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 277
    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mContext:Landroid/content/Context;

    .line 87
    iput-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    .line 90
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v3, p0}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;-><init>(Lcom/zdworks/android/common/view/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v3

    .line 91
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v4, p0}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;-><init>(Lcom/zdworks/android/common/view/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v4

    .line 92
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v5, p0}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;-><init>(Lcom/zdworks/android/common/view/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v5

    .line 94
    new-instance v0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;

    invoke-direct {v0, p0}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;-><init>(Lcom/zdworks/android/common/view/FlingGallery;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimation:Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;

    .line 95
    new-instance v0, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

    invoke-direct {v0, p0, v2}, Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;-><init>(Lcom/zdworks/android/common/view/FlingGallery;Lcom/zdworks/android/common/view/FlingGallery$1;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetectorListener:Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

    .line 96
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetectorListener:Lcom/zdworks/android/common/view/FlingGallery$FlingGestureDetectorListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 97
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;

    invoke-direct {v1, p0, v2}, Lcom/zdworks/android/common/view/FlingGallery$InterruptGestureDetectorListener;-><init>(Lcom/zdworks/android/common/view/FlingGallery;Lcom/zdworks/android/common/view/FlingGallery$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mInterruptDetector:Landroid/view/GestureDetector;

    .line 98
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mContext:Landroid/content/Context;

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    .line 99
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/view/FlingGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getGalleryCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getLastPosition()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getGalleryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getGalleryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getLastedPosition()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mLastedPositon:I

    return v0
.end method

.method moveNext()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 294
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->processGesture()V

    .line 295
    return-void
.end method

.method movePrevious()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 287
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->processGesture()V

    .line 288
    return-void
.end method

.method public onGalleryTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 323
    .local v0, consumed:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 325
    iget-boolean v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->processScrollSnap()V

    .line 328
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->processGesture()V

    .line 332
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mInterruptDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 300
    packed-switch p1, :pswitch_data_0

    .line 314
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->movePrevious()V

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->moveNext()V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 235
    sub-int v0, p4, p2

    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    .line 237
    if-ne p1, v3, :cond_0

    .line 240
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 241
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 242
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 244
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 167
    const-string v1, "Test"

    const-string v2, "test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/view/FlingGallery;->onGalleryTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 169
    .local v0, value:Z
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x1

    return v1
.end method

.method processGesture()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 337
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 338
    .local v0, newViewNumber:I
    const/4 v2, 0x0

    .line 339
    .local v2, reloadViewNumber:I
    const/4 v1, 0x0

    .line 341
    .local v1, reloadPosition:I
    iput-boolean v5, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z

    .line 342
    iput-boolean v5, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z

    .line 344
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mLastedPositon:I

    .line 346
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    if-lez v3, :cond_1

    .line 348
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    if-ne v3, v6, :cond_1

    .line 351
    :cond_0
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I

    move-result v0

    .line 352
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevPosition(I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 353
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I

    move-result v2

    .line 354
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevPosition(I)I

    move-result v1

    .line 358
    :cond_1
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    if-gez v3, :cond_3

    .line 360
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    if-ne v3, v6, :cond_3

    .line 363
    :cond_2
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I

    move-result v0

    .line 364
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getNextPosition(I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 365
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I

    move-result v2

    .line 366
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->getNextPosition(I)I

    move-result v1

    .line 370
    :cond_3
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    if-eq v0, v3, :cond_4

    .line 372
    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 375
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 379
    :cond_4
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->requestFocus()V

    .line 382
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimation:Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v3, v4}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->prepareAnimation(I)V

    .line 383
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimation:Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;

    invoke-virtual {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iput v5, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 388
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mOnViewChangedListener:Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;

    if-eqz v3, :cond_5

    .line 389
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mOnViewChangedListener:Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getCurrentView()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-interface {v3, v4, v5}, Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;->onChanged(Landroid/view/View;I)V

    .line 391
    :cond_5
    return-void
.end method

.method processScrollSnap()V
    .locals 5

    .prologue
    .line 396
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery;->mSnapBorderRatio:F

    mul-float v1, v3, v4

    .line 397
    .local v1, rollEdgeWidth:F
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mGalleryWidth:I

    float-to-int v4, v1

    sub-int v2, v3, v4

    .line 398
    .local v2, rollOffset:I
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v0

    .line 400
    .local v0, currentOffset:I
    mul-int/lit8 v3, v2, -0x1

    if-gt v0, v3, :cond_0

    .line 403
    const/4 v3, 0x1

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 406
    :cond_0
    if-lt v0, v2, :cond_1

    .line 409
    const/4 v3, -0x1

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery;->mFlingDirection:I

    .line 411
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    .line 249
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    .line 250
    iput v2, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    .line 253
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 254
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 255
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 258
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 259
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 260
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 261
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDuration"

    .prologue
    .line 107
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I

    .line 108
    return-void
.end method

.method public setIsGalleryCircular(Z)V
    .locals 2
    .parameter "isGalleryCircular"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    if-eq v0, p1, :cond_1

    .line 119
    iput-boolean p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mIsGalleryCircular:Z

    .line 121
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/zdworks/android/common/view/FlingGallery;->getLastPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/view/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public setOnViewChangedListener(Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mOnViewChangedListener:Lcom/zdworks/android/common/view/FlingGallery$OnViewChangedListener;

    .line 137
    return-void
.end method

.method public setPaddingWidth(I)V
    .locals 0
    .parameter "viewPaddingWidth"

    .prologue
    .line 102
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mViewPaddingWidth:I

    .line 103
    return-void
.end method

.method public setSnapBorderRatio(F)V
    .locals 0
    .parameter "snapBorderRatio"

    .prologue
    .line 112
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery;->mSnapBorderRatio:F

    .line 113
    return-void
.end method
