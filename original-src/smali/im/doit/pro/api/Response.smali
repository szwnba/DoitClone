.class public Lim/doit/pro/api/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFLICT:I = 0x199

.field public static final DOIT_ERROR:I = 0x190

.field public static final DOIT_GCAL_ERROR:I = 0x19c

.field public static final EXPIRED_ACCOUNT:I = 0x1a2

.field public static final ORDINARY_ACCOUNT:I = 0x192

.field public static final SERVER_MIGRATE:I = 0x12d

.field public static final SUCCESS:I = 0xc8

.field public static final UNAUTHORIZED:I = 0x191

.field public static final VERSION_TOO_OLD:I = 0x1aa

.field private static final serialVersionUID:J = -0x1f0ae39fe1df9e78L


# instance fields
.field public body:Ljava/lang/String;

.field public code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lim/doit/pro/api/Response;->code:I

    .line 53
    iput-object p2, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0xc8

    iput v0, p0, Lim/doit/pro/api/Response;->code:I

    .line 58
    iput-object p1, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public isConflict()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpiredAccount()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrdinaryAccount()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerMigrate()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSucces()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnauthorized()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnexpectError()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x193

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersionTooOld()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x1aa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notFound()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lim/doit/pro/api/Response;->code:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    return-object v0
.end method
