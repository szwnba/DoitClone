.class public Lim/doit/pro/activity/utils/ListUIHelper;
.super Ljava/lang/Object;
.source "ListUIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTags(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    return-object v2

    .line 75
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 76
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 77
    check-cast v3, Lim/doit/pro/model/Task;

    .line 78
    .local v3, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    .line 79
    .local v4, "taskTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static initBoxTaskListMenuBtns(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 0
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setAddBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 64
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setDailyPlanBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 65
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setDailyReviewBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 66
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setTagFilterBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 67
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setGroupbyBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 68
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setNextBoxShowModeBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 69
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setEmptyBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    .line 70
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/ListUIHelper;->setArchiveBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    goto :goto_0
.end method

.method public static mergeListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Goal;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .local p1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "goalIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v3, "projectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 30
    :cond_0
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 39
    :cond_2
    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 50
    :cond_4
    return-object v0

    .line 26
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Goal;

    .line 27
    .local v2, "item":Lim/doit/pro/model/Goal;
    invoke-virtual {v2}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v2    # "item":Lim/doit/pro/model/Goal;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 32
    .local v2, "item":Lim/doit/pro/model/Project;
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    .end local v2    # "item":Lim/doit/pro/model/Project;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 41
    .local v2, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 44
    :cond_9
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static setAddBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 95
    const v1, 0x7f0b020c

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, "addBtn":Landroid/view/MenuItem;
    invoke-static {p1}, Lim/doit/pro/utils/BoxUtils;->canShowAddBtn(Lim/doit/pro/model/Box;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    return-void
.end method

.method private static setArchiveBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 149
    const v1, 0x7f0b021b

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    .local v0, "archiveBtn":Landroid/view/MenuItem;
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    return-void
.end method

.method private static setDailyPlanBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 100
    const v1, 0x7f0b021c

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 101
    .local v0, "dailyPlanBtn":Landroid/view/MenuItem;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static setDailyReviewBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 109
    const v1, 0x7f0b021d

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, "dailyReviewBtn":Landroid/view/MenuItem;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static setEmptyBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 144
    const v1, 0x7f0b021a

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    .local v0, "emptyBtn":Landroid/view/MenuItem;
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    return-void
.end method

.method private static setGroupbyBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 3
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    const/4 v1, 0x1

    .line 124
    const v2, 0x7f0b021f

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 125
    .local v0, "groupbyBtn":Landroid/view/MenuItem;
    invoke-static {p1}, Lim/doit/pro/utils/BoxUtils;->getGroupBys(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 126
    .local v1, "isShowGroupbyBtn":Z
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    return-void

    .line 125
    .end local v1    # "isShowGroupbyBtn":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setNextBoxShowModeBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 130
    const v1, 0x7f0b021e

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 131
    .local v0, "nextBoxShowMode":Landroid/view/MenuItem;
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isShowOne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const v1, 0x7f0c0226

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    const v1, 0x7f0c0225

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static setTagFilterBtnVisible(Landroid/view/Menu;Lim/doit/pro/model/Box;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 118
    const v1, 0x7f0b020f

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    .local v0, "tagFilterBtn":Landroid/view/MenuItem;
    invoke-static {p1}, Lim/doit/pro/utils/BoxUtils;->canShowTagFitlerBtn(Lim/doit/pro/model/Box;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    return-void
.end method
