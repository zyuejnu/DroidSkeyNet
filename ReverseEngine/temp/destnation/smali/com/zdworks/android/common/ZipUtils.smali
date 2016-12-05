.class public Lcom/zdworks/android/common/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/ZipUtils$OnUnZipListener;
    }
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "zipFile"
    .parameter "destDirPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zdworks/android/common/ZipUtils;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/zdworks/android/common/ZipUtils$OnUnZipListener;)Z

    move-result v0

    return v0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Lcom/zdworks/android/common/ZipUtils$OnUnZipListener;)Z
    .locals 12
    .parameter "zipFile"
    .parameter "destDirPath"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, desDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 32
    .local v9, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 33
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 34
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v9, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 35
    .local v5, in:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 46
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v6, out:Ljava/io/OutputStream;
    const/high16 v10, 0x10

    new-array v0, v10, [B

    .line 49
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, realLength:I
    if-lez v8, :cond_3

    .line 50
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 40
    .end local v0           #buffer:[B
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v8           #realLength:I
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 41
    invoke-static {v7}, Lcom/zdworks/android/common/FileUtils;->makeDirs(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .restart local v0       #buffer:[B
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v8       #realLength:I
    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 53
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 54
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lcom/zdworks/android/common/ZipUtils$OnUnZipListener;->onUnZiped(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0           #buffer:[B
    .end local v2           #desFile:Ljava/io/File;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #realLength:I
    :cond_4
    const/4 v10, 0x1

    return v10
.end method
