.class public Lcom/zdworks/android/calendartable/util/StaticContext;
.super Ljava/lang/Object;
.source "StaticContext.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/content/Context;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/zdworks/android/calendartable/util/StaticContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static set(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    sput-object p0, Lcom/zdworks/android/calendartable/util/StaticContext;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method
