.class public Lcom/zdworks/android/common/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "urlString"

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 31
    .local v3, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 38
    if-eqz v1, :cond_0

    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 45
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :goto_1
    return-object v5

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, e:Ljava/net/MalformedURLException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 45
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 35
    :catch_1
    move-exception v2

    .line 36
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 41
    :catch_2
    move-exception v5

    goto :goto_3

    .line 38
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v0, :cond_2

    .line 40
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 42
    :cond_2
    :goto_6
    throw v5

    .line 41
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #url:Ljava/net/URL;
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .local v2, e:Ljava/net/MalformedURLException;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_5
    move-exception v6

    goto :goto_6

    .line 38
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #url:Ljava/net/URL;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 35
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 33
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .parameter "bitmap"
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v5

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 53
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 55
    .local v1, format:Landroid/graphics/Bitmap$CompressFormat;
    :try_start_1
    invoke-static {p1}, Lcom/zdworks/android/common/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, ext:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 57
    const-string v4, "jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 61
    :cond_2
    if-nez v1, :cond_3

    .line 62
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 64
    :cond_3
    const/16 v4, 0x64

    invoke-virtual {p0, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 67
    if-eqz v3, :cond_5

    .line 69
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 71
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 70
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 71
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 65
    .end local v0           #ext:Ljava/lang/String;
    .end local v1           #format:Landroid/graphics/Bitmap$CompressFormat;
    :catch_1
    move-exception v4

    .line 67
    :goto_1
    if-eqz v2, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v4

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 69
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    :cond_4
    :goto_3
    throw v4

    .line 70
    :catch_3
    move-exception v5

    goto :goto_3

    .line 67
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #format:Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 65
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v0       #ext:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_5
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0
.end method
