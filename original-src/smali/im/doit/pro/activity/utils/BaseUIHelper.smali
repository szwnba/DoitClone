.class public Lim/doit/pro/activity/utils/BaseUIHelper;
.super Ljava/lang/Object;
.source "BaseUIHelper.java"


# static fields
.field public static final NO_COLOR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static atSameYear(Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->diffYear(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static atScheduleBoxAndGroupByIsStartAt()Z
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static endAtForListMessage(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7
    .param p0, "endAtTime"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "endAtFormat":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 61
    .local v2, "now":Ljava/util/Calendar;
    invoke-static {p0, v2}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 62
    .local v0, "diff":I
    if-nez v0, :cond_1

    .line 63
    const v3, 0x7f0c0154

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 65
    const v3, 0x7f0c0156

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const/16 v3, 0xe

    if-gt v0, v3, :cond_3

    .line 67
    const v3, 0x7f0c0155

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 69
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatMonthDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatMinuteToHM(I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    const/4 v0, 0x0

    .local v0, "hour":I
    const/4 v1, 0x0

    .line 143
    .local v1, "minute":I
    if-eqz p0, :cond_0

    .line 144
    div-int/lit8 v0, p0, 0x3c

    .line 145
    rem-int/lit8 v1, p0, 0x3c

    .line 147
    :cond_0
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 149
    const v2, 0x7f0c005d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 148
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    :goto_0
    return-object v2

    .line 151
    :cond_1
    if-lez v0, :cond_2

    if-nez v1, :cond_2

    .line 152
    const v2, 0x7f0c005e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 152
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 156
    :cond_2
    const v2, 0x7f0c005f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 155
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatStartAtForList(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2
    .param p0, "startAtTime"    # Ljava/util/Calendar;
    .param p1, "allDay"    # Z

    .prologue
    const/4 v1, 0x1

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/BaseUIHelper;->startAtIsTodayMessage(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->isTomorrow(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p1, p0}, Lim/doit/pro/activity/utils/BaseUIHelper;->startAtIsTomorrow(ZLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrow()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->isThisWeek(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {p0}, Lim/doit/pro/activity/utils/BaseUIHelper;->startAtIsSameWeekMessage(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p0}, Lim/doit/pro/activity/utils/BaseUIHelper;->atSameYear(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatMonthDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2
    .param p0, "startAt"    # Ljava/util/Calendar;
    .param p1, "endAt"    # Ljava/util/Calendar;
    .param p2, "allday"    # Z

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    :goto_0
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    if-eqz p1, :cond_3

    .line 87
    if-eqz p2, :cond_2

    .line 88
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getDateTime(ZLjava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "allDay"    # Z
    .param p1, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 115
    const-string v0, ""

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEndAtColorForList(Ljava/util/Calendar;)I
    .locals 3
    .param p0, "endAtTime"    # Ljava/util/Calendar;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v1, -0x1

    .line 53
    :goto_0
    return v1

    .line 49
    :cond_0
    const v0, 0x7f080047

    .line 50
    .local v0, "color":I
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const v0, 0x7f080048

    .line 53
    :cond_1
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected static isNotShowEndAt(Lim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 2
    .param p0, "t"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 102
    :cond_1
    return v0
.end method

.method protected static startAtColorForList(Ljava/util/Calendar;Z)I
    .locals 1
    .param p0, "startAtTime"    # Ljava/util/Calendar;
    .param p1, "allDay"    # Z

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, -0x1

    .line 21
    :goto_0
    return v0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const v0, 0x7f080048

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 21
    :cond_1
    const v0, 0x7f080047

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private static startAtIsSameWeekMessage(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    .line 134
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatWeekdayMonthDay(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static startAtIsTodayMessage(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2
    .param p0, "startAtTime"    # Ljava/util/Calendar;
    .param p1, "allDay"    # Z

    .prologue
    .line 107
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1, p0}, Lim/doit/pro/activity/utils/BaseUIHelper;->getDateTime(ZLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0c00e1

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lim/doit/pro/activity/utils/BaseUIHelper;->getDateTime(ZLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static startAtIsTomorrow(ZLjava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "allDay"    # Z
    .param p1, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    .line 121
    invoke-static {}, Lim/doit/pro/activity/utils/BaseUIHelper;->atScheduleBoxAndGroupByIsStartAt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-static {p0, p1}, Lim/doit/pro/activity/utils/BaseUIHelper;->getDateTime(ZLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0c00e2

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lim/doit/pro/activity/utils/BaseUIHelper;->getDateTime(ZLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
