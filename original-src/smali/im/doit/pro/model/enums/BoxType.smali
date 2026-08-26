.class public final enum Lim/doit/pro/model/enums/BoxType;
.super Ljava/lang/Enum;
.source "BoxType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/BoxType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/BoxType;

.field public static final enum completed:Lim/doit/pro/model/enums/BoxType;

.field public static final enum contacts:Lim/doit/pro/model/enums/BoxType;

.field public static final enum contexts:Lim/doit/pro/model/enums/BoxType;

.field public static final enum doitnow:Lim/doit/pro/model/enums/BoxType;

.field public static final enum filters:Lim/doit/pro/model/enums/BoxType;

.field public static final enum goals:Lim/doit/pro/model/enums/BoxType;

.field public static final enum inbox:Lim/doit/pro/model/enums/BoxType;

.field public static final enum local_group_done:Lim/doit/pro/model/enums/BoxType;

.field public static final enum local_group_focus:Lim/doit/pro/model/enums/BoxType;

.field public static final enum local_group_organize:Lim/doit/pro/model/enums/BoxType;

.field public static final enum next:Lim/doit/pro/model/enums/BoxType;

.field public static final enum nocontext:Lim/doit/pro/model/enums/BoxType;

.field public static final enum noproject:Lim/doit/pro/model/enums/BoxType;

.field public static final enum projects:Lim/doit/pro/model/enums/BoxType;

.field public static final enum scheduled:Lim/doit/pro/model/enums/BoxType;

.field public static final enum someday:Lim/doit/pro/model/enums/BoxType;

.field public static final enum today:Lim/doit/pro/model/enums/BoxType;

.field public static final enum tomorrow:Lim/doit/pro/model/enums/BoxType;

.field public static final enum trash:Lim/doit/pro/model/enums/BoxType;

.field public static final enum waiting:Lim/doit/pro/model/enums/BoxType;


# instance fields
.field private final pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5
    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "inbox"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "local_group_focus"

    invoke-direct {v0, v1, v4, v5}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->local_group_focus:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "doitnow"

    invoke-direct {v0, v1, v5, v6}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->doitnow:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "today"

    invoke-direct {v0, v1, v6, v7}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "next"

    invoke-direct {v0, v1, v7, v8}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "tomorrow"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "scheduled"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "someday"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "waiting"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "local_group_organize"

    const/16 v2, 0x9

    .line 6
    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->local_group_organize:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "projects"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->projects:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "goals"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "contexts"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "filters"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "local_group_done"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->local_group_done:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "completed"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->completed:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "trash"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->trash:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "contacts"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->contacts:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "nocontext"

    const/16 v2, 0x12

    .line 7
    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->nocontext:Lim/doit/pro/model/enums/BoxType;

    new-instance v0, Lim/doit/pro/model/enums/BoxType;

    const-string v1, "noproject"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/model/enums/BoxType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->noproject:Lim/doit/pro/model/enums/BoxType;

    .line 5
    const/16 v0, 0x14

    new-array v0, v0, [Lim/doit/pro/model/enums/BoxType;

    const/4 v1, 0x0

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->local_group_focus:Lim/doit/pro/model/enums/BoxType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->doitnow:Lim/doit/pro/model/enums/BoxType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    aput-object v1, v0, v7

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->local_group_organize:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->projects:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->local_group_done:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->completed:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->trash:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contacts:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->nocontext:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->noproject:Lim/doit/pro/model/enums/BoxType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/enums/BoxType;->ENUM$VALUES:[Lim/doit/pro/model/enums/BoxType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "pos"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lim/doit/pro/model/enums/BoxType;->pos:I

    .line 13
    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/BoxType;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 28
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Lim/doit/pro/model/enums/BoxType;->values()[Lim/doit/pro/model/enums/BoxType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 23
    :cond_2
    aget-object v0, v3, v2

    .line 24
    .local v0, "item":Lim/doit/pro/model/enums/BoxType;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/BoxType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lim/doit/pro/model/enums/BoxType;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/BoxType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/BoxType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/BoxType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/BoxType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->ENUM$VALUES:[Lim/doit/pro/model/enums/BoxType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/BoxType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lim/doit/pro/model/enums/BoxType;->pos:I

    return v0
.end method
