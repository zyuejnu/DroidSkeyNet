.class public Lcom/iflytek/ui/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Lcom/iflytek/ui/x;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ViewFlipper;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->a([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/ui/b;->a([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Z)Landroid/view/animation/Animation;
    .locals 11

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f80

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 5

    const-string v0, "progress"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "progress"

    iget-object v3, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    invoke-static {v2, v1, v3}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    const-string v1, "progress"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/b;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "progressbar"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v3, "progress_horizontal.xml"

    invoke-static {v2, v3}, Lcom/iflytek/ui/u;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v1, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v1, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->removeViews(II)V

    :cond_2
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-le v0, v9, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_2
    sub-int v4, v2, v3

    if-ge v1, v4, :cond_2

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/ui/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    const/high16 v6, 0x4160

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/iflytek/ui/u;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->setGravity(I)V

    invoke-virtual {p0}, Lcom/iflytek/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "speechbox"

    invoke-static {v1, v0, p0}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v0, "box"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iflytek/ui/x;

    invoke-direct {v3, v1}, Lcom/iflytek/ui/x;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    iget-object v3, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/ui/b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/ui/b;->b:Landroid/widget/TextView;

    const-string v3, "title_bg.9"

    invoke-static {v1, v3}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/u;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "box"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    const-string v3, "editbox.9"

    invoke-static {v1, v3}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "flipper"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/iflytek/ui/b;->a(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/ui/b;->a(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/ui/b;->c([Ljava/lang/CharSequence;)V

    const-string v0, "link"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/a;->c()Lcom/iflytek/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/u;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x5

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x4160

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/u;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/b;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0
.end method

.method public b([Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/a;->c()Lcom/iflytek/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/b;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/ui/b;->c([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c([Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/b;->a(Ljava/util/List;)V

    goto :goto_0
.end method
