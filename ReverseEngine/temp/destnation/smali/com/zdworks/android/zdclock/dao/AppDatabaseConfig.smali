.class public final Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;
.super Ljava/lang/Object;
.source "AppDatabaseConfig.java"

# interfaces
.implements Lcom/zdworks/android/zdclock/dao/base/DatabaseConfig;


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "zdclock.db"

.field public static final DB_VERSION:I = 0x21

.field private static instance:Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;->instance:Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;

    invoke-direct {v0}, Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;-><init>()V

    sput-object v0, Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;->instance:Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;

    .line 53
    :cond_0
    sget-object v0, Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;->instance:Lcom/zdworks/android/zdclock/dao/AppDatabaseConfig;

    return-object v0
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "zdclock.db"

    return-object v0
.end method

.method public getDatabaseVersion()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x21

    return v0
.end method

.method public getTables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/zdworks/android/zdclock/dao/base/SQLiteManager$SQLiteTable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<+Lcom/zdworks/android/zdclock/dao/base/SQLiteManager$SQLiteTable;>;>;"
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/ClockDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/HistoryClockDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/ExtraInfoDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/TextCacheDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/UsrDataDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/MediaSettingsDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/NTemplateDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/NTemplate_ExtraDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/LastUseTemplateDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/UserFavSettingsDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/StrikePackageDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-class v1, Lcom/zdworks/android/zdclock/dao/impl/ZDworksADDAOImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method
