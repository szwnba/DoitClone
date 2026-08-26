.class public Lim/doit/pro/model/LastSyncLog;
.super Ljava/lang/Object;
.source "LastSyncLog.java"


# instance fields
.field private created:J

.field private errorCode:Ljava/lang/String;

.field private extraId:Ljava/lang/String;

.field private id:I

.field private itemId:Ljava/lang/String;

.field private type:Lim/doit/pro/model/enums/SyncLogType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lim/doit/pro/model/LastSyncLog;->created:J

    return-wide v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/model/LastSyncLog;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/model/LastSyncLog;->extraId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lim/doit/pro/model/LastSyncLog;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/model/LastSyncLog;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lim/doit/pro/model/enums/SyncLogType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/model/LastSyncLog;->type:Lim/doit/pro/model/enums/SyncLogType;

    return-object v0
.end method

.method public setCreated(J)V
    .locals 1
    .param p1, "created"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lim/doit/pro/model/LastSyncLog;->created:J

    .line 28
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lim/doit/pro/model/LastSyncLog;->errorCode:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setExtraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/model/LastSyncLog;->extraId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 19
    iput p1, p0, Lim/doit/pro/model/LastSyncLog;->id:I

    .line 20
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lim/doit/pro/model/LastSyncLog;->itemId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(Lim/doit/pro/model/enums/SyncLogType;)V
    .locals 0
    .param p1, "type"    # Lim/doit/pro/model/enums/SyncLogType;

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/model/LastSyncLog;->type:Lim/doit/pro/model/enums/SyncLogType;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LastSyncLog [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/doit/pro/model/LastSyncLog;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/LastSyncLog;->created:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lim/doit/pro/model/LastSyncLog;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/LastSyncLog;->extraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/LastSyncLog;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/LastSyncLog;->type:Lim/doit/pro/model/enums/SyncLogType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
