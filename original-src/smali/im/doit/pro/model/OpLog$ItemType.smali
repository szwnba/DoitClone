.class public final enum Lim/doit/pro/model/OpLog$ItemType;
.super Ljava/lang/Enum;
.source "OpLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/model/OpLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/OpLog$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum agenterror:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum box:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum contact:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum contactgroup:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum context:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum daily_review:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum filter:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum goal:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum notice:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum project:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum purchase:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum subtask:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum tag:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum task:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum taskcomment:Lim/doit/pro/model/OpLog$ItemType;

.field public static final enum user:Lim/doit/pro/model/OpLog$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "task"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->task:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "project"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->project:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "context"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->context:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "tag"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->tag:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "box"

    invoke-direct {v0, v1, v7}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->box:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "filter"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->filter:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "agenterror"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->agenterror:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "contact"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->contact:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "contactgroup"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->contactgroup:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "taskcomment"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->taskcomment:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "user"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->user:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "notice"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->notice:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "goal"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "subtask"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->subtask:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "daily_review"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->daily_review:Lim/doit/pro/model/OpLog$ItemType;

    new-instance v0, Lim/doit/pro/model/OpLog$ItemType;

    const-string v1, "purchase"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->purchase:Lim/doit/pro/model/OpLog$ItemType;

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [Lim/doit/pro/model/OpLog$ItemType;

    sget-object v1, Lim/doit/pro/model/OpLog$ItemType;->task:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/OpLog$ItemType;->project:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/OpLog$ItemType;->context:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/OpLog$ItemType;->tag:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/OpLog$ItemType;->box:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->filter:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->agenterror:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->contact:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->contactgroup:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->taskcomment:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->user:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->notice:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->subtask:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->daily_review:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lim/doit/pro/model/OpLog$ItemType;->purchase:Lim/doit/pro/model/OpLog$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/OpLog$ItemType;->ENUM$VALUES:[Lim/doit/pro/model/OpLog$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/OpLog$ItemType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/OpLog$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/OpLog$ItemType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/OpLog$ItemType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->ENUM$VALUES:[Lim/doit/pro/model/OpLog$ItemType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/OpLog$ItemType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
