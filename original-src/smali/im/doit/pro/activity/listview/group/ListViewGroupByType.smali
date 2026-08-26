.class public final enum Lim/doit/pro/activity/listview/group/ListViewGroupByType;
.super Ljava/lang/Enum;
.source "ListViewGroupByType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/activity/listview/group/ListViewGroupByType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum box_in_context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum box_in_goal:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum box_in_project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum completed:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum contact:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum deadline:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum priority:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum startat_in_scheduled:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum startat_in_today:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum startat_in_tomorrow:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

.field public static final enum status:Lim/doit/pro/activity/listview/group/ListViewGroupByType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "priority"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->priority:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 5
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "context"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 6
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "project"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 7
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "startat_in_today"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_today:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 8
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "startat_in_tomorrow"

    invoke-direct {v0, v1, v7}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_tomorrow:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 9
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "startat_in_scheduled"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_scheduled:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 10
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "deadline"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->deadline:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 11
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "completed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->completed:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 12
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "contact"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->contact:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 13
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "box_in_project"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 14
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "box_in_goal"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_goal:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 15
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "box_in_context"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 16
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    const-string v1, "status"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupByType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->status:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    sget-object v1, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->priority:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_today:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_tomorrow:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->startat_in_scheduled:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->deadline:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->completed:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->contact:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_project:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_goal:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->box_in_context:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->status:Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->ENUM$VALUES:[Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/activity/listview/group/ListViewGroupByType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/activity/listview/group/ListViewGroupByType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/activity/listview/group/ListViewGroupByType;->ENUM$VALUES:[Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/activity/listview/group/ListViewGroupByType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
