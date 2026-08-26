.class public final enum Lim/doit/pro/model/enums/NoticeType;
.super Ljava/lang/Enum;
.source "NoticeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/enums/NoticeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum ACTIVATE_BY_TASK:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum AD:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum ALL_RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum AUTO_ACTIVATE_PROJECT:Lim/doit/pro/model/enums/NoticeType;

.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/enums/NoticeType;

.field public static final enum FORWARD:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum INVITE:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum NEW_COMMENT:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum REJECT:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum REMINDER:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum SENDER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum SENDER_DELETED:Lim/doit/pro/model/enums/NoticeType;

.field public static final enum SYSTEM:Lim/doit/pro/model/enums/NoticeType;


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
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->FORWARD:Lim/doit/pro/model/enums/NoticeType;

    .line 8
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "RECEIVER_COMPLETED"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    .line 9
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "ALL_RECEIVER_COMPLETED"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->ALL_RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    .line 10
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "SENDER_DELETED"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->SENDER_DELETED:Lim/doit/pro/model/enums/NoticeType;

    .line 11
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "REMINDER"

    invoke-direct {v0, v1, v7}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    .line 12
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "INVITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->INVITE:Lim/doit/pro/model/enums/NoticeType;

    .line 13
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "ACCEPT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->ACCEPT:Lim/doit/pro/model/enums/NoticeType;

    .line 14
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "REJECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->REJECT:Lim/doit/pro/model/enums/NoticeType;

    .line 15
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "SYSTEM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->SYSTEM:Lim/doit/pro/model/enums/NoticeType;

    .line 16
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "AD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->AD:Lim/doit/pro/model/enums/NoticeType;

    .line 17
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "ACTIVATE_BY_TASK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->ACTIVATE_BY_TASK:Lim/doit/pro/model/enums/NoticeType;

    .line 18
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "SENDER_COMPLETED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->SENDER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    .line 19
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "NEW_COMMENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->NEW_COMMENT:Lim/doit/pro/model/enums/NoticeType;

    .line 20
    new-instance v0, Lim/doit/pro/model/enums/NoticeType;

    const-string v1, "AUTO_ACTIVATE_PROJECT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/enums/NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->AUTO_ACTIVATE_PROJECT:Lim/doit/pro/model/enums/NoticeType;

    .line 5
    const/16 v0, 0xe

    new-array v0, v0, [Lim/doit/pro/model/enums/NoticeType;

    sget-object v1, Lim/doit/pro/model/enums/NoticeType;->FORWARD:Lim/doit/pro/model/enums/NoticeType;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/enums/NoticeType;->RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/enums/NoticeType;->ALL_RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/enums/NoticeType;->SENDER_DELETED:Lim/doit/pro/model/enums/NoticeType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->INVITE:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->ACCEPT:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->REJECT:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->SYSTEM:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->AD:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->ACTIVATE_BY_TASK:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->SENDER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->NEW_COMMENT:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->AUTO_ACTIVATE_PROJECT:Lim/doit/pro/model/enums/NoticeType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/enums/NoticeType;->ENUM$VALUES:[Lim/doit/pro/model/enums/NoticeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/NoticeType;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    invoke-static {}, Lim/doit/pro/model/enums/NoticeType;->values()[Lim/doit/pro/model/enums/NoticeType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 26
    :cond_2
    aget-object v0, v3, v2

    .line 27
    .local v0, "item":Lim/doit/pro/model/enums/NoticeType;
    invoke-virtual {v0}, Lim/doit/pro/model/enums/NoticeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString(Lim/doit/pro/model/enums/NoticeType;)Ljava/lang/String;
    .locals 1
    .param p0, "noticeType"    # Lim/doit/pro/model/enums/NoticeType;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/enums/NoticeType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/enums/NoticeType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/enums/NoticeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/NoticeType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/enums/NoticeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/enums/NoticeType;->ENUM$VALUES:[Lim/doit/pro/model/enums/NoticeType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/enums/NoticeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
