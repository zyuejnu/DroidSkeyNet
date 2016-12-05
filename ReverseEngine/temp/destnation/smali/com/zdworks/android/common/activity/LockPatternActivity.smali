.class public Lcom/zdworks/android/common/activity/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/zdworks/android/common/widget/LockPatternView$OnPatternListener;


# static fields
.field public static final AUTO_FINISH_TIME:Ljava/lang/String; = "auto_finish_time"

.field public static final COOL_DOWN_COUNT:Ljava/lang/String; = "cool_down_count"

.field public static final COOL_DOWN_TIME:Ljava/lang/String; = "cool_down_time"

.field private static final DEFAULT_AUTO_FINISH_TIME:I = 0x0

.field private static final DEFAULT_COOL_DOWN_COUNT:I = 0x5

.field private static final DEFAULT_COOL_DOWN_TIME:I = 0x927c0

.field private static final DEFAULT_MIN_INPUT_COUNT:I = 0x4

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DIGEST_TYPE:Ljava/lang/String; = "digest_type"

.field public static final DIGEST_TYPE_MD5:I = 0x1

.field public static final DIGEST_TYPE_NONE:I = 0x0

.field public static final DIGEST_TYPE_SHA1:I = 0x2

.field public static final DIGEST_TYPE_SHA256:I = 0x3

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INPUT_TYPE:Ljava/lang/String; = "input_type"

.field public static final INPUT_TYPE_AUTHENTICATE:I = 0x1

.field public static final INPUT_TYPE_SETTING:I = 0x2

.field public static final IS_IN_STEALTH_MODE:Ljava/lang/String; = "is_in_stealth_mode"

.field public static final IS_KEEP_SCREEN_UNLOCK:Ljava/lang/String; = "is_keep_screen_unlock"

.field public static final MIN_INPUT_COUNT:Ljava/lang/String; = "min_input_count"

.field public static final ON_FINISH_LISTENER:Ljava/lang/String; = "on_finish_listener"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field private static final RESULT_VALUE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LockPatternActivity"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private description:Ljava/lang/String;

.field private mAutoFinishTime:J

.field private mCoolDownCount:I

.field private mCoolDownTime:I

.field private mData:Landroid/os/Bundle;

.field private mDescriptionView:Landroid/widget/TextSwitcher;

.field private mDigestType:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInStealthMode:Z

.field private mInputTime:J

.field private mInputType:I

.field private mIsKeepScreenUnlock:Z

.field private mListener:Ljava/io/Serializable;

.field private mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

.field private mMessageDigest:Ljava/security/MessageDigest;

.field private mMinInputCount:I

.field private mOrientation:I

.field private mPassword:Ljava/lang/String;

.field private mResultCode:I

.field private mTitle:Ljava/lang/String;

.field private mWakeLockHelper:Lcom/zdworks/android/common/utils/WakeLockHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/common/activity/LockPatternActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finishIfTimeOut()V

    return-void
.end method

.method private finishIfTimeOut()V
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mAutoFinishTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finish()V

    .line 429
    :cond_0
    return-void
.end method

.method public static getAuthIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "password"

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zdworks/android/common/activity/LockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "input_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    return-object v0
.end method

.method private getInputPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v1, :cond_0

    .line 483
    .end local p1
    :goto_0
    return-object p1

    .line 482
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 483
    .local v0, result:[B
    invoke-static {v0}, Lcom/zdworks/jvm/common/utils/HashUtils;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getSettingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zdworks/android/common/activity/LockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "input_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    return-object v0
.end method

.method private handleAuth(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget v0, Lcom/zdworks/android/common/R$string;->lock_pattern_auth_success:I

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(I)V

    .line 462
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResultEx(I)V

    .line 463
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finish()V

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    sget v0, Lcom/zdworks/android/common/R$string;->lock_pattern_auth_fail:I

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(I)V

    .line 466
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    sget-object v1, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/widget/LockPatternView;->setDisplayMode(Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;)V

    goto :goto_0
.end method

.method private handleSettingPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 443
    iput-object p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    .line 444
    sget v1, Lcom/zdworks/android/common/R$string;->lock_pattern_confirm_password:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(I)V

    .line 457
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    sget v1, Lcom/zdworks/android/common/R$string;->lock_pattern_password_success:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(I)V

    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 451
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finish()V

    goto :goto_0

    .line 453
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    sget v1, Lcom/zdworks/android/common/R$string;->lock_pattern_password_not_match:I

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(I)V

    .line 454
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    sget-object v2, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zdworks/android/common/widget/LockPatternView;->setDisplayMode(Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;)V

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private initActivity()V
    .locals 2

    .prologue
    .line 258
    sget v0, Lcom/zdworks/android/common/R$layout;->lock_pattern:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setContentView(I)V

    .line 259
    sget v0, Lcom/zdworks/android/common/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mDescriptionView:Landroid/widget/TextSwitcher;

    .line 260
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mDescriptionView:Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/zdworks/android/common/activity/LockPatternActivity$1;

    invoke-direct {v1, p0}, Lcom/zdworks/android/common/activity/LockPatternActivity$1;-><init>(Lcom/zdworks/android/common/activity/LockPatternActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 265
    invoke-static {p0}, Lcom/zdworks/android/common/utils/WakeLockHelper;->getInstance(Landroid/content/Context;)Lcom/zdworks/android/common/utils/WakeLockHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mWakeLockHelper:Lcom/zdworks/android/common/utils/WakeLockHelper;

    .line 266
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    iput-object p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mData:Landroid/os/Bundle;

    .line 270
    const-string v3, "min_input_count"

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMinInputCount:I

    .line 271
    const-string v3, "digest_type"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mDigestType:I

    .line 272
    const-string v3, "input_type"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputType:I

    .line 273
    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputType:I

    if-ne v3, v8, :cond_2

    const-string v3, "password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    .line 274
    const-string v3, "cool_down_count"

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mCoolDownCount:I

    .line 275
    const-string v3, "cool_down_count"

    const v5, 0x927c0

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mCoolDownTime:I

    .line 276
    const-string v3, "auto_finish_time"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mAutoFinishTime:J

    .line 277
    const-string v3, "is_keep_screen_unlock"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIsKeepScreenUnlock:Z

    .line 278
    const-string v3, "is_in_stealth_mode"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInStealthMode:Z

    .line 280
    const-string v3, "icon"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 281
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 282
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 291
    :goto_1
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mTitle:Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    :cond_0
    :goto_2
    const-string v3, "description"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->description:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->description:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 302
    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputType:I

    packed-switch v3, :pswitch_data_0

    .line 308
    sget v3, Lcom/zdworks/android/common/R$string;->lock_pattern_auth_description:I

    invoke-virtual {p0, v3}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->description:Ljava/lang/String;

    .line 313
    :cond_1
    :goto_3
    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputType:I

    if-ne v3, v8, :cond_4

    iget-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 314
    const-string v3, "LockPatternActivity"

    const-string v4, "the input-type of INPUT_TYPE_AUTHENTICATE need a password"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finish()V

    .line 342
    :goto_4
    return-void

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v3, v4

    .line 273
    goto/16 :goto_0

    .line 285
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LockPatternActivity"

    const-string v5, "Error on loading icon"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 295
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 296
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LockPatternActivity"

    const-string v5, "Error on loading label"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 304
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    sget v3, Lcom/zdworks/android/common/R$string;->lock_pattern_setting_description:I

    invoke-virtual {p0, v3}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->description:Ljava/lang/String;

    goto :goto_3

    .line 320
    :cond_4
    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mDigestType:I

    packed-switch v3, :pswitch_data_1

    .line 331
    const/4 v0, 0x0

    .line 335
    .local v0, algorithm:Ljava/lang/String;
    :goto_5
    if-nez v0, :cond_5

    move-object v3, v4

    :goto_6
    :try_start_2
    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 341
    :goto_7
    const-string v3, "on_finish_listener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    iput-object v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mListener:Ljava/io/Serializable;

    goto :goto_4

    .line 322
    .end local v0           #algorithm:Ljava/lang/String;
    :pswitch_1
    const-string v0, "md5"

    .line 323
    .restart local v0       #algorithm:Ljava/lang/String;
    goto :goto_5

    .line 325
    .end local v0           #algorithm:Ljava/lang/String;
    :pswitch_2
    const-string v0, "sha1"

    .line 326
    .restart local v0       #algorithm:Ljava/lang/String;
    goto :goto_5

    .line 328
    .end local v0           #algorithm:Ljava/lang/String;
    :pswitch_3
    const-string v0, "sha256"

    .line 329
    .restart local v0       #algorithm:Ljava/lang/String;
    goto :goto_5

    .line 335
    :cond_5
    :try_start_3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_6

    .line 336
    :catch_2
    move-exception v2

    .line 337
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "LockPatternActivity"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iput-object v4, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMessageDigest:Ljava/security/MessageDigest;

    goto :goto_7

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 320
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initLockPatternView()V
    .locals 2

    .prologue
    .line 345
    sget v0, Lcom/zdworks/android/common/R$id;->lock_pattern_view:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/common/widget/LockPatternView;

    iput-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    .line 346
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    invoke-virtual {v0, p0}, Lcom/zdworks/android/common/widget/LockPatternView;->setOnPatternListener(Lcom/zdworks/android/common/widget/LockPatternView$OnPatternListener;)V

    .line 347
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/zdworks/android/common/widget/LockPatternView;->enableInput()V

    .line 348
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    iget-boolean v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInStealthMode:Z

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/widget/LockPatternView;->setInStealthMode(Z)V

    .line 349
    return-void
.end method

.method private initOtherViews()V
    .locals 3

    .prologue
    .line 352
    sget v2, Lcom/zdworks/android/common/R$id;->icon:I

    invoke-virtual {p0, v2}, Lcom/zdworks/android/common/activity/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 353
    .local v0, iconView:Landroid/widget/ImageView;
    sget v2, Lcom/zdworks/android/common/R$id;->title:I

    invoke-virtual {p0, v2}, Lcom/zdworks/android/common/activity/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 355
    .local v1, titleView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->description:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private isPasswordAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMinInputCount:I

    if-ge v2, v3, :cond_0

    .line 433
    sget v2, Lcom/zdworks/android/common/R$string;->lock_pattern_password_too_less:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mMinInputCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mLockPatternView:Lcom/zdworks/android/common/widget/LockPatternView;

    sget-object v2, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zdworks/android/common/widget/LockPatternView;->setDisplayMode(Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;)V

    .line 437
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private lockOrientation()V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mOrientation:I

    .line 369
    iget v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 371
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 374
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onFinish(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 527
    iget-object v7, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mListener:Ljava/io/Serializable;

    if-nez v7, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v6, 0x0

    .line 530
    .local v6, target:Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mListener:Ljava/io/Serializable;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 531
    .local v5, method:Ljava/lang/reflect/Method;
    const-class v7, Lcom/zdworks/android/common/activity/LockPatternFinishListener;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 532
    .local v0, annotation:Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_3

    .line 533
    move-object v6, v5

    .line 538
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_2
    if-eqz v6, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mListener:Ljava/io/Serializable;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v2

    .line 540
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "LockPatternActivity"

    const-string v8, "error onFinish"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 530
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #annotation:Ljava/lang/annotation/Annotation;
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private refreshInputTime()V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputTime:J

    .line 423
    return-void
.end method

.method private setDescription(I)V
    .locals 1
    .parameter "descRes"

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setDescription(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "desc"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mDescriptionView:Landroid/widget/TextSwitcher;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method private setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResult(I)V

    .line 510
    iput p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mResultCode:I

    .line 511
    return-void
.end method

.method private setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResult(ILandroid/content/Intent;)V

    .line 515
    iput p1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mResultCode:I

    .line 516
    return-void
.end method

.method private startAutoFinishTimerIfNeed()V
    .locals 4

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mAutoFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zdworks/android/common/activity/LockPatternActivity$2;

    invoke-direct {v1, p0}, Lcom/zdworks/android/common/activity/LockPatternActivity$2;-><init>(Lcom/zdworks/android/common/activity/LockPatternActivity;)V

    iget-wide v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mAutoFinishTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_0
    return-void
.end method

.method private unlockOrientation()V
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setRequestedOrientation(I)V

    .line 384
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 505
    iget v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mResultCode:I

    iget-object v1, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mData:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->onFinish(ILandroid/os/Bundle;)V

    .line 506
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResultEx(I)V

    .line 224
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, data:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 226
    const-string v1, "LockPatternActivity"

    const-string v2, "There is no extra-data in Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->finish()V

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->initActivity()V

    .line 230
    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->initData(Landroid/os/Bundle;)V

    .line 231
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->initLockPatternView()V

    .line 232
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->initOtherViews()V

    .line 233
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->refreshInputTime()V

    .line 234
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->startAutoFinishTimerIfNeed()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 520
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 521
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->setResultEx(I)V

    .line 522
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->refreshInputTime()V

    .line 390
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/zdworks/android/common/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, input:Ljava/lang/String;
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->unlockOrientation()V

    .line 397
    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->isPasswordAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0, v0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->getInputPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, password:Ljava/lang/String;
    iget v2, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mInputType:I

    packed-switch v2, :pswitch_data_0

    .line 405
    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->handleAuth(Ljava/lang/String;)V

    .line 408
    :goto_1
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->startAutoFinishTimerIfNeed()V

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/zdworks/android/common/activity/LockPatternActivity;->handleSettingPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->lockOrientation()V

    .line 364
    invoke-direct {p0}, Lcom/zdworks/android/common/activity/LockPatternActivity;->refreshInputTime()V

    .line 365
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 241
    iget-boolean v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIsKeepScreenUnlock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mWakeLockHelper:Lcom/zdworks/android/common/utils/WakeLockHelper;

    invoke-virtual {v0}, Lcom/zdworks/android/common/utils/WakeLockHelper;->disableKeyguard()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 253
    iget-boolean v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mIsKeepScreenUnlock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zdworks/android/common/activity/LockPatternActivity;->mWakeLockHelper:Lcom/zdworks/android/common/utils/WakeLockHelper;

    invoke-virtual {v0}, Lcom/zdworks/android/common/utils/WakeLockHelper;->enableKeyguard()V

    .line 255
    :cond_0
    return-void
.end method
