.class Lcom/zdworks/android/common/report/ReportManager$PrefeManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/report/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefeManager"
.end annotation


# static fields
.field private static final REPF_KEY_LAST_REPORT_TIME:Ljava/lang/String; = "last_report_time"


# instance fields
.field private sp:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/zdworks/android/common/report/ReportManager;


# direct methods
.method private constructor <init>(Lcom/zdworks/android/common/report/ReportManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;->this$0:Lcom/zdworks/android/common/report/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;->sp:Landroid/content/SharedPreferences;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/zdworks/android/common/report/ReportManager;Landroid/content/Context;Lcom/zdworks/android/common/report/ReportManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;-><init>(Lcom/zdworks/android/common/report/ReportManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLastReportTime()J
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zdworks/android/common/report/ReportManager$PrefeManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "last_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
