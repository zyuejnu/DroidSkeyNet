.class public Lcom/zdworks/android/common/Env;
.super Ljava/lang/Object;
.source "Env.java"


# static fields
.field public static final ANDROID_1_5:I = 0x3

.field public static final ANDROID_1_6:I = 0x4

.field public static final ANDROID_2_0:I = 0x5

.field public static final ANDROID_2_0_1:I = 0x6

.field public static final ANDROID_2_1:I = 0x7

.field public static final ANDROID_2_2:I = 0x8

.field public static final ANDROID_2_3:I = 0x9

.field public static final ANDROID_2_3_3:I = 0xa

.field public static final ANDROID_3_0:I = 0xb

.field public static final ANDROID_4_0:I = 0xe

.field public static final ROOT_STATUS_FALSE:I = 0x0

.field public static final ROOT_STATUS_TRUE:I = 0x1

.field public static final ROOT_STATUS_UNCHECK:I = -0x2

.field public static final ROOT_STATUS_UNKNOWN:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final SDK_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Env"

.field private static rootStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zdworks/android/common/Env;->SDK_LEVEL:I

    .line 35
    const/4 v0, -0x2

    sput v0, Lcom/zdworks/android/common/Env;->rootStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCounty(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 80
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, countryCode:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    const-string v0, "null"

    .line 83
    :cond_0
    return-object v0
.end method

.method private static getExtraRom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static getModels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static getRom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static getRom64()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/zdworks/android/common/Env;->getRom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/zdworks/android/common/Env;->getExtraRom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 97
    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRootStatus()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 122
    sget v8, Lcom/zdworks/android/common/Env;->rootStatus:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 123
    const-string v8, "PATH"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, pathStr:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 127
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, "/sbin"

    aput-object v8, v6, v11

    const-string v8, "/system/sbin"

    aput-object v8, v6, v12

    const/4 v8, 0x2

    const-string v9, "/system/bin"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "/system/xbin"

    aput-object v9, v6, v8

    .line 128
    .local v6, paths:[Ljava/lang/String;
    sput v10, Lcom/zdworks/android/common/Env;->rootStatus:I

    .line 134
    :goto_0
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 135
    .local v4, path:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v7, suFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 138
    const/4 v8, 0x1

    sput v8, Lcom/zdworks/android/common/Env;->rootStatus:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #suFile:Ljava/io/File;
    :cond_0
    sget v8, Lcom/zdworks/android/common/Env;->rootStatus:I

    return v8

    .line 130
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #paths:[Ljava/lang/String;
    :cond_1
    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .restart local v6       #paths:[Ljava/lang/String;
    sput v11, Lcom/zdworks/android/common/Env;->rootStatus:I

    goto :goto_0

    .line 141
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v7       #suFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/SecurityException;
    const-string v8, "Env"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    sput v10, Lcom/zdworks/android/common/Env;->rootStatus:I

    .line 134
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static getSDKLevel()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/zdworks/android/common/Env;->SDK_LEVEL:I

    return v0
.end method

.method public static getTimeZone()I
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 73
    .local v0, timezone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    return v1
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 40
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "null"

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static hasMarket(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id="

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/zdworks/android/common/IntentUtils;->isIntentResoled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isBindGoogleAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    invoke-static {}, Lcom/zdworks/android/common/Env;->getSDKLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/zdworks/android/common/GoogleAccountUtils;->isBinded(Landroid/content/Context;)Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
