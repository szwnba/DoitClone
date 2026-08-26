.class public Lim/doit/pro/model/RepeaterMonthly;
.super Ljava/lang/Object;
.source "RepeaterMonthly.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x67a43a48bc0eb190L


# instance fields
.field private cycle:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private date:Lim/doit/pro/model/RepeaterMonthlyDate;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private week:Lim/doit/pro/model/RepeaterMonthlyWeek;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private atSameDayForDate(Ljava/util/Calendar;I)Z
    .locals 1
    .param p1, "checkTime"    # Ljava/util/Calendar;
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/RepeaterMonthlyDate;->getDayOfMonth()I

    move-result v0

    invoke-static {p1, v0}, Lim/doit/pro/utils/DateUtils;->theActualDayOfMonth(Ljava/util/Calendar;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private atSameDayForWeek(Ljava/util/Calendar;I)Z
    .locals 8
    .param p1, "checkTime"    # Ljava/util/Calendar;
    .param p2, "dayOfMonth"    # I

    .prologue
    const/4 v7, 0x7

    .line 114
    invoke-static {p2}, Lim/doit/pro/utils/RepeaterUtils;->convert2RepeaterWeek(I)I

    move-result v1

    .line 115
    .local v1, "checkWeek":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 116
    .local v2, "maximumDayOfMonth":I
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    sub-int v5, v2, p2

    if-ge v5, v7, :cond_0

    .line 117
    const/4 v1, -0x1

    .line 119
    :cond_0
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 120
    .local v0, "checkDay":I
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v4

    .line 121
    .local v4, "repeatWeek":I
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v3

    .line 122
    .local v3, "repeatDay":I
    if-ne v1, v4, :cond_1

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private byDate()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/model/RepeaterMonthly;->date:Lim/doit/pro/model/RepeaterMonthlyDate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private byDateMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterMonthlyDate;->getDayOfMonth()I

    move-result v0

    .line 95
    .local v0, "date":I
    if-lez v0, :cond_0

    .line 96
    const v2, 0x7f0c00cd

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "formatStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 98
    .end local v1    # "formatStr":Ljava/lang/String;
    :cond_0
    sget-object v2, Lim/doit/pro/utils/Constants;->REPEATER_MONTHLY_LAST_DAYS_FORMAT:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formatStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private byWeek()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/model/RepeaterMonthly;->week:Lim/doit/pro/model/RepeaterMonthlyWeek;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private byWeekMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v3

    .line 86
    .local v3, "week":I
    sget-object v5, Lim/doit/pro/utils/Constants;->RPEATER_MONTHLY_WEEK_FORMAT:[I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move v3, v4

    .end local v3    # "week":I
    :cond_0
    aget v5, v5, v3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v0

    .line 88
    .local v0, "dayIndex":I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    aget v6, v6, v0

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "formatStr":Ljava/lang/String;
    return-object v2
.end method

.method private getCycleMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "formatStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    iget v0, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    if-ne v0, v3, :cond_0

    .line 77
    const v0, 0x7f0c00b9

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c00ba

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private inCycle(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "checkTime"    # Ljava/util/Calendar;
    .param p2, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    iget v2, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    if-ge v2, v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lim/doit/pro/utils/DateUtils;->diffMonth(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    iget v3, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public formatRepeater()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byDateMessage()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "formatStr":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterMonthly;->getCycleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "formatStr":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 54
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byWeek()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byWeekMessage()Ljava/lang/String;

    move-result-object v0

    .line 56
    .restart local v0    # "formatStr":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "formatStr":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCycle()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    return v0
.end method

.method public getDate()Lim/doit/pro/model/RepeaterMonthlyDate;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/model/RepeaterMonthly;->date:Lim/doit/pro/model/RepeaterMonthlyDate;

    return-object v0
.end method

.method public getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/model/RepeaterMonthly;->week:Lim/doit/pro/model/RepeaterMonthlyWeek;

    return-object v0
.end method

.method public isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p1, "checkDate"    # Ljava/util/Calendar;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lim/doit/pro/model/RepeaterMonthly;->inCycle(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 67
    .local v0, "dayOfMonth":I
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-direct {p0, p1, v0}, Lim/doit/pro/model/RepeaterMonthly;->atSameDayForDate(Ljava/util/Calendar;I)Z

    move-result v1

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterMonthly;->byWeek()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-direct {p0, p1, v0}, Lim/doit/pro/model/RepeaterMonthly;->atSameDayForWeek(Ljava/util/Calendar;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .prologue
    .line 31
    iput p1, p0, Lim/doit/pro/model/RepeaterMonthly;->cycle:I

    .line 32
    return-void
.end method

.method public setDate(Lim/doit/pro/model/RepeaterMonthlyDate;)V
    .locals 0
    .param p1, "monthlyDate"    # Lim/doit/pro/model/RepeaterMonthlyDate;

    .prologue
    .line 47
    iput-object p1, p0, Lim/doit/pro/model/RepeaterMonthly;->date:Lim/doit/pro/model/RepeaterMonthlyDate;

    .line 48
    return-void
.end method

.method public setWeek(Lim/doit/pro/model/RepeaterMonthlyWeek;)V
    .locals 0
    .param p1, "monthlyWeek"    # Lim/doit/pro/model/RepeaterMonthlyWeek;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/model/RepeaterMonthly;->week:Lim/doit/pro/model/RepeaterMonthlyWeek;

    .line 40
    return-void
.end method
