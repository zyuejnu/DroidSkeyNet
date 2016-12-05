.class public Lcom/iflytek/ui/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcom/iflytek/ui/a/a;

.field private C:Z

.field private D:[B

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:[S

.field private L:[B

.field private M:[B

.field private N:[B

.field private O:Lcom/iflytek/ui/a/a;

.field private P:I

.field private Q:Lcom/iflytek/ui/a/b;

.field private R:[B

.field public a:I

.field public b:I

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>([BLcom/iflytek/ui/a/b;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/ui/a/c;->g:I

    iput-object v2, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    iput-boolean v1, p0, Lcom/iflytek/ui/a/c;->C:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->D:[B

    iput v1, p0, Lcom/iflytek/ui/a/c;->E:I

    iput v1, p0, Lcom/iflytek/ui/a/c;->F:I

    iput v1, p0, Lcom/iflytek/ui/a/c;->G:I

    iput-boolean v1, p0, Lcom/iflytek/ui/a/c;->H:Z

    iput v1, p0, Lcom/iflytek/ui/a/c;->I:I

    iput-object v2, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    iput-object v2, p0, Lcom/iflytek/ui/a/c;->R:[B

    iput-object p1, p0, Lcom/iflytek/ui/a/c;->R:[B

    iput-object p2, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    return-void
.end method

.method private c(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x3

    const/4 v0, 0x0

    check-cast v0, [I

    new-array v4, v3, [B

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v2

    :goto_1
    if-ge v2, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private e()V
    .locals 14

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/iflytek/ui/a/c;->a:I

    iget v1, p0, Lcom/iflytek/ui/a/c;->b:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget v0, p0, Lcom/iflytek/ui/a/c;->G:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/iflytek/ui/a/c;->G:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/iflytek/ui/a/c;->P:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/a/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->A:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->A:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/iflytek/ui/a/c;->a:I

    iget v6, p0, Lcom/iflytek/ui/a/c;->a:I

    iget v7, p0, Lcom/iflytek/ui/a/c;->b:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/iflytek/ui/a/c;->G:I

    if-ne v0, v10, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->H:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/iflytek/ui/a/c;->m:I

    :goto_1
    move v3, v2

    :goto_2
    iget v4, p0, Lcom/iflytek/ui/a/c;->y:I

    if-lt v3, v4, :cond_3

    :cond_1
    const/16 v0, 0x8

    move v3, v0

    move v4, v8

    move v0, v2

    :goto_3
    iget v5, p0, Lcom/iflytek/ui/a/c;->u:I

    if-lt v2, v5, :cond_5

    iget v0, p0, Lcom/iflytek/ui/a/c;->a:I

    iget v2, p0, Lcom/iflytek/ui/a/c;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->z:Landroid/graphics/Bitmap;

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->A:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/iflytek/ui/a/c;->w:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/iflytek/ui/a/c;->a:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/iflytek/ui/a/c;->v:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/iflytek/ui/a/c;->x:I

    add-int/2addr v5, v4

    :goto_4
    if-lt v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v5, p0, Lcom/iflytek/ui/a/c;->p:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/iflytek/ui/a/c;->u:I

    if-lt v0, v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_6
    :goto_5
    add-int v5, v0, v3

    move v13, v0

    move v0, v5

    move v5, v13

    :goto_6
    iget v6, p0, Lcom/iflytek/ui/a/c;->s:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/iflytek/ui/a/c;->b:I

    if-ge v5, v6, :cond_8

    iget v6, p0, Lcom/iflytek/ui/a/c;->a:I

    mul-int/2addr v6, v5

    iget v5, p0, Lcom/iflytek/ui/a/c;->r:I

    add-int v7, v6, v5

    iget v5, p0, Lcom/iflytek/ui/a/c;->t:I

    add-int/2addr v5, v7

    iget v11, p0, Lcom/iflytek/ui/a/c;->a:I

    add-int/2addr v11, v6

    if-ge v11, v5, :cond_7

    iget v5, p0, Lcom/iflytek/ui/a/c;->a:I

    add-int/2addr v5, v6

    :cond_7
    iget v6, p0, Lcom/iflytek/ui/a/c;->t:I

    mul-int/2addr v6, v2

    move v11, v7

    :goto_7
    if-lt v11, v5, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_0
    move v0, v9

    goto :goto_5

    :pswitch_1
    move v0, v10

    move v3, v9

    goto :goto_5

    :pswitch_2
    move v0, v8

    move v3, v10

    goto :goto_5

    :cond_9
    iget-object v12, p0, Lcom/iflytek/ui/a/c;->N:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v12, p0, Lcom/iflytek/ui/a/c;->j:[I

    aget v6, v12, v6

    if-eqz v6, :cond_a

    aput v6, v1, v11

    :cond_a
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    move v6, v7

    goto :goto_7

    :cond_b
    move v5, v2

    goto :goto_6

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/iflytek/ui/a/c;->R:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->R:[B

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->g()I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->j()V

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->o()V

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->m()V

    iget v0, p0, Lcom/iflytek/ui/a/c;->P:I

    if-gez v0, :cond_1

    iput v3, p0, Lcom/iflytek/ui/a/c;->d:I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    invoke-interface {v0, v2, v1}, Lcom/iflytek/ui/a/b;->a(ZI)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/iflytek/ui/a/c;->d:I

    return v0

    :cond_1
    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    invoke-interface {v0, v3, v1}, Lcom/iflytek/ui/a/b;->a(ZI)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/ui/a/c;->d:I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    invoke-interface {v0, v2, v1}, Lcom/iflytek/ui/a/b;->a(ZI)V

    goto :goto_1
.end method

.method private h()V
    .locals 23

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iflytek/ui/a/c;->t:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/ui/a/c;->u:I

    mul-int v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/ui/a/c;->N:[B

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/ui/a/c;->N:[B

    array-length v1, v1

    move/from16 v0, v16

    if-ge v1, v0, :cond_1

    :cond_0
    move/from16 v0, v16

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iflytek/ui/a/c;->N:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/ui/a/c;->K:[S

    if-nez v1, :cond_2

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iflytek/ui/a/c;->K:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/ui/a/c;->L:[B

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iflytek/ui/a/c;->L:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/ui/a/c;->M:[B

    if-nez v1, :cond_4

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/iflytek/ui/a/c;->M:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v17

    const/4 v1, 0x1

    shl-int v18, v1, v17

    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v11, v18, 0x2

    add-int/lit8 v3, v17, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, v18

    if-lt v1, v0, :cond_6

    const/4 v12, 0x0

    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v10, v15

    move v1, v12

    :goto_1
    move/from16 v0, v16

    if-lt v14, v0, :cond_7

    :cond_5
    move v1, v12

    :goto_2
    move/from16 v0, v16

    if-lt v1, v0, :cond_e

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/ui/a/c;->K:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/ui/a/c;->L:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-nez v5, :cond_10

    if-ge v8, v3, :cond_9

    if-nez v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/ui/a/c;->l()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iflytek/ui/a/c;->D:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_9
    and-int v9, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v8, v3

    if-gt v9, v11, :cond_5

    move/from16 v0, v19

    if-eq v9, v0, :cond_5

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    add-int/lit8 v3, v17, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v11, v18, 0x2

    move v10, v15

    goto :goto_1

    :cond_a
    if-ne v10, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/ui/a/c;->M:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/ui/a/c;->L:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    goto :goto_1

    :cond_b
    if-ne v9, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/ui/a/c;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move v6, v10

    :goto_3
    move/from16 v0, v18

    if-gt v6, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/ui/a/c;->L:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/ui/a/c;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v20, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/ui/a/c;->K:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/ui/a/c;->L:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    add-int/lit8 v10, v11, 0x1

    and-int v11, v10, v4

    if-nez v11, :cond_c

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_c

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v10

    :cond_c
    move/from16 v22, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v22

    :goto_4
    add-int/lit8 v11, v3, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/ui/a/c;->N:[B

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/ui/a/c;->M:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v11

    aput-byte v20, v13, v12

    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v22, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v22

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/ui/a/c;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/ui/a/c;->L:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v6

    aput-byte v21, v20, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/ui/a/c;->K:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/ui/a/c;->N:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_f
    move v13, v5

    move v6, v9

    goto/16 :goto_3

    :cond_10
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_4
.end method

.method private i()Z
    .locals 1

    iget v0, p0, Lcom/iflytek/ui/a/c;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    iput v1, p0, Lcom/iflytek/ui/a/c;->P:I

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->h:[I

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->i:[I

    return-void
.end method

.method private k()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    goto :goto_0
.end method

.method private l()I
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->E:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/iflytek/ui/a/c;->E:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/iflytek/ui/a/c;->E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Lcom/iflytek/ui/a/c;->E:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    :cond_1
    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/iflytek/ui/a/c;->D:[B

    iget v3, p0, Lcom/iflytek/ui/a/c;->E:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private m()V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    :sswitch_0
    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput v4, p0, Lcom/iflytek/ui/a/c;->d:I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->p()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->u()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->n()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->l()I

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_1
    const/16 v5, 0xb

    if-lt v0, v5, :cond_2

    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->r()V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/ui/a/c;->D:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->u()V

    goto :goto_0

    :sswitch_5
    move v3, v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v1

    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/iflytek/ui/a/c;->F:I

    iget v2, p0, Lcom/iflytek/ui/a/c;->F:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/iflytek/ui/a/c;->F:I

    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/ui/a/c;->H:Z

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/iflytek/ui/a/c;->I:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->J:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/ui/a/c;->d:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->q()V

    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iflytek/ui/a/c;->f:I

    invoke-direct {p0, v0}, Lcom/iflytek/ui/a/c;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->h:[I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->h:[I

    iget v1, p0, Lcom/iflytek/ui/a/c;->k:I

    aget v0, v0, v1

    iput v0, p0, Lcom/iflytek/ui/a/c;->l:I

    goto :goto_1
.end method

.method private p()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->r:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->s:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->t:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->u:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/ui/a/c;->o:Z

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/iflytek/ui/a/c;->p:Z

    const/4 v0, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v0, v3

    iput v0, p0, Lcom/iflytek/ui/a/c;->q:I

    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->o:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/iflytek/ui/a/c;->q:I

    invoke-direct {p0, v0}, Lcom/iflytek/ui/a/c;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->i:[I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->i:[I

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->j:[I

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->H:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->j:[I

    iget v3, p0, Lcom/iflytek/ui/a/c;->J:I

    aget v0, v0, v3

    iget-object v3, p0, Lcom/iflytek/ui/a/c;->j:[I

    iget v4, p0, Lcom/iflytek/ui/a/c;->J:I

    aput v2, v3, v4

    move v2, v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->j:[I

    if-nez v0, :cond_2

    iput v1, p0, Lcom/iflytek/ui/a/c;->d:I

    :cond_2
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->h:[I

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->j:[I

    iget v0, p0, Lcom/iflytek/ui/a/c;->k:I

    iget v3, p0, Lcom/iflytek/ui/a/c;->J:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/iflytek/ui/a/c;->l:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->h()V

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->u()V

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/iflytek/ui/a/c;->P:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/ui/a/c;->P:I

    iget v0, p0, Lcom/iflytek/ui/a/c;->a:I

    iget v3, p0, Lcom/iflytek/ui/a/c;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->z:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->e()V

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    if-nez v0, :cond_9

    new-instance v0, Lcom/iflytek/ui/a/a;

    iget-object v3, p0, Lcom/iflytek/ui/a/c;->z:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/iflytek/ui/a/c;->I:I

    invoke-direct {v0, v3, v4}, Lcom/iflytek/ui/a/a;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    :goto_4
    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->H:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->j:[I

    iget v3, p0, Lcom/iflytek/ui/a/c;->J:I

    aput v2, v0, v3

    :cond_8
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->t()V

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->Q:Lcom/iflytek/ui/a/b;

    iget v2, p0, Lcom/iflytek/ui/a/c;->P:I

    invoke-interface {v0, v1, v2}, Lcom/iflytek/ui/a/b;->a(ZI)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    :goto_5
    iget-object v3, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    if-nez v3, :cond_a

    new-instance v3, Lcom/iflytek/ui/a/a;

    iget-object v4, p0, Lcom/iflytek/ui/a/c;->z:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/iflytek/ui/a/c;->I:I

    invoke-direct {v3, v4, v5}, Lcom/iflytek/ui/a/a;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    goto :goto_4

    :cond_a
    iget-object v0, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    goto :goto_5
.end method

.method private q()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->a:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->s()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->b:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/ui/a/c;->e:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/ui/a/c;->f:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->k:I

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    iput v0, p0, Lcom/iflytek/ui/a/c;->n:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->l()I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->D:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->D:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/iflytek/ui/a/c;->D:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/ui/a/c;->g:I

    :cond_1
    iget v0, p0, Lcom/iflytek/ui/a/c;->E:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private s()I
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->k()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private t()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/iflytek/ui/a/c;->F:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->G:I

    iget v0, p0, Lcom/iflytek/ui/a/c;->r:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->v:I

    iget v0, p0, Lcom/iflytek/ui/a/c;->s:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->w:I

    iget v0, p0, Lcom/iflytek/ui/a/c;->t:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->x:I

    iget v0, p0, Lcom/iflytek/ui/a/c;->u:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->y:I

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->z:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->A:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/iflytek/ui/a/c;->l:I

    iput v0, p0, Lcom/iflytek/ui/a/c;->m:I

    iput v1, p0, Lcom/iflytek/ui/a/c;->F:I

    iput-boolean v1, p0, Lcom/iflytek/ui/a/c;->H:Z

    iput v1, p0, Lcom/iflytek/ui/a/c;->I:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->i:[I

    return-void
.end method

.method private u()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->l()I

    iget v0, p0, Lcom/iflytek/ui/a/c;->E:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/ui/a/c;->b(I)Lcom/iflytek/ui/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/iflytek/ui/a/a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/iflytek/ui/a/c;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/iflytek/ui/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    return-object v0
.end method

.method public b(I)Lcom/iflytek/ui/a/a;
    .locals 4

    iget-object v1, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    if-eq v1, p1, :cond_0

    iget-object v2, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    return-void
.end method

.method public d()Lcom/iflytek/ui/a/a;
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/ui/a/c;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/ui/a/c;->C:Z

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/iflytek/ui/a/c;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    iget-object v0, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    iget-object v0, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    iget-object v0, v0, Lcom/iflytek/ui/a/a;->c:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/ui/a/c;->O:Lcom/iflytek/ui/a/a;

    iput-object v0, p0, Lcom/iflytek/ui/a/c;->B:Lcom/iflytek/ui/a/a;

    goto :goto_1
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->g()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/ui/a/c;->R:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/ui/a/c;->f()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
