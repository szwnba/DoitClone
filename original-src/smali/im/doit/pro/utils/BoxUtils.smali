.class public Lim/doit/pro/utils/BoxUtils;
.super Ljava/lang/Object;
.source "BoxUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canShowAddBtn(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canShowTagFitlerBtn(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 95
    if-eqz p0, :cond_1

    .line 96
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;
    .locals 3
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    const/4 v0, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {p0}, Lim/doit/pro/utils/BoxUtils;->getGroupBys(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 176
    :cond_7
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->contacts:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 179
    :cond_8
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 180
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 182
    :cond_9
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 183
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->completed_at:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0

    .line 185
    :cond_a
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->trash:Lim/doit/pro/model/enums/GroupByType;

    goto :goto_0
.end method

.method public static getDefaultGroupBy(Lim/doit/pro/model/Goal;)Lim/doit/pro/model/enums/GroupByType;
    .locals 1
    .param p0, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 200
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->box_in_goal:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public static getDefaultGroupBy(Lim/doit/pro/model/Project;)Lim/doit/pro/model/enums/GroupByType;
    .locals 1
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 192
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public static getDefaultGroupBy(Lim/doit/pro/model/TaskContext;)Lim/doit/pro/model/enums/GroupByType;
    .locals 1
    .param p0, "taskContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 196
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public static getGroupBys(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "box"    # Lim/doit/pro/model/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Box;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/enums/GroupByType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "groupBys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/enums/GroupByType;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->contacts:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->completed_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static isNotShowConvertToProjectButton(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v2, 0x1

    .line 244
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 247
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 259
    const/4 v2, 0x0

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 248
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 251
    check-cast v1, Lim/doit/pro/model/Task;

    .line 252
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isDead()Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public static isNotShowDeleteButtonInActionBar(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 346
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotShowDeleteButtonInActionBar(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 354
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    const/4 v1, 0x0

    goto :goto_0

    .line 357
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 358
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowMovetoButton(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v2, 0x1

    .line 205
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    const/4 v2, 0x0

    goto :goto_0

    .line 208
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 209
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v0

    .line 213
    check-cast v1, Lim/doit/pro/model/Task;

    .line 214
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    .end local v1    # "task":Lim/doit/pro/model/Task;
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public static isNotShowPutBackButtonInActionBar(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 368
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 379
    const/4 v1, 0x0

    goto :goto_0

    .line 371
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 372
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowSelectContextButton(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 299
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotShowSelectContextButton(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 308
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 320
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 312
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Lim/doit/pro/model/Task;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowSelectGoalButton(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 324
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotShowSelectGoalButton(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 333
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 342
    const/4 v1, 0x0

    goto :goto_0

    .line 336
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 337
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowSelectPriorityButton(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Z
    .locals 4
    .param p0, "box"    # Lim/doit/pro/model/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Box;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 227
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 232
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    check-cast v0, Lim/doit/pro/model/Task;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowSelectPriorityButton(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 264
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 268
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isNotShowSelectProjectButton(Lim/doit/pro/model/Box;)Z
    .locals 1
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 277
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotShowSelectProjectButton(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x1

    .line 286
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 295
    const/4 v1, 0x0

    goto :goto_0

    .line 289
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 290
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isTomorrowShow()Z
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/BoxDao;->findByType(Lim/doit/pro/model/enums/BoxType;)Lim/doit/pro/model/Box;

    move-result-object v0

    .line 384
    .local v0, "tomorrowBox":Lim/doit/pro/model/Box;
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static prepareBoxesForView(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Box;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    .line 31
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v9}, Lim/doit/pro/db/persist/BoxDao;->findAllNotHidden()Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    .local v1, "boxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Box;>;"
    new-instance v5, Lim/doit/pro/model/Box;

    invoke-direct {v5}, Lim/doit/pro/model/Box;-><init>()V

    .line 33
    .local v5, "goalBox":Lim/doit/pro/model/Box;
    sget-object v9, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v9}, Lim/doit/pro/model/Box;->setType(Lim/doit/pro/model/enums/BoxType;)V

    .line 34
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lim/doit/pro/model/Box;

    invoke-direct {v2}, Lim/doit/pro/model/Box;-><init>()V

    .line 36
    .local v2, "contextBox":Lim/doit/pro/model/Box;
    sget-object v9, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v9}, Lim/doit/pro/model/Box;->setType(Lim/doit/pro/model/enums/BoxType;)V

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Lim/doit/pro/model/Box;

    invoke-direct {v4}, Lim/doit/pro/model/Box;-><init>()V

    .line 39
    .local v4, "filterBox":Lim/doit/pro/model/Box;
    sget-object v9, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v4, v9}, Lim/doit/pro/model/Box;->setType(Lim/doit/pro/model/enums/BoxType;)V

    .line 40
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "showBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Box;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 69
    new-instance v9, Lim/doit/pro/model/Box;

    const v10, 0x7f0c0057

    .line 70
    sget-object v11, Lim/doit/pro/model/enums/BoxType;->local_group_focus:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v9, v10, v11}, Lim/doit/pro/model/Box;-><init>(ILim/doit/pro/model/enums/BoxType;)V

    .line 69
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v9, Lim/doit/pro/model/Box;

    const v10, 0x7f0c0058

    .line 72
    sget-object v11, Lim/doit/pro/model/enums/BoxType;->local_group_organize:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v9, v10, v11}, Lim/doit/pro/model/Box;-><init>(ILim/doit/pro/model/enums/BoxType;)V

    .line 71
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Lim/doit/pro/model/Box;

    const v10, 0x7f0c0059

    sget-object v11, Lim/doit/pro/model/enums/BoxType;->local_group_done:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v9, v10, v11}, Lim/doit/pro/model/Box;-><init>(ILim/doit/pro/model/enums/BoxType;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v9, Lim/doit/pro/utils/BoxUtils$1;

    invoke-direct {v9}, Lim/doit/pro/utils/BoxUtils$1;-><init>()V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    return-object v6

    .line 42
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 43
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v8

    .line 44
    .local v8, "type":Lim/doit/pro/model/enums/BoxType;
    sget-object v10, Lim/doit/pro/model/enums/BoxType;->doitnow:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v10, v8}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lim/doit/pro/model/enums/BoxType;->contacts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v10, v8}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 45
    sget-object v10, Lim/doit/pro/model/enums/BoxType;->nocontext:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v10, v8}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 46
    sget-object v10, Lim/doit/pro/model/enums/BoxType;->noproject:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v10, v8}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 49
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->setBoxViewRes(Lim/doit/pro/model/Box;)V

    .line 51
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v10

    iget-object v10, v10, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v10}, Lim/doit/pro/db/persist/TaskDao;->countInboxTotal()I

    move-result v10

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setCountTotal(I)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 54
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v10

    iget-object v10, v10, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v10}, Lim/doit/pro/db/persist/TaskDao;->countTodayTotal()I

    move-result v10

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setCountTotal(I)V

    .line 55
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v10

    iget-object v10, v10, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v10}, Lim/doit/pro/db/persist/TaskDao;->countTodayOverdue()I

    move-result v10

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setCountOverdue(I)V

    goto/16 :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 57
    const v10, 0x7f0c004f

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setNameResId(I)V

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 59
    .local v7, "tomorrow":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v7, v12, v10}, Ljava/util/Calendar;->add(II)V

    .line 60
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 61
    .local v3, "dayOfMonth":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "icon_leftbox_tomorrow"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    .line 61
    invoke-static {v10, v11}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setIconResId(I)V

    goto/16 :goto_0

    .line 63
    .end local v3    # "dayOfMonth":I
    .end local v7    # "tomorrow":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v10

    iget-object v10, v10, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v10}, Lim/doit/pro/db/persist/TaskDao;->countWaitingTotal()I

    move-result v10

    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setCountTotal(I)V

    .line 65
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v10

    iget-object v10, v10, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 66
    invoke-virtual {v10}, Lim/doit/pro/db/persist/TaskDao;->countWaitingOverdue()I

    move-result v10

    .line 65
    invoke-virtual {v0, v10}, Lim/doit/pro/model/Box;->setCountOverdue(I)V

    goto/16 :goto_0
.end method

.method public static setBoxViewRes(Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 25
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Box;->setNameResId(I)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "icon_leftbox_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    .line 26
    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Box;->setIconResId(I)V

    .line 28
    return-void
.end method
