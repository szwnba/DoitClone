.class public Lim/doit/pro/model/RepeaterWeekly;
.super Ljava/lang/Object;
.source "RepeaterWeekly.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_WEEK_DAYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORK_DAYS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x21345d6d426eeb4fL


# instance fields
.field private cycle:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private days:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lim/doit/pro/model/RepeaterWeekly;->WORK_DAYS:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lim/doit/pro/model/RepeaterWeekly;->ALL_WEEK_DAYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private atSameDay(Ljava/util/Calendar;)Z
    .locals 3
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    .line 80
    iget-object v1, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    .line 83
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 84
    .local v0, "dayOfWeek":I
    iget-object v1, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private getCycleMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    iget v0, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    if-ne v0, v3, :cond_0

    .line 110
    const v0, 0x7f0c00b6

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c00b7

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMultiDaysMessage(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 97
    return-object p2

    .line 95
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lim/doit/pro/model/RepeaterWeekly;->recursionDayMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOtherWeeklyMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lim/doit/pro/model/RepeaterWeekly;->getSingleDayMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lim/doit/pro/model/RepeaterWeekly;->getMultiDaysMessage(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterWeekly;->getCycleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSingleDayMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWeekdayMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    iget v0, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    if-ne v0, v4, :cond_0

    .line 117
    const v0, 0x7f0c00b8

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c00b7

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0c00ce

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWholeWeekMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    const v0, 0x7f0c00b4

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c00cf

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

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

    .line 73
    iget v2, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    if-ge v2, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lim/doit/pro/utils/DateUtils;->diffWeek(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    iget v3, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isWholeWeek(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v0, Lim/doit/pro/model/RepeaterWeekly;->ALL_WEEK_DAYS:Ljava/util/List;

    invoke-static {v0, p1}, Lim/doit/pro/utils/CollectionUtils;->isEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkday(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lim/doit/pro/model/RepeaterWeekly;->WORK_DAYS:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lim/doit/pro/utils/CollectionUtils;->isEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recursionDayMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 101
    const v0, 0x7f0c00c0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    aget v3, v3, p2

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public formatRepeater()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/utils/SortUtils;->sortInt(Ljava/util/List;Z)V

    .line 55
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterWeekly;->isWholeWeek(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterWeekly;->getWholeWeekMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterWeekly;->isWorkday(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0}, Lim/doit/pro/model/RepeaterWeekly;->getWeekdayMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterWeekly;->getOtherWeeklyMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCycle()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    return v0
.end method

.method public getDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "checkDate"    # Ljava/util/Calendar;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lim/doit/pro/model/RepeaterWeekly;->inCycle(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lim/doit/pro/model/RepeaterWeekly;->atSameDay(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkday()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lim/doit/pro/model/RepeaterWeekly;->isWorkday(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .prologue
    .line 38
    iput p1, p0, Lim/doit/pro/model/RepeaterWeekly;->cycle:I

    .line 39
    return-void
.end method

.method public setDays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lim/doit/pro/model/RepeaterWeekly;->days:Ljava/util/ArrayList;

    .line 47
    return-void
.end method
