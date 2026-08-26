.class public Lim/doit/pro/model/BaseEntityWithPos;
.super Lim/doit/pro/model/BaseEntity;
.source "BaseEntityWithPos.java"


# static fields
.field private static final serialVersionUID:J = -0x185889778b190c09L


# instance fields
.field protected name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pos:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    check-cast p0, Lim/doit/pro/model/Project;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getContext()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseEndAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 153
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    check-cast p0, Lim/doit/pro/model/Project;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 156
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBasePriority()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v0

    .line 146
    :goto_0
    return v0

    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseProject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseStartAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    check-cast p0, Lim/doit/pro/model/Project;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 139
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGoal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 126
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    check-cast p0, Lim/doit/pro/model/Project;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/model/BaseEntityWithPos;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lim/doit/pro/model/BaseEntityWithPos;->pos:J

    return-wide v0
.end method

.method public getTrashed()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPos()V
    .locals 6

    .prologue
    .line 180
    iget-wide v2, p0, Lim/doit/pro/model/BaseEntityWithPos;->pos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 181
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxPosition()J

    move-result-wide v2

    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    add-long v0, v2, v4

    .line 182
    .local v0, "pos":J
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 183
    const-wide v0, 0x7ffffffffffffffeL

    .line 185
    :cond_0
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/model/BaseEntityWithPos;->setPos(J)V

    .line 187
    .end local v0    # "pos":J
    :cond_1
    return-void
.end method

.method public isArchived()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Lim/doit/pro/model/Task;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 170
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    check-cast p0, Lim/doit/pro/model/Project;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v0

    goto :goto_0

    .line 172
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    check-cast p0, Lim/doit/pro/model/Goal;

    .end local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->isEditable()Z

    move-result v0

    goto :goto_0

    .line 175
    .restart local p0    # "this":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoal()Z
    .locals 1

    .prologue
    .line 51
    instance-of v0, p0, Lim/doit/pro/model/Goal;

    return v0
.end method

.method public isGrouper()Z
    .locals 1

    .prologue
    .line 59
    instance-of v0, p0, Lim/doit/pro/ui/model/GrouperForListView;

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isNotArchived()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

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
    .line 103
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

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
    .line 71
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v0

    return v0
.end method

.method public isNotHidden()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

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
    .line 95
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProject()Z
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Lim/doit/pro/model/Project;

    return v0
.end method

.method public isTagFilter()Z
    .locals 1

    .prologue
    .line 63
    instance-of v0, p0, Lim/doit/pro/ui/model/TagFilter;

    return v0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 43
    instance-of v0, p0, Lim/doit/pro/model/Task;

    return v0
.end method

.method public isTaskContext()Z
    .locals 1

    .prologue
    .line 55
    instance-of v0, p0, Lim/doit/pro/model/TaskContext;

    return v0
.end method

.method public isTrashed()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lim/doit/pro/model/BaseEntityWithPos;->name:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntityWithPos;->setChanged(Z)V

    .line 31
    return-void
.end method

.method public setPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lim/doit/pro/model/BaseEntityWithPos;->pos:J

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntityWithPos;->setChanged(Z)V

    .line 40
    return-void
.end method
