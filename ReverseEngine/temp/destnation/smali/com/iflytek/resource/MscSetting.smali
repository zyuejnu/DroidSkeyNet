.class public Lcom/iflytek/resource/MscSetting;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/resource/MscSetting;->a:Z

    sput-boolean v1, Lcom/iflytek/resource/MscSetting;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/resource/MscSetting;->c:Z

    sput-boolean v1, Lcom/iflytek/resource/MscSetting;->d:Z

    sput-boolean v1, Lcom/iflytek/resource/MscSetting;->e:Z

    sput-boolean v1, Lcom/iflytek/resource/MscSetting;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCheckNetwork(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->f:Z

    return-void
.end method

.method public static setLanguage(I)V
    .locals 0

    invoke-static {p0}, Lcom/iflytek/resource/a;->a(I)V

    return-void
.end method

.method public static setLogSaved(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->c:Z

    return-void
.end method

.method public static setModeComplex(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->a:Z

    return-void
.end method

.method public static setShowError(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->d:Z

    return-void
.end method

.method public static setShowErrorCode(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->e:Z

    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/resource/MscSetting;->b:Z

    return-void
.end method
