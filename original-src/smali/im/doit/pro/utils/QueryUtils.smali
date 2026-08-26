.class public Lim/doit/pro/utils/QueryUtils;
.super Ljava/lang/Object;
.source "QueryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDatasByBox(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "box"    # Lim/doit/pro/model/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Box;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v3, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 115
    .local v3, "taskDao":Lim/doit/pro/db/persist/TaskDao;
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findInbox()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findToday()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findNext()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5}, Lim/doit/pro/db/persist/ProjectDao;->findTomorrow()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findTomorrow()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5}, Lim/doit/pro/db/persist/ProjectDao;->findScheduled()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findScheculed()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findSomeday()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 130
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findWaiting()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 132
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v5}, Lim/doit/pro/db/persist/GoalDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 134
    invoke-virtual {v5}, Lim/doit/pro/db/persist/ProjectDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v2

    .line 135
    .local v2, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v4

    .line 136
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v1, v2, v4}, Lim/doit/pro/activity/utils/ListUIHelper;->mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 137
    .end local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_7
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 138
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v5}, Lim/doit/pro/db/persist/GoalDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .restart local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 140
    invoke-virtual {v5}, Lim/doit/pro/db/persist/ProjectDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .restart local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v4

    .line 142
    .restart local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v1, v2, v4}, Lim/doit/pro/activity/utils/ListUIHelper;->mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 143
    .end local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_8
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isDoitNow()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    invoke-virtual {v3}, Lim/doit/pro/db/persist/TaskDao;->findDoitNow()Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    .restart local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 147
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "findTasksByBox box type error."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static findDatasByBoxForWidget(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "box"    # Lim/doit/pro/model/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Box;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0}, Lim/doit/pro/utils/QueryUtils;->findDatasByBox(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 155
    .local v2, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-static {p0}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/model/Box;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 156
    invoke-virtual {v2, p0, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 157
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    return-object v1
.end method

.method public static findDatasByFilterForWidget(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v2, p0}, Lim/doit/pro/db/persist/TaskDao;->findByFilter(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-static {p0, v0}, Lim/doit/pro/utils/QueryUtils;->groupAndSortDatasByFilter(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 191
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v1}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static findDatasByGoal(Lim/doit/pro/model/Goal;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "goal"    # Lim/doit/pro/model/Goal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Goal;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 247
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->findCompletedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    .local v1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 249
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->findCompletedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 258
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lim/doit/pro/activity/utils/ListUIHelper;->mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 259
    return-object v0

    .line 250
    .end local v1    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->isTrashed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 252
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->findTrashedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 253
    .restart local v1    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->findTrashedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 254
    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    goto :goto_0

    .line 255
    .end local v1    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 256
    .restart local v1    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    goto :goto_0
.end method

.method public static findDatasByGoalForWidget(Lim/doit/pro/model/Goal;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "goal"    # Lim/doit/pro/model/Goal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Goal;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p0}, Lim/doit/pro/utils/QueryUtils;->findDatasByGoal(Lim/doit/pro/model/Goal;)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    .local v0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 267
    .local v2, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-static {p0}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Goal;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v4

    .line 266
    invoke-virtual {v2, v4, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 268
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    return-object v1
.end method

.method public static findDatasByProject(Lim/doit/pro/model/Project;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "project"    # Lim/doit/pro/model/Project;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Project;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 220
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findCompletedByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 223
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findTrashedByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 226
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static findDatasByProjectForWidget(Lim/doit/pro/model/Project;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "project"    # Lim/doit/pro/model/Project;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Project;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p0}, Lim/doit/pro/utils/QueryUtils;->findDatasByProject(Lim/doit/pro/model/Project;)Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    .local v0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 236
    .local v2, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-static {p0}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Project;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v4

    .line 235
    invoke-virtual {v2, v4, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 237
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v1

    .line 238
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    return-object v1
.end method

.method public static findDatasByTaskContext(Lim/doit/pro/model/TaskContext;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "taskContext"    # Lim/doit/pro/model/TaskContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/TaskContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 276
    invoke-virtual {p0}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findByTaskContext(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    return-object v0
.end method

.method public static findDatasByTaskContextForWidget(Lim/doit/pro/model/TaskContext;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "taskContext"    # Lim/doit/pro/model/TaskContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/TaskContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p0}, Lim/doit/pro/utils/QueryUtils;->findDatasByTaskContext(Lim/doit/pro/model/TaskContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .local v0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 285
    .local v2, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-static {p0}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/TaskContext;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v4

    .line 284
    invoke-virtual {v2, v4, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 286
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    return-object v1
.end method

.method public static findDatasForWidgetCalendar(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v6, p0}, Lim/doit/pro/db/persist/TaskDao;->findByStartAt(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;-><init>()V

    .line 295
    .local v2, "grouper":Lim/doit/pro/activity/listview/group/DBaseGrouper;
    invoke-virtual {v2, v0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v5

    .line 296
    .local v5, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "i":I
    invoke-virtual {v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    .end local v3    # "i":I
    :goto_1
    return-object v1

    .line 299
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/BaseEntityWithPos;

    .line 300
    .local v4, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    invoke-virtual {v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private static getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    :goto_1
    return-object v0

    .line 314
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 315
    .local v1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 318
    .end local v1    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private static getFilterComparator(Lim/doit/pro/model/Filter;)Ljava/util/Comparator;
    .locals 8
    .param p0, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "orderbyField":Ljava/lang/String;
    const/4 v0, 0x1

    .line 198
    .local v0, "asc":Z
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    .local v4, "orderbys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 201
    .local v2, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_1

    .line 202
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "orderbyField":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 203
    .restart local v3    # "orderbyField":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "ascStr":Ljava/lang/String;
    const-string v5, "asc"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 209
    :goto_0
    new-instance v5, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;

    invoke-direct {v5, v3, v0}, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;-><init>(Ljava/lang/String;Z)V

    .line 212
    .end local v1    # "ascStr":Ljava/lang/String;
    .end local v2    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    .line 207
    .restart local v1    # "ascStr":Ljava/lang/String;
    .restart local v2    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    .end local v1    # "ascStr":Ljava/lang/String;
    .end local v2    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getTotalCount(Lim/doit/pro/model/Box;)I
    .locals 9
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "count":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v5, v7, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 31
    .local v5, "taskDao":Lim/doit/pro/db/persist/TaskDao;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v3, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 32
    .local v3, "projectDao":Lim/doit/pro/db/persist/ProjectDao;
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 33
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countInboxTotal()I

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 35
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countTodayTotal()I

    move-result v0

    .line 36
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 37
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countNextTotal()I

    move-result v0

    .line 38
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 39
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countTomorrowTotal()I

    move-result v0

    .line 40
    invoke-virtual {v3}, Lim/doit/pro/db/persist/ProjectDao;->countTomorrowTotal()I

    move-result v7

    add-int/2addr v0, v7

    .line 41
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 42
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countScheculedTotal()I

    move-result v0

    .line 43
    invoke-virtual {v3}, Lim/doit/pro/db/persist/ProjectDao;->countScheduledTotal()I

    move-result v7

    add-int/2addr v0, v7

    .line 44
    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 45
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countSomedayTotal()I

    move-result v0

    .line 46
    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 47
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countWaitingTotal()I

    move-result v0

    .line 48
    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 49
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v7}, Lim/doit/pro/db/persist/GoalDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 51
    invoke-virtual {v7}, Lim/doit/pro/db/persist/ProjectDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v4

    .line 52
    .local v4, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v6

    .line 53
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v1, v4, v6}, Lim/doit/pro/activity/utils/ListUIHelper;->mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 55
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    goto :goto_0

    .end local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .end local v4    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_7
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 57
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v7}, Lim/doit/pro/db/persist/GoalDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .restart local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 59
    invoke-virtual {v7}, Lim/doit/pro/db/persist/ProjectDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v4

    .line 60
    .restart local v4    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->findTrash()Ljava/util/ArrayList;

    move-result-object v6

    .line 61
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v1, v4, v6}, Lim/doit/pro/activity/utils/ListUIHelper;->mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 63
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    goto/16 :goto_0

    .end local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .end local v4    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_8
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isDoitNow()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 65
    invoke-virtual {v5}, Lim/doit/pro/db/persist/TaskDao;->countDoitNow()I

    move-result v0

    .line 66
    goto/16 :goto_0

    .line 67
    :cond_9
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "getTotalCount box type error."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getTotalCount(Lim/doit/pro/model/Filter;)I
    .locals 1
    .param p0, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 73
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v0, p0}, Lim/doit/pro/db/persist/TaskDao;->findByFilter(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getTotalCount(Lim/doit/pro/model/Goal;)I
    .locals 3
    .param p0, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 80
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->countCompletedByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 82
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countCompletedByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->isTrashed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 85
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->countTrashedByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 87
    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countTrashedByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->countByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countByGoal(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getTotalCount(Lim/doit/pro/model/Project;)I
    .locals 2
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 96
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 98
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->countCompletedByProject(Ljava/lang/String;)I

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 101
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->countTrashedByProject(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->countByProject(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getTotalCount(Lim/doit/pro/model/TaskContext;)I
    .locals 2
    .param p0, "taskContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 108
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 109
    invoke-virtual {p0}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->countByTaskContext(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static groupAndSortDatasByFilter(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 6
    .param p0, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 174
    .local v1, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 176
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {p0}, Lim/doit/pro/utils/QueryUtils;->getFilterComparator(Lim/doit/pro/model/Filter;)Ljava/util/Comparator;

    move-result-object v0

    .line 177
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lim/doit/pro/model/BaseEntityWithPos;>;"
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    :cond_0
    return-object v3

    .line 178
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 179
    .local v2, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static sortDatasWithoutGrouper(Ljava/util/ArrayList;Lim/doit/pro/model/enums/GroupByType;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "groupByType"    # Lim/doit/pro/model/enums/GroupByType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;",
            "Lim/doit/pro/model/enums/GroupByType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    .line 165
    .local v1, "grouper":Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    invoke-virtual {v1, p1, p0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v2

    .line 167
    .local v2, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->getDatasWithoutGrouper(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    return-object v0
.end method
