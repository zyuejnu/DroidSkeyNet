.class public Lcom/iflytek/ui/q;
.super Lcom/iflytek/ui/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic r:[I


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/speech/SynthesizerPlayer;

.field private h:Lcom/iflytek/ui/SynthesizerDialogListener;

.field private i:Lcom/iflytek/ui/b;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Lcom/iflytek/speech/SynthesizerPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/ui/q;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/ui/q;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/ui/q;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    iput-object v1, p0, Lcom/iflytek/ui/q;->h:Lcom/iflytek/ui/SynthesizerDialogListener;

    new-instance v0, Lcom/iflytek/ui/v;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/v;-><init>(Lcom/iflytek/ui/q;)V

    iput-object v0, p0, Lcom/iflytek/ui/q;->q:Lcom/iflytek/speech/SynthesizerPlayerListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/speech/SynthesizerPlayer;->createSynthesizerPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/SynthesizerPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-direct {p0}, Lcom/iflytek/ui/q;->j()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/q;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Lcom/iflytek/speech/SpeechError;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/iflytek/ui/q;->i()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/ui/q;->d:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/ui/q;->q()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/q;->o()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/q;->p()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/iflytek/ui/q;Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/q;->a(Lcom/iflytek/speech/SpeechError;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/ui/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/q;->m()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/ui/q;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/ui/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/q;->l()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/ui/q;)Lcom/iflytek/ui/SynthesizerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->h:Lcom/iflytek/ui/SynthesizerDialogListener;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/ui/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/q;->n()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/ui/q;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/ui/q;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/iflytek/ui/q;->r:[I

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
    sput-object v0, Lcom/iflytek/ui/q;->r:[I

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

.method private j()V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/q;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "synthesizer"

    invoke-static {v2, v0, p0}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "panel_bg.9"

    invoke-static {v2, v1}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "container"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/q;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iflytek/ui/b;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/iflytek/resource/a;->d(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/iflytek/ui/b;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v3, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    invoke-virtual {v1}, Lcom/iflytek/ui/b;->a()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    const-string v1, "progressbar"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/q;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const-string v1, "retry"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/iflytek/ui/q;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "btn_left"

    invoke-static {v3, v4}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string v0, "play"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/q;->o:Landroid/graphics/drawable/Drawable;

    const-string v0, "stop"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/q;->p:Landroid/graphics/drawable/Drawable;

    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/q;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/iflytek/ui/q;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "play_bg"

    invoke-static {v1, v2}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/q;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0}, Lcom/iflytek/ui/x;->a()V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    iget-object v1, p0, Lcom/iflytek/ui/q;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/ui/q;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/ui/q;->q:Lcom/iflytek/speech/SynthesizerPlayerListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/speech/SynthesizerPlayer;->playText(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/speech/SynthesizerPlayerListener;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/ui/q;->d:I

    return-void
.end method

.method private l()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/q;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, v3}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v2, p0, Lcom/iflytek/ui/q;->d:I

    return-void
.end method

.method private m()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/q;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/ui/q;->d:I

    return-void
.end method

.method private n()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/ui/q;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/iflytek/ui/q;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->i:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0, v3}, Lcom/iflytek/ui/x;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v2, p0, Lcom/iflytek/ui/q;->d:I

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/w;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/w;-><init>(Lcom/iflytek/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->getDownflowBytes(Z)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setPitch(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setSampleRate(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Lcom/iflytek/ui/SynthesizerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/q;->h:Lcom/iflytek/ui/SynthesizerDialogListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setVoiceName(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/q;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/ui/q;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->getUpflowBytes(Z)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setSpeed(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setBackgroundSound(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/ui/d;->c()V

    invoke-direct {p0}, Lcom/iflytek/ui/q;->k()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SynthesizerPlayer;->setVolume(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    invoke-super {p0}, Lcom/iflytek/ui/d;->d()V

    return-void
.end method

.method public e()Lcom/iflytek/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->getState()Lcom/iflytek/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->pause()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-super {p0}, Lcom/iflytek/ui/d;->finalize()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->resume()V

    return-void
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lcom/iflytek/ui/q;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->replay()V

    iget-object v0, p0, Lcom/iflytek/ui/q;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/iflytek/ui/q;->l()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/q;->k()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->resume()V

    invoke-direct {p0}, Lcom/iflytek/ui/q;->l()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/ui/q;->g:Lcom/iflytek/speech/SynthesizerPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/SynthesizerPlayer;->pause()V

    invoke-direct {p0}, Lcom/iflytek/ui/q;->m()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/q;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/ui/q;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/q;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/ui/q;->h()V

    goto :goto_0
.end method
