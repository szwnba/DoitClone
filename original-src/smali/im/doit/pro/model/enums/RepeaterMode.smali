.class public final enum Lim/doit/pro/model/enums/RepeaterMode;
.super Ljava/lang/Enum;
.source "RepeaterMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/RepeaterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/RepeaterMode;

.field public static final enum daily:Lim/doit/pro/model/enums/RepeaterMode;

.field public static final enum monthly:Lim/doit/pro/model/enums/RepeaterMode;

.field public static final enum weekly:Lim/doit/pro/model/enums/RepeaterMode;

.field public static final enum yearly:Lim/doit/pro/model/enums/RepeaterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lim/doit/pro/model/enums/RepeaterMode;

    const-string v1, "daily"

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/RepeaterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    new-instance v0, Lim/doit/pro/model/enums/RepeaterMode;

    const-string v1, "weekly"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/enums/RepeaterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    new-instance v0, Lim/doit/pro/model/enums/RepeaterMode;

    const-string v1, "monthly"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/enums/RepeaterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    new-instance v0, Lim/doit/pro/model/enums/RepeaterMode;

    const-string v1, "yearly"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/enums/RepeaterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lim/doit/pro/model/enums/RepeaterMode;

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    aput-object v1, v0, v2

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    aput-object v1, v0, v5

    sput-object v0, Lim/doit/pro/model/enums/RepeaterMode;->ENUM$VALUES:[Lim/doit/pro/model/enums/RepeaterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/RepeaterMode;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    const/4 v1, 0x0

    .line 19
    :cond_0
    :goto_0
    return-object v1

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    .local v1, "result":Lim/doit/pro/model/enums/RepeaterMode;
    invoke-static {}, Lim/doit/pro/model/enums/RepeaterMode;->values()[Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 14
    .local v0, "item":Lim/doit/pro/model/enums/RepeaterMode;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/RepeaterMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    move-object v1, v0

    .line 16
    goto :goto_0

    .line 13
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/RepeaterMode;)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # Lim/doit/pro/model/enums/RepeaterMode;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/RepeaterMode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/RepeaterMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/RepeaterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/RepeaterMode;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/RepeaterMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/RepeaterMode;->ENUM$VALUES:[Lim/doit/pro/model/enums/RepeaterMode;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/RepeaterMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
