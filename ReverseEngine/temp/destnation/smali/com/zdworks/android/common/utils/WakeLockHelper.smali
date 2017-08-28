.class public Lcom/zdworks/android/common/utils/WakeLockHelper;
.super Ljava/lang/Object;
.source "WakeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLockHelper"


# instance fields
.field private mAnimationUtils:Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;

    invoke-direct {v0, p0, p1}, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;-><init>(Lcom/zdworks/android/common/utils/WakeLockHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mAnimationUtils:Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;

    .line 29
    invoke-direct {p0, p1}, Lcom/zdworks/android/common/utils/WakeLockHelper;->load(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/zdworks/android/common/utils/WakeLockHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-class v1, Lcom/zdworks/android/common/utils/WakeLockHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/zdworks/android/common/utils/WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/zdworks/android/common/utils/WakeLockHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .parameter "context"

    .prologue
    .line 81
    const-class v2, Lcom/zdworks/android/common/utils/WakeLockHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    .local v0, waker:Landroid/os/PowerManager$WakeLock;
    monitor-exit v2

    return-object v0

    .line 81
    .end local v0           #waker:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private load(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 35
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 40
    const v1, 0x3000001a

    invoke-direct {p0, p1, v1}, Lcom/zdworks/android/common/utils/WakeLockHelper;->setWakeLockMode(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method private declared-synchronized setWakeLockMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "nMode"

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    .local v0, isHeld:Z
    :try_start_0
    iget-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    iget-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 100
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    if-eqz v0, :cond_2

    .line 102
    iget-object v2, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    monitor-exit p0

    return-void

    .line 89
    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized disableKeyguard()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    const-string v0, "WakeLockHelper"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mAnimationUtils:Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;

    invoke-virtual {v0}, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->turnOff()V

    .line 56
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 57
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableKeyguard()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v0, "WakeLockHelper"

    const-string v1, "Acquiring wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mAnimationUtils:Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;

    invoke-virtual {v0}, Lcom/zdworks/android/common/utils/WakeLockHelper$ScreenAnimationUtils;->recover()V

    .line 69
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "WakeLockHelper"

    const-string v1, "enableKeyguard isheld"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeld()Z
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseWakeLock()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zdworks/android/common/utils/WakeLockHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
