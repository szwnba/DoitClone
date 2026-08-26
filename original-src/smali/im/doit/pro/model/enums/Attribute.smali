.class public final enum Lim/doit/pro/model/enums/Attribute;
.super Ljava/lang/Enum;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/Attribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/Attribute;

.field public static final enum inbox:Lim/doit/pro/model/enums/Attribute;

.field public static final enum next:Lim/doit/pro/model/enums/Attribute;

.field public static final enum noplan:Lim/doit/pro/model/enums/Attribute;

.field public static final enum plan:Lim/doit/pro/model/enums/Attribute;

.field public static final enum waiting:Lim/doit/pro/model/enums/Attribute;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lim/doit/pro/model/enums/Attribute;

    const-string v1, "inbox"

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    new-instance v0, Lim/doit/pro/model/enums/Attribute;

    const-string v1, "next"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/enums/Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    new-instance v0, Lim/doit/pro/model/enums/Attribute;

    const-string v1, "plan"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/enums/Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    new-instance v0, Lim/doit/pro/model/enums/Attribute;

    const-string v1, "noplan"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/enums/Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    new-instance v0, Lim/doit/pro/model/enums/Attribute;

    const-string v1, "waiting"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/model/enums/Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lim/doit/pro/model/enums/Attribute;

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    aput-object v1, v0, v2

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    aput-object v1, v0, v6

    sput-object v0, Lim/doit/pro/model/enums/Attribute;->ENUM$VALUES:[Lim/doit/pro/model/enums/Attribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/Attribute;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 17
    :cond_0
    :goto_0
    return-object v0

    .line 12
    :cond_1
    invoke-static {}, Lim/doit/pro/model/enums/Attribute;->values()[Lim/doit/pro/model/enums/Attribute;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 17
    goto :goto_0

    .line 12
    :cond_2
    aget-object v0, v3, v2

    .line 13
    .local v0, "item":Lim/doit/pro/model/enums/Attribute;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/Attribute;)Ljava/lang/String;
    .locals 1
    .param p0, "attribute"    # Lim/doit/pro/model/enums/Attribute;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/Attribute;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/Attribute;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/Attribute;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->ENUM$VALUES:[Lim/doit/pro/model/enums/Attribute;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/Attribute;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
