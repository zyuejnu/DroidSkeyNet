.class public Lcom/zdworks/android/common/update/UpdateLogic;
.super Ljava/lang/Object;
.source "UpdateLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;,
        Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    }
.end annotation


# static fields
.field private static final GOOGLE_MARKET_PKG:Ljava/lang/String; = "com.android.vending"

.field private static final LOGIC:Lcom/zdworks/android/common/update/UpdateLogic; = null

.field static final PACKAGE_FILE_NAME:Ljava/lang/String; = "newpackage.apk"

.field public static final UPDATE_RESULT_AVAILABLE:I = 0x1

.field public static final UPDATE_RESULT_CHECKFILE_ERROR:I = -0x2

.field public static final UPDATE_RESULT_IDLE:I = 0x3

.field public static final UPDATE_RESULT_JUMP_TO_MARKET:I = 0x4

.field public static final UPDATE_RESULT_NETWORK_ERROR:I = -0x1

.field public static final UPDATE_RESULT_NOUPDATE:I = 0x0

.field public static final UPDATE_RESULT_PKGFILE_ERROR:I = -0x3

.field public static final UPDATE_RESULT_SPACE_ERROR:I = -0x4

.field public static final UPDATE_RESULT_SUCCESS:I = 0x2

.field public static final UPDATE_RESULT_USE_ERROR:I = -0x5

.field public static final UPDATE_STATE_CHECK:I = 0x1

.field public static final UPDATE_STATE_DOWNLOAD:I = 0x2

.field public static final UPDATE_STATE_WAIT:I = 0x0

.field public static final UPDATE_WAY_CHECK:I = 0x3

.field private static iupdate:Lcom/zdworks/android/common/update/IUpdate;


# instance fields
.field private channel:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mProperties:Ljava/util/Properties;

.field private model:Lcom/zdworks/android/common/update/UpdateModel;

.field private newPkgPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/zdworks/android/common/update/UpdateLogic;

    invoke-direct {v0}, Lcom/zdworks/android/common/update/UpdateLogic;-><init>()V

    sput-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->LOGIC:Lcom/zdworks/android/common/update/UpdateLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/zdworks/android/common/update/UpdateModel;

    invoke-direct {v0}, Lcom/zdworks/android/common/update/UpdateModel;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    .line 98
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 99
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/zdworks/android/common/update/UpdateLogic;)Lcom/zdworks/android/common/update/UpdateModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    return-object v0
.end method

.method static synthetic access$100()Lcom/zdworks/android/common/update/IUpdate;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/update/UpdateLogic;->updateFromSrv(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private addOfficialItem(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "cxt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;>;"
    new-instance v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    invoke-direct {v2, p0}, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;-><init>(Lcom/zdworks/android/common/update/UpdateLogic;)V

    .line 267
    .local v2, m:Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    sget v4, Lcom/zdworks/android/common/R$string;->update_from_srv_text:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->title:Ljava/lang/CharSequence;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 275
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->icon:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private checkSapce()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-static {}, Lcom/zdworks/android/common/DeviceUtils;->getSDCardFreeSizeKB()F

    move-result v2

    .line 379
    .local v2, remain:F
    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v4}, Lcom/zdworks/android/common/update/UpdateModel;->getSize()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 380
    .local v1, need:F
    const/high16 v4, 0x3f80

    add-float/2addr v4, v1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/zdworks/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 387
    .restart local v0       #dir:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getAppName(Landroid/content/Context;Ljava/lang/String;)Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    .locals 6
    .parameter "cxt"
    .parameter "pkgName"

    .prologue
    .line 216
    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 219
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    new-instance v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    invoke-direct {v2, p0}, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;-><init>(Lcom/zdworks/android/common/update/UpdateLogic;)V

    .line 224
    .local v2, item:Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    const-string v4, "com.android.vending"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/zdworks/android/common/R$string;->update_Recommend:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->title:Ljava/lang/CharSequence;

    .line 229
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->icon:Landroid/graphics/drawable/Drawable;

    .line 230
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #item:Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    :goto_1
    return-object v2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #item:Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getInstance(Lcom/zdworks/android/common/update/IUpdate;)Lcom/zdworks/android/common/update/UpdateLogic;
    .locals 1
    .parameter "update"

    .prologue
    .line 92
    if-eqz p0, :cond_0

    sput-object p0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    .line 93
    :cond_0
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->LOGIC:Lcom/zdworks/android/common/update/UpdateLogic;

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "30819f300d06092a864886f70d010101050003818d0030818902818100d4638a04a717a5a195b2cb589d010d669b40ade68b6c6b1e1a0c69286c974c332c88ce249fc4f284c345d6162ab3663ac4df45c8e016151cb0fe5a762f76f7ad95a1ea32163cc843aeb9472822254541f820b280af13a9c598b4c1b33b76adab06561d24b5080bcc15009313119c2eadf662c7fd51f1e249b5fa08c2e7e3b8ef0203010001"

    return-object v0
.end method

.method private getMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "cxt"
    .parameter "marketName"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 357
    if-nez p2, :cond_0

    move-object v3, v4

    .line 371
    :goto_0
    return-object v3

    .line 359
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 363
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object v3, v4

    .line 369
    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    move-object v3, v4

    .line 371
    goto :goto_0
.end method

.method private isNeedUpdate()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 426
    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "versionCode"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, serverVersionCodeStr:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v5

    .line 430
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 431
    .local v2, serverVersionCode:I
    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/zdworks/android/common/Env;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 432
    .local v0, clientVersionCode:I
    if-gt v2, v0, :cond_2

    move v5, v6

    .line 433
    goto :goto_0

    .line 436
    :cond_2
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->channel:Ljava/lang/String;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "channel"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v6, v2}, Lcom/zdworks/android/common/update/UpdateModel;->setVersionCode(I)V

    .line 440
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "versionName"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setVersionName(Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v7, "size"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, size:Ljava/lang/String;
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setSize(I)V

    .line 443
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v9, "log"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zdworks/android/common/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setDescription(Ljava/lang/String;)V

    .line 445
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "mode"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setMode(I)V

    .line 446
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "marketName"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setMarketName(Ljava/lang/String;)V

    .line 447
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "path"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setServerApkPath(Ljava/lang/String;)V

    .line 448
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const-string v8, "apkSHA256"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setApkSHA256(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 449
    .end local v0           #clientVersionCode:I
    .end local v2           #serverVersionCode:I
    .end local v4           #size:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private isPackageCorrect(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 461
    iget-object v5, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v5}, Lcom/zdworks/android/common/update/UpdateModel;->getApkSHA256()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, Sha256:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/zdworks/jvm/common/utils/HashUtils;->digestSha256(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, newSha256:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 471
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #newSha256:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 465
    :catch_0
    move-exception v1

    .line 467
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method private setNetworkError()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 539
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 540
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 541
    :cond_0
    return-void
.end method

.method private updateByChoose(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"
    .parameter "cxt"
    .parameter "uri"
    .parameter "updateUrl"

    .prologue
    .line 235
    invoke-direct {p0, p2, p1, p3}, Lcom/zdworks/android/common/update/UpdateLogic;->getMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 236
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 237
    const/4 v4, 0x0

    .line 262
    :goto_0
    return v4

    .line 238
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/zdworks/android/common/R$string;->update_way:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;>;"
    invoke-direct {p0, p2, p1}, Lcom/zdworks/android/common/update/UpdateLogic;->getAppName(Landroid/content/Context;Ljava/lang/String;)Lcom/zdworks/android/common/update/UpdateLogic$MarketMode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0, p2, v3}, Lcom/zdworks/android/common/update/UpdateLogic;->addOfficialItem(Landroid/content/Context;Ljava/util/List;)V

    .line 243
    new-instance v0, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;

    invoke-direct {v0, p0, p2, v3}, Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;-><init>(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Ljava/util/List;)V

    .line 245
    .local v0, adapter:Lcom/zdworks/android/common/update/UpdateLogic$UpdateAdapter;
    new-instance v4, Lcom/zdworks/android/common/update/UpdateLogic$1;

    invoke-direct {v4, p0, p2, v2, p4}, Lcom/zdworks/android/common/update/UpdateLogic$1;-><init>(Lcom/zdworks/android/common/update/UpdateLogic;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 262
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateByMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cxt"
    .parameter "marketUrl"
    .parameter "updateUrl"

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v1}, Lcom/zdworks/android/common/update/UpdateModel;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    return v0

    .line 198
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/update/UpdateLogic;->updateFromCrt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/update/UpdateLogic;->updateFromGoogle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v0}, Lcom/zdworks/android/common/update/UpdateModel;->getMarketName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/zdworks/android/common/update/UpdateLogic;->updateByChoose(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_4
    const-string v0, "com.android.vending"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/zdworks/android/common/update/UpdateLogic;->updateByChoose(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateFromCrt(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "cxt"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v2}, Lcom/zdworks/android/common/update/UpdateModel;->getMarketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Lcom/zdworks/android/common/update/UpdateLogic;->getMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 345
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 346
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v2, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 347
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v1, :cond_0

    .line 348
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 349
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    const/4 v1, 0x1

    .line 352
    :cond_1
    return v1
.end method

.method private updateFromGoogle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "cxt"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 314
    const-string v2, "com.android.vending"

    invoke-direct {p0, p1, v2, p2}, Lcom/zdworks/android/common/update/UpdateLogic;->getMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/zdworks/android/common/GoogleAccountUtils;->isBinded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 317
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v2, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 318
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 321
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    const/4 v1, 0x1

    .line 324
    :cond_1
    return v1
.end method

.method private updateFromSrv(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "cxt"
    .parameter "updateUrl"

    .prologue
    const/4 v3, 0x2

    .line 328
    invoke-direct {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->checkSapce()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 330
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 331
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v1, v3}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zdworks/android/common/update/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "URL"

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v2}, Lcom/zdworks/android/common/update/UpdateModel;->getServerApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public cancelMonitor()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    sput-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    .line 621
    return-void
.end method

.method public cancelUpdate()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 615
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 616
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 617
    :cond_0
    return-void
.end method

.method public doUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "cxt"
    .parameter "marketUrl"
    .parameter "updateUrl"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/zdworks/android/common/update/UpdateLogic;->updateByMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/zdworks/android/common/update/UpdateLogic;->updateFromSrv(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIniData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;)V
    .locals 2
    .parameter "downloadFile"
    .parameter "down"

    .prologue
    .line 476
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    .line 477
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->mProperties:Ljava/util/Properties;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zdworks/android/common/update/UpdateLogic;->saveIniData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;Ljava/util/Properties;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handleIniData()V

    .line 479
    :cond_0
    return-void
.end method

.method public getPkgData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;)V
    .locals 8
    .parameter "downloadFile"
    .parameter "down"

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 566
    :try_start_0
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 567
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 568
    sget-object v6, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    :cond_0
    invoke-interface {p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 597
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handlePkgData()V

    .line 599
    :goto_0
    return-void

    .line 571
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    const-string v7, "newpackage.apk"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 573
    .local v5, stream:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 574
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 575
    .local v4, readLength:I
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setLoaded(I)V

    .line 576
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    .line 577
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v6}, Lcom/zdworks/android/common/update/UpdateModel;->getStat()I

    move-result v6

    if-nez v6, :cond_4

    .line 584
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 585
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 586
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    .line 587
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 596
    invoke-interface {p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 597
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handlePkgData()V

    goto :goto_0

    .line 579
    :cond_4
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 580
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    iget-object v7, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v7}, Lcom/zdworks/android/common/update/UpdateModel;->getLoaded()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setLoaded(I)V

    .line 582
    sget-object v6, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateProgress(Lcom/zdworks/android/common/update/UpdateModel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 589
    .end local v0           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #readLength:I
    .end local v5           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 590
    .local v2, e1:Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 596
    invoke-interface {p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 597
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handlePkgData()V

    goto :goto_0

    .line 592
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 593
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 596
    invoke-interface {p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 597
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handlePkgData()V

    goto :goto_0

    .line 596
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-interface {p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 597
    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->handlePkgData()V

    throw v6
.end method

.method public getUpdateInstallIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    return-object v0
.end method

.method public getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v0}, Lcom/zdworks/android/common/update/UpdateModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIniData()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v0}, Lcom/zdworks/android/common/update/UpdateModel;->getStat()I

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-direct {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->isNeedUpdate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 558
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 559
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    goto :goto_0
.end method

.method public handlePkgData()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 608
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v0, :cond_0

    .line 609
    sget-object v0, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 611
    :cond_0
    return-void
.end method

.method public installPkg(Landroid/content/Context;)Z
    .locals 3
    .parameter "cxt"

    .prologue
    const/4 v0, 0x0

    .line 398
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    .line 399
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->newPkgPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zdworks/android/common/update/UpdateLogic;->isPackageCorrect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 401
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v1, v0}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 402
    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    invoke-virtual {p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateModel()Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zdworks/android/common/update/IUpdate;->handleUpdateResult(Lcom/zdworks/android/common/update/UpdateModel;)V

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/zdworks/android/common/update/UpdateLogic;->getUpdateInstallIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveIniData(Ljava/io/InputStream;Lcom/zdworks/jvm/common/net/IDownLoad;Ljava/util/Properties;Z)Z
    .locals 16
    .parameter "downloadFile"
    .parameter "down"
    .parameter "properties"
    .parameter "needDecrypt"

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/zdworks/android/common/update/UpdateLogic;->setNetworkError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v14, 0x0

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 534
    :goto_0
    return v14

    .line 489
    :cond_0
    if-eqz p4, :cond_9

    .line 490
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v8, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 491
    .local v8, iniFileReader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v14, 0x100

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 493
    .local v2, buff:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, line:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 494
    const-string v14, "sign"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 497
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 498
    :cond_2
    if-nez v11, :cond_4

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/zdworks/android/common/update/UpdateLogic;->setNetworkError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    const/4 v14, 0x0

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    goto :goto_0

    .line 495
    :cond_3
    :try_start_2
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 528
    .end local v2           #buff:Ljava/lang/StringBuilder;
    .end local v8           #iniFileReader:Ljava/io/BufferedReader;
    .end local v11           #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 530
    .local v4, e:Ljava/io/IOException;
    const/4 v14, 0x0

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    goto :goto_0

    .line 502
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #buff:Ljava/lang/StringBuilder;
    .restart local v8       #iniFileReader:Ljava/io/BufferedReader;
    .restart local v11       #line:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 503
    .local v7, iniFile:[B
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v14}, Lcom/zdworks/jvm/common/utils/HashUtils;->digestSha256(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 505
    .local v9, iniSHA256Client:[B
    const-string v14, "sign="

    const-string v15, ""

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 506
    .local v12, signStr:Ljava/lang/String;
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/zdworks/jvm/common/utils/HashUtils;->hexStr2bytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {p0 .. p0}, Lcom/zdworks/android/common/update/UpdateLogic;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/zdworks/jvm/common/utils/RSAUtils;->decryptRSA(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 507
    .local v6, in:Ljava/io/InputStream;
    const/16 v14, 0x7f

    new-array v3, v14, [B

    .line 508
    .local v3, buffer:[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 509
    const/4 v13, 0x0

    .line 510
    .local v13, start:I
    :goto_2
    array-length v14, v3

    if-ge v13, v14, :cond_5

    .line 511
    aget-byte v14, v3, v13

    const/4 v15, 0x1

    if-le v14, v15, :cond_6

    .line 514
    :cond_5
    const/16 v14, 0x40

    new-array v10, v14, [B

    .line 515
    .local v10, iniSHA256Server:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v14, v10

    if-ge v5, v14, :cond_7

    .line 516
    add-int v14, v5, v13

    aget-byte v14, v3, v14

    aput-byte v14, v10, v5

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 510
    .end local v5           #i:I
    .end local v10           #iniSHA256Server:[B
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 518
    .restart local v5       #i:I
    .restart local v10       #iniSHA256Server:[B
    :cond_7
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 519
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 527
    .end local v2           #buff:Ljava/lang/StringBuilder;
    .end local v3           #buffer:[B
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #iniFile:[B
    .end local v8           #iniFileReader:Ljava/io/BufferedReader;
    .end local v9           #iniSHA256Client:[B
    .end local v10           #iniSHA256Server:[B
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #signStr:Ljava/lang/String;
    .end local v13           #start:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    .line 534
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 521
    .restart local v2       #buff:Ljava/lang/StringBuilder;
    .restart local v3       #buffer:[B
    .restart local v5       #i:I
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #iniFile:[B
    .restart local v8       #iniFileReader:Ljava/io/BufferedReader;
    .restart local v9       #iniSHA256Client:[B
    .restart local v10       #iniSHA256Server:[B
    .restart local v11       #line:Ljava/lang/String;
    .restart local v12       #signStr:Ljava/lang/String;
    .restart local v13       #start:I
    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/zdworks/android/common/update/UpdateLogic;->setNetworkError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 522
    const/4 v14, 0x0

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    goto/16 :goto_0

    .line 525
    .end local v2           #buff:Ljava/lang/StringBuilder;
    .end local v3           #buffer:[B
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #iniFile:[B
    .end local v8           #iniFileReader:Ljava/io/BufferedReader;
    .end local v9           #iniSHA256Client:[B
    .end local v10           #iniSHA256Server:[B
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #signStr:Ljava/lang/String;
    .end local v13           #start:I
    :cond_9
    :try_start_5
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 532
    :catchall_0
    move-exception v14

    invoke-interface/range {p2 .. p2}, Lcom/zdworks/jvm/common/net/IDownLoad;->downloadFinish()V

    throw v14
.end method

.method public setMonitor(Lcom/zdworks/android/common/update/IUpdate;)V
    .locals 0
    .parameter "update"

    .prologue
    .line 624
    sput-object p1, Lcom/zdworks/android/common/update/UpdateLogic;->iupdate:Lcom/zdworks/android/common/update/IUpdate;

    .line 625
    return-void
.end method

.method public setUpdateModel(Lcom/zdworks/android/common/update/UpdateModel;)V
    .locals 0
    .parameter "updateModel"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    .line 119
    return-void
.end method

.method public updateCheck(Landroid/content/Context;Ljava/lang/String;Lcom/zdworks/android/common/update/UpdateCheckInfo;)V
    .locals 10
    .parameter "cxt"
    .parameter "updateUrl"
    .parameter "info"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 145
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/zdworks/android/common/update/UpdateCheckInfo;->channel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v4, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 150
    iget-object v4, p3, Lcom/zdworks/android/common/update/UpdateCheckInfo;->channel:Ljava/lang/String;

    iput-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->channel:Ljava/lang/String;

    .line 151
    const/4 v4, 0x7

    new-array v0, v4, [[Ljava/lang/Object;

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "uuid"

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/zdworks/android/common/ZDWorkdsUUID;->getUUIDNoNULL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v4, v0, v8

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "la"

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/zdworks/android/common/Env;->getCounty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v4, v0, v7

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "pm"

    aput-object v5, v4, v8

    invoke-static {}, Lcom/zdworks/android/common/Env;->getModels()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v4, v0, v9

    const/4 v4, 0x3

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "sv"

    aput-object v6, v5, v8

    invoke-static {}, Lcom/zdworks/android/common/Env;->getSDKLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v4, 0x4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "av"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/zdworks/android/common/Env;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "vc"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/zdworks/android/common/Env;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v5, v0, v4

    const/4 v5, 0x6

    new-array v6, v9, [Ljava/lang/Object;

    const-string v4, "fu"

    aput-object v4, v6, v8

    iget-boolean v4, p3, Lcom/zdworks/android/common/update/UpdateCheckInfo;->forceUpdate:Z

    if-eqz v4, :cond_0

    const-string v4, "1"

    :goto_0
    aput-object v4, v6, v7

    aput-object v6, v0, v5

    .line 160
    .local v0, datas:[[Ljava/lang/Object;
    invoke-static {v3, v0}, Lcom/zdworks/jvm/common/utils/NetUtils;->buildURL(Ljava/lang/String;[[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, uri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    const-class v5, Lcom/zdworks/android/common/update/DownloadService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "URL"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v4, "type"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v4, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void

    .line 151
    .end local v0           #datas:[[Ljava/lang/Object;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Ljava/lang/String;
    :cond_0
    const-string v4, "0"

    goto :goto_0
.end method

.method public updateCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cxt"
    .parameter "updateUrl"
    .parameter "iniFile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 129
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/zdworks/android/common/update/UpdateLogic;->channel:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->model:Lcom/zdworks/android/common/update/UpdateModel;

    invoke-virtual {v2, v4}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    const-class v3, Lcom/zdworks/android/common/update/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, iniUrl:Ljava/lang/String;
    const-string v2, "URL"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    const-string v2, "URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateLogic;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void
.end method
