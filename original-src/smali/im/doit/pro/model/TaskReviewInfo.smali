.class public Lim/doit/pro/model/TaskReviewInfo;
.super Lim/doit/pro/model/BaseEntity;
.source "TaskReviewInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x392b912ce409574bL


# instance fields
.field private archived:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private completed:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dailyReviewUuid:Ljava/lang/String;

.field private deferred:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private estimatedTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "estimated_time"
    .end annotation
.end field

.field private repeatNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeat_no"
    .end annotation
.end field

.field private spentTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spent_time"
    .end annotation
.end field

.field private trashed:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchived()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->archived:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCompleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->completed:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDailyReviewUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->dailyReviewUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEstimatedTime()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lim/doit/pro/model/TaskReviewInfo;->estimatedTime:I

    return v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSpentTime()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lim/doit/pro/model/TaskReviewInfo;->spentTime:I

    return v0
.end method

.method public getTrashed()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lim/doit/pro/model/TaskReviewInfo;->trashed:Ljava/util/Calendar;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getDeleted()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getTrashed()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getCompleted()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeferred()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lim/doit/pro/model/TaskReviewInfo;->deferred:Z

    return v0
.end method

.method public isUncompleted()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getDeleted()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getArchived()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getTrashed()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->isDeferred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lim/doit/pro/model/TaskReviewInfo;->getCompleted()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
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
    .line 66
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->archived:Ljava/util/Calendar;

    .line 67
    return-void
.end method

.method public setCompleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "completed"    # Ljava/util/Calendar;

    .prologue
    .line 50
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->completed:Ljava/util/Calendar;

    .line 51
    return-void
.end method

.method public setDailyReviewUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraUuid"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->dailyReviewUuid:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setDeferred(Z)V
    .locals 0
    .param p1, "deferred"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lim/doit/pro/model/TaskReviewInfo;->deferred:Z

    .line 107
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 74
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->deleted:Ljava/util/Calendar;

    .line 75
    return-void
.end method

.method public setEstimatedTime(I)V
    .locals 0
    .param p1, "estimatedTime"    # I

    .prologue
    .line 90
    iput p1, p0, Lim/doit/pro/model/TaskReviewInfo;->estimatedTime:I

    .line 91
    return-void
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->repeatNo:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSpentTime(I)V
    .locals 0
    .param p1, "spentTime"    # I

    .prologue
    .line 82
    iput p1, p0, Lim/doit/pro/model/TaskReviewInfo;->spentTime:I

    .line 83
    return-void
.end method

.method public setTrashed(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "trashed"    # Ljava/util/Calendar;

    .prologue
    .line 58
    iput-object p1, p0, Lim/doit/pro/model/TaskReviewInfo;->trashed:Ljava/util/Calendar;

    .line 59
    return-void
.end method
