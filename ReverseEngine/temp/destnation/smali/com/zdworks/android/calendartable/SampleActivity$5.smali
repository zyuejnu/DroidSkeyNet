.class Lcom/zdworks/android/calendartable/SampleActivity$5;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/CalendarOnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zdworks/android/calendartable/SampleActivity;->initCalendarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zdworks/android/calendartable/SampleActivity;


# direct methods
.method constructor <init>(Lcom/zdworks/android/calendartable/SampleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$5;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 3
    .parameter "focusedCell"
    .parameter "info"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zdworks/android/calendartable/SampleActivity$5;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    #getter for: Lcom/zdworks/android/calendartable/SampleActivity;->mFocusedDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zdworks/android/calendartable/SampleActivity;->access$100(Lcom/zdworks/android/calendartable/SampleActivity;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p2, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    return-void
.end method
