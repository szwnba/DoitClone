.class public final enum Lim/doit/pro/model/enums/GroupByType;
.super Ljava/lang/Enum;
.source "GroupByType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/GroupByType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/GroupByType;

.field public static final enum box:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum box_in_goal:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum completed_at:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum contact:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum contacts:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum context:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum created:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum end_at:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum priority:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum project:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum search:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum start_at:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum start_at_today:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum status:Lim/doit/pro/model/enums/GroupByType;

.field public static final enum trash:Lim/doit/pro/model/enums/GroupByType;


# instance fields
.field private final iconId:I

.field private final nameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 7
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "context"

    const v2, 0x7f0c00e8

    const v3, 0x7f02009e

    invoke-direct {v0, v1, v6, v2, v3}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    .line 8
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "project"

    const v2, 0x7f0c00ea

    const v3, 0x7f0200a1

    invoke-direct {v0, v1, v7, v2, v3}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    .line 9
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "priority"

    const v2, 0x7f0c00ef

    const v3, 0x7f0200a0

    invoke-direct {v0, v1, v8, v2, v3}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    .line 10
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "start_at"

    const v2, 0x7f0c00f5

    const v3, 0x7f0200a2

    invoke-direct {v0, v1, v9, v2, v3}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    .line 11
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "start_at_today"

    const/4 v2, 0x4

    const v3, 0x7f0c00f5

    const v4, 0x7f0200a2

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    .line 12
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "end_at"

    const/4 v2, 0x5

    const v3, 0x7f0c00ee

    const v4, 0x7f02009f

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    .line 13
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "contacts"

    const/4 v2, 0x6

    const v3, 0x7f0c00e6

    const v4, 0x7f02009d

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->contacts:Lim/doit/pro/model/enums/GroupByType;

    .line 14
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "contact"

    const/4 v2, 0x7

    const v3, 0x7f0c00e5

    const v4, 0x7f02009d

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->contact:Lim/doit/pro/model/enums/GroupByType;

    .line 15
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "created"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->created:Lim/doit/pro/model/enums/GroupByType;

    .line 16
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "completed_at"

    const/16 v2, 0x9

    const v3, 0x7f0c0164

    const v4, 0x7f02009c

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->completed_at:Lim/doit/pro/model/enums/GroupByType;

    .line 17
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "status"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    .line 18
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "box"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    .line 19
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "box_in_goal"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->box_in_goal:Lim/doit/pro/model/enums/GroupByType;

    .line 20
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "search"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->search:Lim/doit/pro/model/enums/GroupByType;

    .line 21
    new-instance v0, Lim/doit/pro/model/enums/GroupByType;

    const-string v1, "trash"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v5, v5}, Lim/doit/pro/model/enums/GroupByType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->trash:Lim/doit/pro/model/enums/GroupByType;

    .line 6
    const/16 v0, 0xf

    new-array v0, v0, [Lim/doit/pro/model/enums/GroupByType;

    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    aput-object v1, v0, v7

    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    aput-object v1, v0, v8

    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->contacts:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->contact:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->created:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->completed_at:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->box_in_goal:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->search:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->trash:Lim/doit/pro/model/enums/GroupByType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/enums/GroupByType;->ENUM$VALUES:[Lim/doit/pro/model/enums/GroupByType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "name"    # I
    .param p4, "icon"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lim/doit/pro/model/enums/GroupByType;->nameId:I

    .line 28
    iput p4, p0, Lim/doit/pro/model/enums/GroupByType;->iconId:I

    .line 29
    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    .local v1, "result":Lim/doit/pro/model/enums/GroupByType;
    invoke-static {}, Lim/doit/pro/model/enums/GroupByType;->values()[Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 45
    .local v0, "item":Lim/doit/pro/model/enums/GroupByType;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/GroupByType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    move-object v1, v0

    .line 47
    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/GroupByType;)Ljava/lang/String;
    .locals 1
    .param p0, "groupBy"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/GroupByType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/GroupByType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/GroupByType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->ENUM$VALUES:[Lim/doit/pro/model/enums/GroupByType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/GroupByType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lim/doit/pro/model/enums/GroupByType;->iconId:I

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lim/doit/pro/model/enums/GroupByType;->nameId:I

    return v0
.end method
