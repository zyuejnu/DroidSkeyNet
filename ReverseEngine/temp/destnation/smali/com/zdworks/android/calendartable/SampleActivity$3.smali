.class Lcom/zdworks/android/calendartable/SampleActivity$3;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/SampleActivity;->initCalendarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field map:[I

.field final synthetic this$0:Lcom/zdworks/android/calendartable/SampleActivity;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/SampleActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$3;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/zdworks/android/calendartable/R$string;->sun:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/zdworks/android/calendartable/R$string;->mon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/zdworks/android/calendartable/R$string;->tue:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/zdworks/android/calendartable/R$string;->wed:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/zdworks/android/calendartable/R$string;->thu:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/zdworks/android/calendartable/R$string;->fri:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/zdworks/android/calendartable/R$string;->sar:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity$3;->map:[I

    return-void
.end method


# virtual methods
.method public fill(Landroid/view/View;I)V
    .locals 4
    .parameter "headerCell"
    .parameter "dayOfWeek"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/zdworks/android/calendartable/SampleActivity$3;->map:[I

    aget v0, v2, p2

    .line 74
    .local v0, textId:I
    sget v2, Lcom/zdworks/android/calendartable/R$id;->headCellText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/zdworks/android/calendartable/SampleActivity$3;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-virtual {v2, v0}, Lcom/zdworks/android/calendartable/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/zdworks/android/calendartable/SampleActivity$3;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-virtual {v2}, Lcom/zdworks/android/calendartable/SampleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zdworks/android/calendartable/R$color;->bk7:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    return-void
.end method
