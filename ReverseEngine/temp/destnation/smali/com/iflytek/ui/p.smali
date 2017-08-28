.class public final Lcom/iflytek/ui/p;
.super Lcom/iflytek/ui/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Lcom/iflytek/ui/b;

.field private m:Lcom/iflytek/speech/b;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/iflytek/ui/RecognizerDialogListener;

.field private s:J

.field private t:J

.field private u:J

.field private v:Lcom/iflytek/speech/i;

.field private volatile w:I

.field private x:Lcom/iflytek/a/a;

.field private y:Lcom/iflytek/a/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/p;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/p;->p:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/iflytek/ui/p;->q:Z

    iput-wide v2, p0, Lcom/iflytek/ui/p;->s:J

    iput-wide v2, p0, Lcom/iflytek/ui/p;->t:J

    iput-wide v2, p0, Lcom/iflytek/ui/p;->u:J

    new-instance v0, Lcom/iflytek/ui/n;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/n;-><init>(Lcom/iflytek/ui/p;)V

    iput-object v0, p0, Lcom/iflytek/ui/p;->v:Lcom/iflytek/speech/i;

    iput-object v1, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    new-instance v0, Lcom/iflytek/ui/o;

    invoke-direct {v0, p0}, Lcom/iflytek/ui/o;-><init>(Lcom/iflytek/ui/p;)V

    iput-object v0, p0, Lcom/iflytek/ui/p;->y:Lcom/iflytek/a/a$b;

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/speech/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/speech/b;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.iflytek.isr.showhelp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/ui/p;->q:Z

    invoke-direct {p0}, Lcom/iflytek/ui/p;->g()V

    new-instance v0, Lcom/iflytek/a/a;

    invoke-direct {v0, p1}, Lcom/iflytek/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/p;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/ui/p;->w:I

    return v0
.end method

.method private a(Lcom/iflytek/speech/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechError;->getOperation()Lcom/iflytek/speech/SpeechError$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->c:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/iflytek/ui/p;->l()V

    :cond_0
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/ui/p;->w:I

    return-void

    :cond_1
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->a:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/iflytek/ui/p;->k()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/iflytek/speech/SpeechError$a;->b:Lcom/iflytek/speech/SpeechError$a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/p;->m()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/ui/p;J)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/ui/p;->s:J

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/p;Lcom/iflytek/speech/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/p;->a(Lcom/iflytek/speech/SpeechError;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/ui/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/p;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v0, v5}, Lcom/iflytek/ui/b;->b(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v0}, Lcom/iflytek/ui/b;->b()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v6, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v1, v0}, Lcom/iflytek/ui/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/ui/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/p;->i()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/ui/p;J)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/ui/p;->t:J

    return-void
.end method

.method static synthetic c(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    return-object v0
.end method

.method private c(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "more_blank"

    invoke-static {v0, v1}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v2, p1}, Lcom/iflytek/ui/b;->b(Z)V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v3, v2}, Lcom/iflytek/ui/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/iflytek/ui/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "more_expanded"

    invoke-static {v0, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLines(I)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v3, v2}, Lcom/iflytek/ui/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "more_collapsed"

    invoke-static {v0, v2}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    invoke-virtual {v2}, Lcom/iflytek/a/a;->d()V

    :cond_1
    iget-object v2, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/ui/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/ui/p;->j()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/ui/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/ui/p;->t:J

    return-wide v0
.end method

.method static synthetic f(Lcom/iflytek/ui/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/ui/p;->s:J

    return-wide v0
.end method

.method private f()V
    .locals 5

    iget-wide v0, p0, Lcom/iflytek/ui/p;->u:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/ui/p;->u:J

    iget-wide v2, p0, Lcom/iflytek/ui/p;->u:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/a/c;->a()V

    const-string v0, "start recognize"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/ui/p;->t:J

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    iget-object v1, p0, Lcom/iflytek/ui/p;->v:Lcom/iflytek/speech/i;

    iget-object v2, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/ui/p;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/ui/p;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/speech/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/p;->i()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/iflytek/ui/p;)Lcom/iflytek/ui/RecognizerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->r:Lcom/iflytek/ui/RecognizerDialogListener;

    return-object v0
.end method

.method private g()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/a;->c()Lcom/iflytek/ui/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "recognizer"

    invoke-static {v2, v0, p0}, Lcom/iflytek/ui/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v0, "panel_bg.9"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/p;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/iflytek/ui/b;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/iflytek/ui/b/b;->a(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/iflytek/ui/b;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    iget-object v1, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "control"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/p;->d:Landroid/view/View;

    const-string v0, "recognize"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bg_control.9"

    invoke-static {v0, v1}, Lcom/iflytek/ui/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/p;->k:Landroid/graphics/drawable/Drawable;

    const-string v0, "cancel"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    invoke-static {}, Lcom/iflytek/ui/u;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string v0, "more"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    invoke-static {}, Lcom/iflytek/ui/u;->a()Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v0, "more_item_bg.xml"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v0, "retrieve"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "more_item_bg.xml"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v0, "playback"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "more_item_bg.xml"

    invoke-static {v2, v0}, Lcom/iflytek/ui/u;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v0, "retry"

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/ui/p;)Lcom/iflytek/speech/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->b(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/ui/p;->w:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/b;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/iflytek/ui/p;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0}, Lcom/iflytek/ui/x;->b()V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/ui/p;->s:J

    iput v3, p0, Lcom/iflytek/ui/p;->w:I

    return-void
.end method

.method static synthetic j(Lcom/iflytek/ui/p;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    iget-object v0, v0, Lcom/iflytek/ui/b;->a:Lcom/iflytek/ui/x;

    invoke-virtual {v0}, Lcom/iflytek/ui/x;->c()V

    invoke-static {v3}, Lcom/iflytek/resource/a;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/ui/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput v3, p0, Lcom/iflytek/ui/p;->w:I

    return-void
.end method

.method static synthetic k(Lcom/iflytek/ui/p;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/ui/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/l;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/l;-><init>(Lcom/iflytek/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic l(Lcom/iflytek/ui/p;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/ui/p;->c(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    new-instance v1, Lcom/iflytek/ui/m;

    invoke-direct {v1, p0}, Lcom/iflytek/ui/m;-><init>(Lcom/iflytek/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-static {v2}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/ui/p;->q:Z

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.iflytek.isr.showhelp"

    iget-boolean v2, p0, Lcom/iflytek/ui/p;->q:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/b;->a(Z)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/b;->a(I)V

    return-void
.end method

.method public a(Lcom/iflytek/speech/SpeechConfig$RATE;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/speech/SpeechConfig$RATE;)V

    return-void
.end method

.method public a(Lcom/iflytek/ui/RecognizerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/p;->r:Lcom/iflytek/ui/RecognizerDialogListener;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/ui/p;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/ui/p;->p:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/ui/b/a;->b()Lcom/iflytek/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/ui/b/a;->c()Lcom/iflytek/ui/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/b/b;->a(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/ui/b;->b([Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/ui/b/b;->a(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/ui/b;->b([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Z)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/b;->b(Z)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/iflytek/ui/d;->c()V

    iget-boolean v0, p0, Lcom/iflytek/ui/p;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/p;->h()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Recognizer Button Click"

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/p;->f()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0}, Lcom/iflytek/speech/b;->a()V

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/iflytek/ui/p;->w:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/p;->l:Lcom/iflytek/ui/b;

    invoke-virtual {v0}, Lcom/iflytek/ui/b;->b()V

    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0}, Lcom/iflytek/ui/d;->d()V

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/ui/p;->t:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/iflytek/ui/p;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recognizer Button Click,State = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/ui/p;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/ui/p;->w:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/p;->n()V

    invoke-direct {p0}, Lcom/iflytek/ui/p;->f()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/p;->f()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0}, Lcom/iflytek/speech/b;->c()V

    const-string v0, "end record"

    invoke-static {v0, v2}, Lcom/iflytek/msc/a/c;->a(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/ui/p;->s:J

    invoke-direct {p0}, Lcom/iflytek/ui/p;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/p;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x5

    iget v1, p0, Lcom/iflytek/ui/p;->w:I

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/iflytek/msc/a/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/ui/p;->d()V

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/ui/p;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_4
    invoke-direct {p0}, Lcom/iflytek/ui/p;->f()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_6
    iget-object v0, p0, Lcom/iflytek/ui/p;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0}, Lcom/iflytek/speech/b;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v1}, Lcom/iflytek/speech/b;->f()I

    move-result v1

    new-instance v2, Lcom/iflytek/a/c;

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/iflytek/a/c;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/iflytek/a/c;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    iget-object v1, p0, Lcom/iflytek/ui/p;->y:Lcom/iflytek/a/a$b;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/a/a;->a(Lcom/iflytek/a/c;Lcom/iflytek/a/a$b;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/iflytek/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u51fa\u9519"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/ui/p;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    invoke-virtual {v0}, Lcom/iflytek/speech/b;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/ui/p;->x:Lcom/iflytek/a/a;

    invoke-virtual {v0}, Lcom/iflytek/a/a;->d()V

    :cond_8
    iget-object v0, p0, Lcom/iflytek/ui/p;->m:Lcom/iflytek/speech/b;

    iget-object v1, p0, Lcom/iflytek/ui/p;->v:Lcom/iflytek/speech/i;

    iget-object v3, p0, Lcom/iflytek/ui/p;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/ui/p;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/ui/p;->p:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/speech/b;->a(Lcom/iflytek/speech/i;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/iflytek/ui/p;->j()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
