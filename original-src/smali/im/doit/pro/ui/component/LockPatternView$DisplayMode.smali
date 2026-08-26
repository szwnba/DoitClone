.class public final enum Lim/doit/pro/ui/component/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/ui/component/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

.field public static final enum Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 199
    new-instance v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 202
    sput-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 204
    new-instance v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 207
    sput-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->ENUM$VALUES:[Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/ui/component/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/ui/component/LockPatternView$DisplayMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->ENUM$VALUES:[Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
