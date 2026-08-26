.class public Lim/doit/pro/utils/ProjectUtils;
.super Ljava/lang/Object;
.source "ProjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeProject(Lim/doit/pro/model/Project;)V
    .locals 4
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v3, 0x0

    .line 29
    const-string v0, "active"

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v3}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, v3}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 38
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v0, p0}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 39
    return-void
.end method

.method public static inactiveProject(Lim/doit/pro/model/Project;)V
    .locals 4
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    const-string v0, "inactive"

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0, v3}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0, v3}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 49
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v0, p0}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 50
    return-void
.end method

.method public static updateProjectStartAt(Lim/doit/pro/model/Project;Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 3
    .param p0, "project"    # Lim/doit/pro/model/Project;
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 12
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 13
    .local v0, "oriStartAt":Ljava/util/Calendar;
    sget-object v1, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, p1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const-string v1, "inactive"

    invoke-virtual {p0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 24
    :goto_0
    invoke-virtual {p0, p2}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 25
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 26
    return-void

    .line 15
    :cond_0
    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, p1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "inactive"

    invoke-virtual {p0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_2
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
