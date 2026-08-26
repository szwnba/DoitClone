.class public final enum Lim/doit/pro/asynctask/DoitAsyncTask$Status;
.super Ljava/lang/Enum;
.source "DoitAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/asynctask/DoitAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim/doit/pro/asynctask/DoitAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lim/doit/pro/asynctask/DoitAsyncTask$Status;

.field public static final enum FINISHED:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

.field public static final enum PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

.field public static final enum RUNNING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 172
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 175
    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->RUNNING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 176
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    .line 179
    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->FINISHED:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->RUNNING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->FINISHED:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ENUM$VALUES:[Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/doit/pro/asynctask/DoitAsyncTask$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lim/doit/pro/asynctask/DoitAsyncTask$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ENUM$VALUES:[Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    array-length v1, v0

    new-array v2, v1, [Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
