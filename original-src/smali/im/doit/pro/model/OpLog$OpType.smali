.class public final enum Lim/doit/pro/model/OpLog$OpType;
.super Ljava/lang/Enum;
.source "OpLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/model/OpLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/model/OpLog$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/model/OpLog$OpType;

.field public static final enum archive:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum avatar:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum complete:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum create:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum delete:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum hide:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum pass:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum read:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum reject:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum trash:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum uncomplete:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum untrash:Lim/doit/pro/model/OpLog$OpType;

.field public static final enum update:Lim/doit/pro/model/OpLog$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "create"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "update"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "complete"

    invoke-direct {v0, v1, v5}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "trash"

    invoke-direct {v0, v1, v6}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "delete"

    invoke-direct {v0, v1, v7}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "archive"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "uncomplete"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "untrash"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "hide"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "read"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->read:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "pass"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->pass:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "reject"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->reject:Lim/doit/pro/model/OpLog$OpType;

    new-instance v0, Lim/doit/pro/model/OpLog$OpType;

    const-string v1, "avatar"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/OpLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->avatar:Lim/doit/pro/model/OpLog$OpType;

    .line 5
    const/16 v0, 0xd

    new-array v0, v0, [Lim/doit/pro/model/OpLog$OpType;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    aput-object v1, v0, v4

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    aput-object v1, v0, v5

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    aput-object v1, v0, v6

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->read:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->pass:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->reject:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->avatar:Lim/doit/pro/model/OpLog$OpType;

    aput-object v2, v0, v1

    sput-object v0, Lim/doit/pro/model/OpLog$OpType;->ENUM$VALUES:[Lim/doit/pro/model/OpLog$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/model/OpLog$OpType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/model/OpLog$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/OpLog$OpType;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/model/OpLog$OpType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->ENUM$VALUES:[Lim/doit/pro/model/OpLog$OpType;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/model/OpLog$OpType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
