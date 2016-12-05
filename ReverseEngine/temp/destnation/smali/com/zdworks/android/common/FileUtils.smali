.class public Lcom/zdworks/android/common/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/common/FileUtils$FileExistException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static createADir(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 113
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v7

    .line 115
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, subFiles:[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 120
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 121
    .local v6, subName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zdworks/android/common/FileUtils;->delete(Ljava/lang/String;)Z

    .line 120
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 130
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #subName:Ljava/lang/String;
    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    goto :goto_0
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 79
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/zdworks/android/common/FileUtils;->getFileNameWithExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, name:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, index:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    return-object v1
.end method

.method public static getFileNameWithExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, index:I
    const/4 v1, 0x0

    .line 56
    .local v1, name:Ljava/lang/String;
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 57
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v1

    .line 67
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, index:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static makeDirs(Ljava/lang/String;)V
    .locals 12
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    .local v7, sp:Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, dirs:[Ljava/lang/String;
    const-string v6, ""

    .line 19
    .local v6, root:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 21
    .local v5, p:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, dir:Ljava/lang/String;
    :goto_1
    move-object v6, v1

    .line 27
    invoke-static {v1}, Lcom/zdworks/android/common/FileUtils;->createADir(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 28
    new-instance v8, Ljava/io/IOException;

    const-string v9, "create %s failed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 24
    .end local v1           #dir:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .restart local v1       #dir:Ljava/lang/String;
    goto :goto_1

    .line 19
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v1           #dir:Ljava/lang/String;
    .end local v5           #p:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 166
    .local v0, br:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 169
    .local v4, str:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 171
    .local v5, tmp:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 179
    if-eqz v1, :cond_1

    .line 181
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v4

    .line 183
    .end local v5           #tmp:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v6

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    :goto_3
    const/4 v6, 0x0

    .line 179
    if-eqz v0, :cond_2

    .line 181
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 182
    :catch_1
    move-exception v7

    goto :goto_2

    .line 179
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_3

    .line 181
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 183
    :cond_3
    :goto_5
    throw v6

    .line 182
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #tmp:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #tmp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 179
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #tmp:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 176
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zdworks/android/common/FileUtils$FileExistException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 98
    :cond_0
    const/4 p0, 0x0

    .line 109
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 99
    .restart local p0
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, fe:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/zdworks/android/common/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, newPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/zdworks/android/common/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, ft:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    new-instance v3, Lcom/zdworks/android/common/FileUtils$FileExistException;

    invoke-direct {v3}, Lcom/zdworks/android/common/FileUtils$FileExistException;-><init>()V

    throw v3

    .line 108
    :cond_3
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object p0, v2

    .line 109
    goto :goto_0
.end method

.method public static writeString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .parameter "filePath"
    .parameter "content"
    .parameter "isAppend"

    .prologue
    .line 136
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 139
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 141
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 142
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 144
    const/4 v4, 0x1

    .line 148
    if-eqz v1, :cond_0

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 152
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v4

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x0

    .line 148
    if-eqz v0, :cond_1

    .line 150
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v5

    goto :goto_1

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_2

    .line 150
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 152
    :cond_2
    :goto_4
    throw v4

    .line 151
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 148
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 145
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_2
.end method
