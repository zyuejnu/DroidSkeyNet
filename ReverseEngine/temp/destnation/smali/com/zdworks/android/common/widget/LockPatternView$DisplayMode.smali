.class public final enum Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zdworks/android/common/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Correct:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    .line 209
    new-instance v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Animate:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    .line 214
    new-instance v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Correct:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Animate:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->Wrong:Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 199
    const-class v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zdworks/android/common/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
