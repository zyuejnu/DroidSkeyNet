.class public Lcom/iflytek/ui/g;
.super Lcom/iflytek/ui/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/speech/f;


# static fields
.field private static synthetic l:[I


# instance fields
.field d:Lcom/iflytek/speech/a;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/iflytek/ui/b;

.field private h:[B

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/iflytek/ui/UploadDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/g;->d:Lcom/iflytek/speech/a;

    iput-object v0, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    invoke-static {p1, p2}, Lcom/iflytek/speech/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/g;->d:Lcom/iflytek/speech/a;

    invoke-direct {p0}, Lcom/iflytek/ui/g;->h()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/g;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/ui/g;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/iflytek/ui/g;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/speech/SpeechError$a;->values()[Lcom/iflytek/speech/SpeechError$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->d:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->a:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/iflytek/ui/g;->l:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private h()V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "synthesizer"

    invoke-static {v1, v0, p0}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v0, "panel_bg.9"

    invoke-static {v1, v0}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/g;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iflytek/ui/b;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/iflytek/resource/a;->d(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/iflytek/ui/b;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    iget-object v1, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "retry"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string v0, "cancel"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/r;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/r;-><init>(Lcom/iflytek/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/speech/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    invoke-interface {v0, p1}, Lcom/iflytek/ui/UploadDialogListener;->onEnd(Lcom/iflytek/speech/SpeechError;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/ui/g;->a()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/iflytek/ui/g;->g()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/ui/g;->i()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/g;->j()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/g;->k()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/iflytek/ui/UploadDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/g;->k:Lcom/iflytek/ui/UploadDialogListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/ui/UploadDialogListener;->onDataUploaded(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/g;->h:[B

    iput-object p2, p0, Lcom/iflytek/ui/g;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/ui/g;->j:Ljava/lang/String;

    return-void
.end method

.method protected c()V
    .locals 4

    invoke-super {p0}, Lcom/iflytek/ui/d;->c()V

    iget-object v0, p0, Lcom/iflytek/ui/g;->d:Lcom/iflytek/speech/a;

    iget-object v1, p0, Lcom/iflytek/ui/g;->h:[B

    iget-object v2, p0, Lcom/iflytek/ui/g;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/ui/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/iflytek/speech/a;->a([BLjava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/f;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0}, Lcom/iflytek/ui/x;->a()V

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/g;->d:Lcom/iflytek/speech/a;

    invoke-virtual {v0}, Lcom/iflytek/speech/a;->a()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/g;->g:Lcom/iflytek/ui/b;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/g;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/ui/g;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/g;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/ui/g;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/g;->a()V

    goto :goto_0
.end method
