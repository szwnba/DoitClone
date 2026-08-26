.class public Lim/doit/pro/activity/utils/TaskUIHelper;
.super Lim/doit/pro/activity/utils/BaseUIHelper;
.source "TaskUIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lim/doit/pro/activity/utils/BaseUIHelper;-><init>()V

    return-void
.end method

.method public static formatEndAt(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 35
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v1

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatEndAtForList(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 39
    invoke-static {p0}, Lim/doit/pro/activity/utils/TaskUIHelper;->isNotShowEndAt(Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->endAtForListMessage(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->endAtForListMessage(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatEstimatedTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 128
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatMinuteToHM(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    const v0, 0x7f0c00fa

    .line 149
    packed-switch p0, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return v0

    .line 151
    :pswitch_1
    const v0, 0x7f0c00fb

    goto :goto_0

    .line 153
    :pswitch_2
    const v0, 0x7f0c00fc

    goto :goto_0

    .line 155
    :pswitch_3
    const v0, 0x7f0c00fd

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static formatPriorityForSelectDialog(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    const v0, 0x7f0c0038

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return v0

    .line 173
    :pswitch_1
    const v0, 0x7f0c00fb

    goto :goto_0

    .line 175
    :pswitch_2
    const v0, 0x7f0c00fc

    goto :goto_0

    .line 177
    :pswitch_3
    const v0, 0x7f0c00fd

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static formatReminderForNotice(JJZ)Ljava/lang/String;
    .locals 4
    .param p0, "startAt"    # J
    .param p2, "endAt"    # J
    .param p4, "allDay"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 239
    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    cmp-long v1, p0, v2

    if-nez v1, :cond_1

    .line 244
    const-string v1, "/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_1
    cmp-long v1, p2, v2

    if-nez v1, :cond_2

    .line 249
    const-string v1, " - /"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p0, p1, p4}, Lim/doit/pro/activity/utils/TaskUIHelper;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 251
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, p4}, Lim/doit/pro/activity/utils/TaskUIHelper;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static formatRepeat(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 6
    .param p0, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v3

    .line 234
    :cond_0
    :goto_0
    return-object v2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v1

    .line 214
    .local v1, "mode":Lim/doit/pro/model/enums/RepeaterMode;
    const/4 v2, 0x0

    .line 215
    .local v2, "repeaterFormat":Ljava/lang/String;
    sget-object v4, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Repeater;->getDaily()Lim/doit/pro/model/RepeaterDaily;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterDaily;->formatRepeater()Ljava/lang/String;

    move-result-object v2

    .line 224
    :cond_2
    :goto_1
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 225
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "endsOn":Ljava/lang/String;
    const v3, 0x7f0c00b3

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 232
    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 230
    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    .end local v0    # "endsOn":Ljava/lang/String;
    :cond_3
    sget-object v4, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterWeekly;->formatRepeater()Ljava/lang/String;

    move-result-object v2

    .line 219
    goto :goto_1

    :cond_4
    sget-object v4, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 220
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterMonthly;->formatRepeater()Ljava/lang/String;

    move-result-object v2

    .line 221
    goto :goto_1

    :cond_5
    sget-object v4, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Repeater;->getYearly()Lim/doit/pro/model/RepeaterYearly;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterYearly;->formatRepeater()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v3

    .line 234
    goto/16 :goto_0
.end method

.method public static formatSpentTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 135
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatMinuteToHM(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatStartAt(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    const v3, 0x7f0c0052

    .line 78
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const v2, 0x7f0c004b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    :goto_0
    return-object v2

    .line 81
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const v2, 0x7f0c0051

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isWaitingMyself()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 91
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v4

    invoke-static {v3, v4}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 96
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    const v2, 0x7f0c004e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 104
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    invoke-static {v0, v2}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 106
    :cond_7
    const v2, 0x7f0c004d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    if-nez v2, :cond_6

    .line 108
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 113
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getAttribute()Lim/doit/pro/model/enums/Attribute;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    const v2, 0x7f0c004f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_2
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v4

    invoke-static {v3, v4}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 118
    :cond_9
    const v2, 0x7f0c0050

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 124
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string v2, ""

    goto/16 :goto_0
.end method

.method public static formatStartAtForList(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 62
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "startAtTime":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/BaseUIHelper;->formatStartAtForList(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatTagsForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 6
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v4, "tags":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    .line 22
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 23
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 31
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "size":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 24
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "size":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v5, v3, -0x1

    if-eq v0, v5, :cond_2

    .line 27
    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getEndAtColorForList(Lim/doit/pro/model/Task;)I
    .locals 1
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 50
    invoke-static {p0}, Lim/doit/pro/activity/utils/TaskUIHelper;->isNotShowEndAt(Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const v0, 0x7f080047

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->getEndAtColorForList(Ljava/util/Calendar;)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->getEndAtColorForList(Ljava/util/Calendar;)I

    move-result v0

    goto :goto_0
.end method

.method public static getPriorityColor(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const v0, 0x7f080046

    .line 193
    :goto_0
    return v0

    .line 188
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 189
    const v0, 0x7f080045

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 191
    const v0, 0x7f080044

    goto :goto_0

    .line 193
    :cond_2
    const v0, 0x7f080043

    goto :goto_0
.end method

.method public static getPriorityIconForSelectDialog(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    const v0, 0x7f0200de

    .line 205
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 201
    const v0, 0x7f0200dc

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 203
    const v0, 0x7f0200dd

    goto :goto_0

    .line 205
    :cond_2
    const v0, 0x7f0200db

    goto :goto_0
.end method

.method public static getStartAtColorForList(Lim/doit/pro/model/Task;)I
    .locals 2
    .param p0, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 70
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isArchived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const v0, 0x7f080047

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->startAtColorForList(Ljava/util/Calendar;Z)I

    move-result v0

    goto :goto_0
.end method

.method private static getTimeString(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J
    .param p2, "allDay"    # Z

    .prologue
    .line 415
    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p2}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
