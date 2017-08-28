.class Lcom/zdworks/android/zdclock/adapter/ClockAdapter$Holder;
.super Ljava/lang/Object;
.source "ClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/zdclock/adapter/ClockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field disabledView:Landroid/view/View;

.field historyIcon:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field info:Landroid/widget/TextView;

.field ringType:Landroid/widget/ImageView;

.field securityView:Landroid/view/View;

.field timeLt:Landroid/widget/TextView;

.field timeMd:Landroid/widget/TextView;

.field timeRt:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
