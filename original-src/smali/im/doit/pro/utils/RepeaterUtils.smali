.class public Lim/doit/pro/utils/RepeaterUtils;
.super Ljava/lang/Object;
.source "RepeaterUtils.java"


# static fields
.field public static final DATE_BACKWARD_FIRST:I = -0x1

.field public static final DATE_BACKWARD_SECOND:I = -0x2

.field public static final DATE_BACKWARD_THIRD:I = -0x3

.field public static final EVERY:I = 0x1

.field public static final FRIDAY:I = 0x5

.field public static final MONDAY:I = 0x1

.field public static final SATURDAY:I = 0x6

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_BACKWARD_FIRST:I = -0x1

.field public static final WEEK_FIRST:I = 0x1

.field public static final WEEK_FOURTH:I = 0x4

.field public static final WEEK_SECOND:I = 0x2

.field public static final WEEK_THIRD:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2RepeaterDate(Ljava/util/Calendar;)Ljava/lang/Integer;
    .locals 5
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    .line 89
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    .local v2, "max_date":Ljava/lang/Integer;
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "date":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 92
    .local v1, "diff":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public static convert2RepeaterWeek(I)I
    .locals 2
    .param p0, "dayOfMonth"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "repeaterWeek":I
    rem-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_1

    div-int/lit8 v0, p0, 0x7

    .line 99
    :goto_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, -0x1

    .line 102
    :cond_0
    return v0

    .line 98
    :cond_1
    div-int/lit8 v1, p0, 0x7

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static getDateByRepeaterMonthlyWeek(Ljava/util/Calendar;II)Ljava/util/Calendar;
    .locals 6
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "repeaterWeek"    # I
    .param p2, "repeaterDayOfWeek"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "day":I
    if-lez p1, :cond_1

    .line 58
    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 60
    .local v1, "dayOfWeek":I
    sub-int v2, v1, p2

    .line 61
    .local v2, "diff":I
    if-lez v2, :cond_0

    .line 62
    rsub-int/lit8 v0, v2, 0x7

    .line 66
    :goto_0
    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v0

    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 79
    :goto_1
    return-object p0

    .line 64
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 69
    .end local v1    # "dayOfWeek":I
    .end local v2    # "diff":I
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 68
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 70
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 71
    .restart local v1    # "dayOfWeek":I
    sub-int v2, v1, p2

    .line 72
    .restart local v2    # "diff":I
    if-ltz v2, :cond_2

    .line 73
    move v0, v2

    .line 77
    :goto_2
    neg-int v3, v0

    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 75
    :cond_2
    add-int/lit8 v0, v2, 0x7

    goto :goto_2
.end method

.method public static getDayOfMonthByRepeater(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "date"    # Ljava/lang/Integer;

    .prologue
    .line 39
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    .local v0, "max_date":Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getDoitRepeaterDayOfWeek(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 28
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
