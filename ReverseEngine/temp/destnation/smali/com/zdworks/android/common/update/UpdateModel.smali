.class public Lcom/zdworks/android/common/update/UpdateModel;
.super Ljava/lang/Object;
.source "UpdateModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final JSON_APKSHA256:Ljava/lang/String; = "apkSHA256"

.field private static final JSON_DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final JSON_LOADED_KEY:Ljava/lang/String; = "loaded"

.field private static final JSON_MARKET_NAME_KEY:Ljava/lang/String; = "market_name"

.field private static final JSON_MODE_KEY:Ljava/lang/String; = "mode"

.field private static final JSON_RESULT_KEY:Ljava/lang/String; = "result"

.field private static final JSON_SERVER_APK_PATH:Ljava/lang/String; = "server_apk_path"

.field private static final JSON_SIZE_KEY:Ljava/lang/String; = "size"

.field private static final JSON_STAT_KEY:Ljava/lang/String; = "stat"

.field private static final JSON_VERSION_CODE_KEY:Ljava/lang/String; = "version_code"

.field private static final JSON_VERSION_NAME_KEY:Ljava/lang/String; = "version_name"

.field private static final UPDATEMODEL_FILE_NAME:Ljava/lang/String; = "updatemodel.txt"

.field private static final serialVersionUID:J = -0x15ffdcc0572895b3L


# instance fields
.field private apkSHA256:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private loaded:I

.field private marketName:Ljava/lang/String;

.field private mode:I

.field private result:I

.field private serverApkPath:Ljava/lang/String;

.field private size:I

.field private stat:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUpdateModelFromFile(Landroid/content/Context;)Lcom/zdworks/android/common/update/UpdateModel;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "updatemodel.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/zdworks/android/common/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 190
    :goto_0
    return-object v3

    .line 180
    :cond_0
    invoke-static {v1}, Lcom/zdworks/android/common/FileUtils;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, json:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 182
    goto :goto_0

    .line 183
    :cond_1
    new-instance v3, Lcom/zdworks/android/common/update/UpdateModel;

    invoke-direct {v3}, Lcom/zdworks/android/common/update/UpdateModel;-><init>()V

    .line 185
    .local v3, updateModel:Lcom/zdworks/android/common/update/UpdateModel;
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/zdworks/android/common/update/UpdateModel;->fromJSONObjectString(Ljava/lang/String;)Lcom/zdworks/android/common/update/UpdateModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    move-object v3, v4

    .line 187
    goto :goto_0
.end method

.method public static declared-synchronized saveToFile(Landroid/content/Context;Lcom/zdworks/android/common/update/UpdateModel;)V
    .locals 5
    .parameter "context"
    .parameter "updateModel"

    .prologue
    .line 170
    const-class v3, Lcom/zdworks/android/common/update/UpdateModel;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "updatemodel.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zdworks/android/common/update/UpdateModel;->toJson()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/zdworks/android/common/FileUtils;->writeString(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v3

    return-void

    .line 170
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public fromJSONObject(Lorg/json/JSONObject;)Lcom/zdworks/android/common/update/UpdateModel;
    .locals 12
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 p0, 0x0

    .line 265
    .end local p0
    :goto_0
    return-object p0

    .line 198
    .restart local p0
    :cond_0
    const/4 v8, 0x0

    .line 199
    .local v8, stat:I
    const-string v11, "stat"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 200
    const-string v11, "stat"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 203
    :cond_1
    const/4 v10, 0x0

    .line 204
    .local v10, versionName:Ljava/lang/String;
    const-string v11, "version_name"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 205
    const-string v11, "version_name"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    :cond_2
    const/4 v1, 0x0

    .line 209
    .local v1, description:Ljava/lang/String;
    const-string v11, "description"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 210
    const-string v11, "description"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_3
    const/4 v7, 0x0

    .line 214
    .local v7, size:I
    const-string v11, "size"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 215
    const-string v11, "size"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 218
    :cond_4
    const/4 v5, 0x0

    .line 219
    .local v5, result:I
    const-string v11, "result"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 220
    const-string v11, "result"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 223
    :cond_5
    const/4 v2, 0x0

    .line 224
    .local v2, loaded:I
    const-string v11, "loaded"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 225
    const-string v11, "loaded"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 228
    :cond_6
    const/4 v4, 0x0

    .line 229
    .local v4, mode:I
    const-string v11, "mode"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 230
    const-string v11, "mode"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 233
    :cond_7
    const/4 v3, 0x0

    .line 234
    .local v3, marketName:Ljava/lang/String;
    const-string v11, "market_name"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 235
    const-string v11, "market_name"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    :cond_8
    const/4 v6, 0x0

    .line 239
    .local v6, serverApkPath:Ljava/lang/String;
    const-string v11, "server_apk_path"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 240
    const-string v11, "server_apk_path"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    :cond_9
    const/4 v9, 0x0

    .line 244
    .local v9, versionCode:I
    const-string v11, "version_code"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 245
    const-string v11, "version_code"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 248
    :cond_a
    const/4 v0, 0x0

    .line 249
    .local v0, apkSHA256:Ljava/lang/String;
    const-string v11, "apkSHA256"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 250
    const-string v11, "apkSHA256"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_b
    invoke-virtual {p0, v9}, Lcom/zdworks/android/common/update/UpdateModel;->setVersionCode(I)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/zdworks/android/common/update/UpdateModel;->setDescription(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/zdworks/android/common/update/UpdateModel;->setLoaded(I)V

    .line 256
    invoke-virtual {p0, v5}, Lcom/zdworks/android/common/update/UpdateModel;->setResult(I)V

    .line 257
    invoke-virtual {p0, v7}, Lcom/zdworks/android/common/update/UpdateModel;->setSize(I)V

    .line 258
    invoke-virtual {p0, v8}, Lcom/zdworks/android/common/update/UpdateModel;->setStat(I)V

    .line 259
    invoke-virtual {p0, v10}, Lcom/zdworks/android/common/update/UpdateModel;->setVersionName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/zdworks/android/common/update/UpdateModel;->setMarketName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v4}, Lcom/zdworks/android/common/update/UpdateModel;->setMode(I)V

    .line 262
    invoke-virtual {p0, v6}, Lcom/zdworks/android/common/update/UpdateModel;->setServerApkPath(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/update/UpdateModel;->setApkSHA256(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public fromJSONObjectString(Ljava/lang/String;)Lcom/zdworks/android/common/update/UpdateModel;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zdworks/android/common/update/UpdateModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/zdworks/android/common/update/UpdateModel;

    move-result-object v0

    return-object v0
.end method

.method public getApkSHA256()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->apkSHA256:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLoaded()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->loaded:I

    return v0
.end method

.method public getMarketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->marketName:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->mode:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->result:I

    return v0
.end method

.method public getServerApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->serverApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->size:I

    return v0
.end method

.method public getStat()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->stat:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkSHA256(Ljava/lang/String;)V
    .locals 0
    .parameter "apkSHA256"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->apkSHA256:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->description:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setLoaded(I)V
    .locals 0
    .parameter "loaded"

    .prologue
    .line 79
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->loaded:I

    .line 80
    return-void
.end method

.method public setMarketName(Ljava/lang/String;)V
    .locals 0
    .parameter "marketName"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->marketName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 67
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->mode:I

    .line 68
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 83
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->result:I

    .line 84
    return-void
.end method

.method public setServerApkPath(Ljava/lang/String;)V
    .locals 0
    .parameter "serverApkPath"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->serverApkPath:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 96
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->size:I

    .line 97
    return-void
.end method

.method public setStat(I)V
    .locals 0
    .parameter "stat"

    .prologue
    .line 104
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->stat:I

    .line 105
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 43
    iput p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionCode:I

    .line 44
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    .line 138
    .local v0, json:Lorg/json/JSONStringer;
    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->stat:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 139
    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->size:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 140
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->result:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 141
    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->loaded:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 142
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->mode:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 143
    const-string v1, "version_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionCode:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 145
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "version_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateModel;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateModel;->marketName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "market_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->marketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateModel;->serverApkPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 155
    const-string v1, "server_apk_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->serverApkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/zdworks/android/common/update/UpdateModel;->apkSHA256:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "apkSHA256"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zdworks/android/common/update/UpdateModel;->apkSHA256:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 160
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    .end local v0           #json:Lorg/json/JSONStringer;
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v1

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method
