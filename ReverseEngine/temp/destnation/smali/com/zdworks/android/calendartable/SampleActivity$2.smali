.class Lcom/zdworks/android/calendartable/SampleActivity$2;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/zdworks/android/calendartable/callback/CalendarOnLongClickListener;


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
    .line 60
    iput-object p1, p0, Lcom/zdworks/android/calendartable/SampleActivity$2;->this$0:Lcom/zdworks/android/calendartable/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;Lcom/zdworks/android/calendartable/logic/CellInfo;)Z
    .locals 1
    .parameter "cell"
    .parameter "info"

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
