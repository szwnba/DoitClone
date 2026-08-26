.class public Lim/doit/pro/model/OpLog;
.super Ljava/lang/Object;
.source "OpLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/model/OpLog$ItemType;,
        Lim/doit/pro/model/OpLog$OpType;
    }
.end annotation


# instance fields
.field protected created:J

.field private extraId:Ljava/lang/String;

.field private id:I

.field private itemId:Ljava/lang/String;

.field private itemType:Lim/doit/pro/model/OpLog$ItemType;

.field private opType:Lim/doit/pro/model/OpLog$OpType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lim/doit/pro/model/OpLog;->created:J

    return-wide v0
.end method

.method public getExtraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/model/OpLog;->extraId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lim/doit/pro/model/OpLog;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/model/OpLog;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lim/doit/pro/model/OpLog$ItemType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/model/OpLog;->itemType:Lim/doit/pro/model/OpLog$ItemType;

    return-object v0
.end method

.method public getOpType()Lim/doit/pro/model/OpLog$OpType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    return-object v0
.end method

.method public isArchive()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCreate()Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDelete()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHide()Z
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPass()Z
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->pass:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->read:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReject()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->reject:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTrash()Z
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUncomplete()Z
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUntrash()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUpdate()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUpdateAvatar()Z
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->avatar:Lim/doit/pro/model/OpLog$OpType;

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCreated(J)V
    .locals 1
    .param p1, "created"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lim/doit/pro/model/OpLog;->created:J

    .line 66
    return-void
.end method

.method public setExtraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lim/doit/pro/model/OpLog;->extraId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    iput p1, p0, Lim/doit/pro/model/OpLog;->id:I

    .line 26
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/model/OpLog;->itemId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setItemType(Lim/doit/pro/model/OpLog$ItemType;)V
    .locals 0
    .param p1, "itemType"    # Lim/doit/pro/model/OpLog$ItemType;

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/model/OpLog;->itemType:Lim/doit/pro/model/OpLog$ItemType;

    .line 42
    return-void
.end method

.method public setOpType(Lim/doit/pro/model/OpLog$OpType;)V
    .locals 0
    .param p1, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 33
    iput-object p1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpLog [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/doit/pro/model/OpLog;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->opType:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->itemType:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/OpLog;->extraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    iget-wide v2, p0, Lim/doit/pro/model/OpLog;->created:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
