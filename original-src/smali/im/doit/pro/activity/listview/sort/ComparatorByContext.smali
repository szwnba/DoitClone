.class public Lim/doit/pro/activity/listview/sort/ComparatorByContext;
.super Ljava/lang/Object;
.source "ComparatorByContext.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/model/BaseEntityWithPos;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I
    .locals 10
    .param p1, "one"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .local v2, "diff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    .line 23
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseContext()Ljava/lang/String;

    move-result-object v5

    .local v5, "oneContextId":Ljava/lang/String;
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseContext()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "anotherContextId":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "oneContext":Lim/doit/pro/model/TaskContext;
    const/4 v0, 0x0

    .line 25
    .local v0, "anotherContext":Lim/doit/pro/model/TaskContext;
    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v6, v5}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    .end local v4    # "oneContext":Lim/doit/pro/model/TaskContext;
    check-cast v4, Lim/doit/pro/model/TaskContext;

    .line 28
    .restart local v4    # "oneContext":Lim/doit/pro/model/TaskContext;
    :cond_0
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 29
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v6, v1}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    .end local v0    # "anotherContext":Lim/doit/pro/model/TaskContext;
    check-cast v0, Lim/doit/pro/model/TaskContext;

    .line 31
    .restart local v0    # "anotherContext":Lim/doit/pro/model/TaskContext;
    :cond_1
    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 32
    const/4 v6, 0x1

    .line 47
    .end local v0    # "anotherContext":Lim/doit/pro/model/TaskContext;
    .end local v1    # "anotherContextId":Ljava/lang/String;
    .end local v4    # "oneContext":Lim/doit/pro/model/TaskContext;
    .end local v5    # "oneContextId":Ljava/lang/String;
    :goto_0
    return v6

    .line 33
    .restart local v0    # "anotherContext":Lim/doit/pro/model/TaskContext;
    .restart local v1    # "anotherContextId":Ljava/lang/String;
    .restart local v4    # "oneContext":Lim/doit/pro/model/TaskContext;
    .restart local v5    # "oneContextId":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    .line 34
    const/4 v6, -0x1

    goto :goto_0

    .line 35
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v4}, Lim/doit/pro/model/TaskContext;->getPos()J

    move-result-wide v6

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getPos()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 39
    .end local v0    # "anotherContext":Lim/doit/pro/model/TaskContext;
    .end local v1    # "anotherContextId":Ljava/lang/String;
    .end local v4    # "oneContext":Lim/doit/pro/model/TaskContext;
    .end local v5    # "oneContextId":Ljava/lang/String;
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    .line 40
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 41
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v6

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 44
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_6

    .line 45
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getCreated()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getCreated()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v6

    int-to-long v2, v6

    .line 47
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    check-cast p2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorByContext;->compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I

    move-result v0

    return v0
.end method
