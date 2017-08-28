.class public Lcom/iflytek/ui/b/b;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Ljava/lang/String;

.field private d:Lcom/iflytek/ui/b/c;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "version"

    sput-object v0, Lcom/iflytek/ui/b/b;->f:Ljava/lang/String;

    const-string v0, "adlinks"

    sput-object v0, Lcom/iflytek/ui/b/b;->g:Ljava/lang/String;

    const-string v0, "link"

    sput-object v0, Lcom/iflytek/ui/b/b;->h:Ljava/lang/String;

    const-string v0, "lstexts"

    sput-object v0, Lcom/iflytek/ui/b/b;->i:Ljava/lang/String;

    const-string v0, "text"

    sput-object v0, Lcom/iflytek/ui/b/b;->j:Ljava/lang/String;

    const-string v0, "animation"

    sput-object v0, Lcom/iflytek/ui/b/b;->k:Ljava/lang/String;

    const-string v0, "link"

    sput-object v0, Lcom/iflytek/ui/b/b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/iflytek/ui/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/iflytek/ui/b/b;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/ui/b/b;->e()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/iflytek/ui/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->e:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/iflytek/ui/b/b;->a([B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/ui/b/b;->e()V

    goto :goto_0
.end method

.method private a([B)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/iflytek/msc/a/f;->a([BI)I

    move-result v2

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "utf-8"

    invoke-direct {v1, p1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    sget-object v1, Lcom/iflytek/ui/b/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/iflytek/ui/b/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iflytek/ui/b/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_3

    :cond_0
    sget-object v1, Lcom/iflytek/ui/b/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/iflytek/ui/b/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_1
    sget-object v0, Lcom/iflytek/ui/b/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iflytek/ui/b/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/iflytek/ui/b/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x4

    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/iflytek/ui/b/c;

    invoke-direct {v1, v0, v3}, Lcom/iflytek/ui/b/c;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v6, Lcom/iflytek/ui/b/b;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Lcom/iflytek/ui/b/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    aput-object v3, v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/a/g;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/b/b;->e()V

    goto :goto_2
.end method

.method private e()V
    .locals 1

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/iflytek/ui/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->c:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/iflytek/resource/a;->d(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/iflytek/ui/b/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->d:Lcom/iflytek/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/ui/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/ui/b/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v2, v1}, Lcom/iflytek/msc/a/f;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iflytek/speech/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/a/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/iflytek/resource/a;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
