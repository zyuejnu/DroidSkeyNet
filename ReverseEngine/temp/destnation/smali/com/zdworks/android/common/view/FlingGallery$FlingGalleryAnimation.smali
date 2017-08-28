.class Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;
.super Landroid/view/animation/Animation;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/view/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGalleryAnimation"
.end annotation


# instance fields
.field private mInitialOffset:I

.field private mIsAnimationInProgres:Z

.field private mRelativeViewNumber:I

.field private mTargetDistance:I

.field private mTargetOffset:I

.field final synthetic this$0:Lcom/zdworks/android/common/view/FlingGallery;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/common/view/FlingGallery;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 493
    iput-object p1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 494
    iput-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 495
    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    .line 496
    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    .line 497
    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    .line 498
    iput v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    .line 499
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "transformation"

    .prologue
    const/high16 v2, 0x3f80

    .line 546
    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    move p1, v2

    .line 547
    :cond_0
    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 549
    .local v0, offset:I
    const/4 v1, 0x0

    .local v1, viewNumber:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 552
    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/zdworks/android/common/view/FlingGallery;->getNextViewNumber(I)I
    invoke-static {v2, v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$900(Lcom/zdworks/android/common/view/FlingGallery;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I
    invoke-static {v2, v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$500(Lcom/zdworks/android/common/view/FlingGallery;I)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 549
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_4
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 5
    .parameter "currentTime"
    .parameter "outTransformation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 563
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v2, v2, v0

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 567
    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v1, v2, v1

    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 568
    iget-object v1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v1}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 571
    iput-boolean v0, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsTouched:Z
    invoke-static {v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$1000(Lcom/zdworks/android/common/view/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mIsDragging:Z
    invoke-static {v2}, Lcom/zdworks/android/common/view/FlingGallery;->access$1100(Lcom/zdworks/android/common/view/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 586
    goto :goto_0
.end method

.method public prepareAnimation(I)V
    .locals 7
    .parameter "relativeViewNumber"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 504
    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    if-eq v4, p1, :cond_1

    .line 506
    iget-boolean v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    if-ne v4, v2, :cond_0

    .line 509
    iget-object v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/zdworks/android/common/view/FlingGallery;->getPrevViewNumber(I)I
    invoke-static {v4, v5}, Lcom/zdworks/android/common/view/FlingGallery;->access$500(Lcom/zdworks/android/common/view/FlingGallery;I)I

    move-result v4

    if-ne p1, v4, :cond_2

    move v1, v2

    .line 510
    .local v1, newDirection:I
    :goto_0
    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v4, :cond_3

    move v0, v2

    .line 513
    .local v0, animDirection:I
    :goto_1
    if-ne v0, v1, :cond_0

    .line 516
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v3

    aget-object v3, v3, v6

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 517
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v3

    aget-object v3, v3, v2

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 518
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 523
    .end local v0           #animDirection:I
    .end local v1           #newDirection:I
    :cond_0
    iput p1, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    .line 530
    :cond_1
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mViews:[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$600(Lcom/zdworks/android/common/view/FlingGallery;)[Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;

    move-result-object v3

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    .line 531
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    iget v5, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/zdworks/android/common/view/FlingGallery;->getViewOffset(II)I
    invoke-static {v3, v4, v5}, Lcom/zdworks/android/common/view/FlingGallery;->access$400(Lcom/zdworks/android/common/view/FlingGallery;II)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    .line 532
    iget v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v4, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    .line 535
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mAnimationDuration:I
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$700(Lcom/zdworks/android/common/view/FlingGallery;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->setDuration(J)V

    .line 536
    iget-object v3, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/zdworks/android/common/view/FlingGallery;

    #getter for: Lcom/zdworks/android/common/view/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;
    invoke-static {v3}, Lcom/zdworks/android/common/view/FlingGallery;->access$800(Lcom/zdworks/android/common/view/FlingGallery;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    iput-boolean v2, p0, Lcom/zdworks/android/common/view/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 540
    return-void

    :cond_2
    move v1, v3

    .line 509
    goto :goto_0

    .restart local v1       #newDirection:I
    :cond_3
    move v0, v3

    .line 510
    goto :goto_1
.end method
