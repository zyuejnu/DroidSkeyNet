.class public interface abstract Lcom/zdworks/android/zdclock/dao/base/DatabaseConfig;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# virtual methods
.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getDatabaseVersion()I
.end method

.method public abstract getTables()Ljava/util/List;
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
.end method
