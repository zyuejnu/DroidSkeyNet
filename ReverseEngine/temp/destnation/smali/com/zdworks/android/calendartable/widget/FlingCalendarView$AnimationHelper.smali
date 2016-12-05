.class public Lcom/zdworks/android/calendartable/widget/FlingCalendarView$AnimationHelper;
.super Ljava/lang/Object;
.source "FlingCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/calendartable/widget/FlingCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHelper"
.end annotation


# instance fields
.field public inFromBottom:Landroid/view/animation/Animation;

.field public inFromLeft:Landroid/view/animation/Animation;

.field public inFromRight:Landroid/view/animation/Animation;

.field public inFromTop:Landroid/view/animation/Animation;

.field public outToBottom:Landroid/view/animation/Animation;

.field public outToLeft:Landroid/view/animation/Animation;

.field public outToRight:Landroid/view/animation/Animation;

.field public outToTop:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
