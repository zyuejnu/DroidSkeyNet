.class public Lcom/zdworks/android/calendartable/SampleActivity;
.super Landroid/app/Activity;
.source "SampleActivity.java"


# instance fields
.field private mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

.field private mFocusedDate:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/calendartable/SampleActivity;)Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method private initCalendarView()V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/zdworks/android/calendartable/R$id;->calendarView:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    iput-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    .line 44
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    sget v1, Lcom/zdworks/android/calendartable/R$layout;->default_headercell:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setHeaderCellLayout(I)V

    .line 45
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    sget v1, Lcom/zdworks/android/calendartable/R$layout;->default_cell:I

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setCellLayout(I)V

    .line 48
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$1;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$1;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setCalendarOnClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$2;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$2;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setCalendarOnLongClickListener(Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$3;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$3;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setFillHeaderHelper(Lcom/zdworks/android/calendartable/callback/FillHeaderHelper;)V

    .line 82
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$4;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$4;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setFillCellHelper(Lcom/zdworks/android/calendartable/callback/FillCellHelper;)V

    .line 149
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$5;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$5;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setCalendarOnFocusChangeListener(Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    new-instance v1, Lcom/zdworks/android/calendartable/SampleActivity$6;

    invoke-direct {v1, p0}, Lcom/zdworks/android/calendartable/SampleActivity$6;-><init>(Lcom/zdworks/android/calendartable/SampleActivity;)V

    invoke-virtual {v0, v1}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->setOnPageChangeListener(Lcom/zdworks/android/calendartable/callback/OnPageChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mCalendarView:Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/widget/ScrollableCalendarView;->initialize()V

    .line 175
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/SampleActivity;->requestWindowFeature(I)Z

    .line 33
    sget v0, Lcom/zdworks/android/calendartable/R$layout;->sample:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/SampleActivity;->setContentView(I)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;

    .line 36
    sget v0, Lcom/zdworks/android/calendartable/R$id;->calendarContainer:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/calendartable/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/zdworks/android/calendartable/util/ViewUtils;->fixBackgroundRepeat(Landroid/view/View;)V

    .line 38
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/SampleActivity;->initCalendarView()V

    .line 39
    return-void
.end method
