.class public Lcom/iflytek/msc/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/a/a$a;,
        Lcom/iflytek/msc/a/a$b;
    }
.end annotation


# static fields
.field private static final g:Landroid/net/Uri;

.field private static final h:Landroid/net/Uri;

.field private static synthetic i:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/msc/a/d$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/msc/a/a;->g:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/msc/a/a;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/msc/a/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/msc/a/d;

    iget-object v1, p0, Lcom/iflytek/msc/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/msc/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/msc/a/d;->d()Lcom/iflytek/msc/a/d$a;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/msc/a/a;->b:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v0}, Lcom/iflytek/msc/a/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/iflytek/msc/a/d;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/msc/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/iflytek/msc/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/msc/a/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/a/a;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic c()[I
    .locals 3

    sget-object v0, Lcom/iflytek/msc/a/a;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/a/d$a;->values()[Lcom/iflytek/msc/a/d$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iflytek/msc/a/d$a;->a:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iflytek/msc/a/d$a;->c:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iflytek/msc/a/d$a;->b:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iflytek/msc/a/d$a;->d:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v1}, Lcom/iflytek/msc/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/iflytek/msc/a/a;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/iflytek/msc/a/a$b;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/msc/a/a;->b()Lcom/iflytek/msc/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/msc/a/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/msc/a/a$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/msc/a/a;->c()[I

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/msc/a/a;->b:Lcom/iflytek/msc/a/d$a;

    invoke-virtual {v3}, Lcom/iflytek/msc/a/d$a;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/iflytek/msc/a/a$b;->a:Lcom/iflytek/msc/a/a$b;

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_1
    const-string v0, "cmwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/msc/a/a$b;->b:Lcom/iflytek/msc/a/a$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/iflytek/msc/a/a$b;->e:Lcom/iflytek/msc/a/a$b;

    goto :goto_1

    :pswitch_1
    const-string v0, "uniwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3gwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cmwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/iflytek/msc/a/a$b;->d:Lcom/iflytek/msc/a/a$b;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/iflytek/msc/a/a$b;->f:Lcom/iflytek/msc/a/a$b;

    goto :goto_1

    :pswitch_2
    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/iflytek/msc/a/a$b;->c:Lcom/iflytek/msc/a/a$b;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/iflytek/msc/a/a$b;->g:Lcom/iflytek/msc/a/a$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Lcom/iflytek/msc/a/a$a;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/iflytek/msc/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iflytek/msc/a/a;->h:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v2, "apn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v2, "proxy"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v2, "port"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v2, "user"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v2, "password"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v2, Lcom/iflytek/msc/a/a$a;

    invoke-direct {v2, p0}, Lcom/iflytek/msc/a/a$a;-><init>(Lcom/iflytek/msc/a/a;)V

    if-eq v1, v9, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->a(I)V

    :cond_0
    if-eq v3, v9, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->a(Ljava/lang/String;)V

    :cond_1
    if-eq v4, v9, :cond_2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->b(Ljava/lang/String;)V

    :cond_2
    if-eq v5, v9, :cond_3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->c(Ljava/lang/String;)V

    :cond_3
    if-eq v6, v9, :cond_4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->d(Ljava/lang/String;)V

    :cond_4
    if-eq v7, v9, :cond_5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->e(Ljava/lang/String;)V

    :cond_5
    if-eq v8, v9, :cond_6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/msc/a/a$a;->f(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v2
.end method
