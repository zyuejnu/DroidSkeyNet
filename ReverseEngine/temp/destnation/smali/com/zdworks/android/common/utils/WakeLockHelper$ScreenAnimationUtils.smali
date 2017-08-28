.class Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;
.super Ljava/lang/Object;
.source "WakeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/utils/WakeLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenAnimationUtils"
.end annotation


# static fields
.field private static final OFF_KEY:Ljava/lang/String; = "electron_beam_animation_off"

.field private static final ON_KEY:Ljava/lang/String; = "electron_beam_animation_on"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastOffStateValue:I

.field private mLastOnStateValue:I

.field final synthetic this$0:Lcom/zdworks/android/common/utils/WakeLockHelper;


# direct methods
.method public constructor <init>(Lcom/zdworks/android/common/utils/WakeLockHelper;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 128
    iput-object p1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->this$0:Lcom/zdworks/android/common/utils/WakeLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOnStateValue:I

    .line 122
    iput v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOffStateValue:I

    .line 129
    iput-object p2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method


# virtual methods
.method public recover()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, cr:Landroid/content/ContentResolver;
    iget v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOnStateValue:I

    if-lez v1, :cond_0

    .line 149
    const-string v1, "electron_beam_animation_on"

    iget v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOnStateValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    :cond_0
    iget v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOffStateValue:I

    if-lez v1, :cond_1

    .line 152
    const-string v1, "electron_beam_animation_off"

    iget v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOffStateValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    :cond_1
    return-void
.end method

.method public turnOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "electron_beam_animation_on"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOnStateValue:I

    .line 135
    const-string v1, "electron_beam_animation_off"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOffStateValue:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOffStateValue:I

    if-lez v1, :cond_0

    .line 139
    const-string v1, "electron_beam_animation_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    :cond_0
    iget v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->mLastOnStateValue:I

    if-lez v1, :cond_1

    .line 142
    const-string v1, "electron_beam_animation_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method
