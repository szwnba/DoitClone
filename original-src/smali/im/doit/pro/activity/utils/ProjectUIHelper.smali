.class public Lim/doit/pro/activity/utils/ProjectUIHelper;
.super Lim/doit/pro/activity/utils/BaseUIHelper;
.source "ProjectUIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lim/doit/pro/activity/utils/BaseUIHelper;-><init>()V

    return-void
.end method

.method public static formatEndAt(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 97
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatEndAtForList(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 1
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 14
    invoke-static {p0}, Lim/doit/pro/activity/utils/ProjectUIHelper;->isNotShowEndAt(Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ProjectUIHelper;->endAtForListMessage(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatStartAtForEditView(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isToday()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "startAtMessage":Ljava/lang/StringBuilder;
    const v2, 0x7f0c004d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v4}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v1    # "startAtMessage":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const v2, 0x7f0c004e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    const v2, 0x7f0c0051

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isSchedule()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .restart local v1    # "startAtMessage":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    const v2, 0x7f0c004f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, v4}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 88
    :cond_4
    const v2, 0x7f0c0050

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    .end local v1    # "startAtMessage":Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatTimeForViewPage(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 11
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    const v10, 0x7f0c0055

    const v9, 0x7f0c0053

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 38
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 39
    .local v3, "startat":Ljava/util/Calendar;
    invoke-static {v3, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, "endat":Ljava/util/Calendar;
    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .end local v0    # "endat":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const v4, 0x7f0c009c

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .end local v3    # "startat":Ljava/util/Calendar;
    :goto_0
    return-object v4

    .line 46
    .restart local v3    # "startat":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 47
    const v4, 0x7f0c009c

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v9}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 50
    .end local v3    # "startat":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 59
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .restart local v0    # "endat":Ljava/util/Calendar;
    const v4, 0x7f0c009d

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 52
    .end local v0    # "endat":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-static {v9}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 55
    const v4, 0x7f0c004e

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isSomeday()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    const v4, 0x7f0c0051

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getEndAtColorForList(Lim/doit/pro/model/Project;)I
    .locals 1
    .param p0, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 21
    invoke-static {p0}, Lim/doit/pro/activity/utils/ProjectUIHelper;->isNotShowEndAt(Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const v0, 0x7f080047

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ProjectUIHelper;->getEndAtColorForList(Ljava/util/Calendar;)I

    move-result v0

    goto :goto_0
.end method

.method public static getStartAtColorForList(Lim/doit/pro/model/Project;)I
    .locals 2
    .param p0, "p"    # Lim/doit/pro/model/Project;

    .prologue
    .line 28
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isArchived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const v0, 0x7f080047

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ProjectUIHelper;->startAtColorForList(Ljava/util/Calendar;Z)I

    move-result v0

    goto :goto_0
.end method
