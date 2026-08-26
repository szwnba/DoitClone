.class public Lim/doit/pro/model/RepeaterYearly;
.super Ljava/lang/Object;
.source "RepeaterYearly.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7d35d4072e80ee50L


# instance fields
.field private cycle:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayOfMonth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day_of_month"
    .end annotation
.end field

.field private month:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private atSameDay(Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    .line 72
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lim/doit/pro/model/RepeaterYearly;->dayOfMonth:I

    invoke-static {p1, v1}, Lim/doit/pro/utils/DateUtils;->theActualDayOfMonth(Ljava/util/Calendar;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private atSameMonth(Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    .line 76
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lim/doit/pro/model/RepeaterYearly;->month:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCycleMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    iget v0, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

    if-ne v0, v3, :cond_0

    .line 81
    const v0, 0x7f0c00bb

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c00bc

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

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
    .param p1, "checkDate"    # Ljava/util/Calendar;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    iget v2, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

    if-ge v2, v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lim/doit/pro/utils/DateUtils;->diffYear(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    iget v3, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public formatRepeater()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x2

    iget v3, p0, Lim/doit/pro/model/RepeaterYearly;->month:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 56
    sget-object v2, Lim/doit/pro/utils/Constants;->MONTH_FORMAT:[I

    iget v3, p0, Lim/doit/pro/model/RepeaterYearly;->month:I

    aget v2, v2, v3

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lim/doit/pro/model/RepeaterYearly;->dayOfMonth:I

    invoke-static {v0, v5}, Lim/doit/pro/utils/DateUtils;->theActualDayOfMonth(Ljava/util/Calendar;I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, v1}, Lim/doit/pro/model/RepeaterYearly;->getCycleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCycle()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lim/doit/pro/model/RepeaterYearly;->dayOfMonth:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lim/doit/pro/model/RepeaterYearly;->month:I

    return v0
.end method

.method public isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "checkDate"    # Ljava/util/Calendar;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lim/doit/pro/model/RepeaterYearly;->inCycle(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lim/doit/pro/model/RepeaterYearly;->atSameMonth(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lim/doit/pro/model/RepeaterYearly;->atSameDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .prologue
    .line 34
    iput p1, p0, Lim/doit/pro/model/RepeaterYearly;->cycle:I

    .line 35
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 50
    iput p1, p0, Lim/doit/pro/model/RepeaterYearly;->dayOfMonth:I

    .line 51
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 42
    iput p1, p0, Lim/doit/pro/model/RepeaterYearly;->month:I

    .line 43
    return-void
.end method
