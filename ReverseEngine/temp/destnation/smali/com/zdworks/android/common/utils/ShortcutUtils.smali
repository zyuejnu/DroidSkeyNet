.class public Lcom/zdworks/android/common/utils/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final EXTRA_IS_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final INSTALL_ACTION:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final SHORTCUT_FLAG:I = 0x10200000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "name"
    .parameter "iconResId"

    .prologue
    .line 53
    const/high16 v1, 0x1020

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-static {p0, p1, p2}, Lcom/zdworks/android/common/utils/ShortcutUtils;->getShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "name"
    .parameter "icon"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/zdworks/android/common/utils/ShortcutUtils;->getShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public static createSingle(Landroid/content/Context;Ljava/lang/Class;II)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "nameResId"
    .parameter "iconResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, name:Ljava/lang/String;
    invoke-static {p0, p1, v0, p3}, Lcom/zdworks/android/common/utils/ShortcutUtils;->createSingle(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public static createSingle(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "name"
    .parameter "iconResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-static {p0, v0, p2}, Lcom/zdworks/android/common/utils/ShortcutUtils;->getShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method private static getShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "name"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method
