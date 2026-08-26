.class public Lim/doit/pro/model/BaseTimestampsEntity;
.super Lim/doit/pro/model/BaseEntityWithPos;
.source "BaseTimestampsEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x334de4aa6fd254ceL


# instance fields
.field protected archived:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected completed:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected trashed:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithPos;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchived()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->archived:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCompleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->completed:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTrashed()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->trashed:Ljava/util/Calendar;

    return-object v0
.end method

.method public isArchived()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->archived:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotArchived()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotTrashed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->completed:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->deleted:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotArchived()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isArchived()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotCompleted()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotDeleted()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotTrashed()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTrashed()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseTimestampsEntity;->isNotArchived()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/BaseTimestampsEntity;->trashed:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArchived(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "archived"    # Ljava/util/Calendar;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/model/BaseTimestampsEntity;->archived:Ljava/util/Calendar;

    .line 44
    return-void
.end method

.method public setCompleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "completed"    # Ljava/util/Calendar;

    .prologue
    .line 27
    iput-object p1, p0, Lim/doit/pro/model/BaseTimestampsEntity;->completed:Ljava/util/Calendar;

    .line 28
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 51
    iput-object p1, p0, Lim/doit/pro/model/BaseTimestampsEntity;->deleted:Ljava/util/Calendar;

    .line 52
    return-void
.end method

.method public setTrashed(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "trashed"    # Ljava/util/Calendar;

    .prologue
    .line 35
    iput-object p1, p0, Lim/doit/pro/model/BaseTimestampsEntity;->trashed:Ljava/util/Calendar;

    .line 36
    return-void
.end method
