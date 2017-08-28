.class Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;
.super Ljava/lang/Object;
.source "MissClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;

.field timeStr:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;->this$0:Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zdworks/android/zdclock/adapter/MissClockAdapter$Holder;-><init>(Lcom/zdworks/android/zdclock/adapter/MissClockAdapter;)V

    return-void
.end method
