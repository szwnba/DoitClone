.class public final enum Lim/doit/pro/model/enums/SyncLogType;
.super Ljava/lang/Enum;
.source "SyncLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/SyncLogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum AUDIO:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum AVATAR:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum BOX:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum CONTACT:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum CONTACT_GROUP:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum CONTEXT:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum DAILY_REVIEW:Lim/doit/pro/model/enums/SyncLogType;

.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum FILTER:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum GCAL_SYNC:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum GOAL:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum GUIDE_TIP:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum MIXED:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum NOTICE:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum PROJECT:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum PURCHASE:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum SUB_TASK:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum TAG:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum TASK:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum TASK_COMMENT:Lim/doit/pro/model/enums/SyncLogType;

.field public static final enum USER:Lim/doit/pro/model/enums/SyncLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->USER:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "BOX"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->BOX:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "TASK"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->TASK:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "PROJECT"

    invoke-direct {v0, v1, v7}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->PROJECT:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "CONTEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->CONTEXT:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "TAG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->TAG:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "TASK_COMMENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->TASK_COMMENT:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "CONTACT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->CONTACT:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "CONTACT_GROUP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->CONTACT_GROUP:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "SUB_TASK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->SUB_TASK:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "NOTICE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->NOTICE:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "DAILY_REVIEW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->DAILY_REVIEW:Lim/doit/pro/model/enums/SyncLogType;

    .line 8
    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "FILTER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->FILTER:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "GOAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->GOAL:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "ACCOUNT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->ACCOUNT:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "AVATAR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->AVATAR:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "GUIDE_TIP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->GUIDE_TIP:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "AUDIO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->AUDIO:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "MIXED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->MIXED:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "GCAL_SYNC"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->GCAL_SYNC:Lim/doit/pro/model/enums/SyncLogType;

    new-instance v0, Lim/doit/pro/model/enums/SyncLogType;

    const-string v1, "PURCHASE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/SyncLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->PURCHASE:Lim/doit/pro/model/enums/SyncLogType;

    .line 5
    const/16 v0, 0x16

    new-array v0, v0, [Lim/doit/pro/model/enums/SyncLogType;

    sget-object v1, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/enums/SyncLogType;->USER:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/enums/SyncLogType;->BOX:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/enums/SyncLogType;->TASK:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/enums/SyncLogType;->PROJECT:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->CONTEXT:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->TAG:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->TASK_COMMENT:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->CONTACT:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->CONTACT_GROUP:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->SUB_TASK:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->NOTICE:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->DAILY_REVIEW:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->FILTER:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->GOAL:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->ACCOUNT:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->AVATAR:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->GUIDE_TIP:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->AUDIO:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->MIXED:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->GCAL_SYNC:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->PURCHASE:Lim/doit/pro/model/enums/SyncLogType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/enums/SyncLogType;->ENUM$VALUES:[Lim/doit/pro/model/enums/SyncLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/SyncLogType;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 19
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :cond_1
    invoke-static {}, Lim/doit/pro/model/enums/SyncLogType;->values()[Lim/doit/pro/model/enums/SyncLogType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 19
    goto :goto_0

    .line 14
    :cond_2
    aget-object v0, v3, v2

    .line 15
    .local v0, "item":Lim/doit/pro/model/enums/SyncLogType;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/SyncLogType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lim/doit/pro/model/enums/SyncLogType;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/SyncLogType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/SyncLogType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/SyncLogType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/SyncLogType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->ENUM$VALUES:[Lim/doit/pro/model/enums/SyncLogType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
