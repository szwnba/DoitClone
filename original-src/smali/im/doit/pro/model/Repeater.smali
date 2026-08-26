.class public Lim/doit/pro/model/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2286798b06608cefL


# instance fields
.field private daily:Lim/doit/pro/model/RepeaterDaily;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected endsOn:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ends_on"
    .end annotation
.end field

.field protected mode:Lim/doit/pro/model/enums/RepeaterMode;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private monthly:Lim/doit/pro/model/RepeaterMonthly;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weekly:Lim/doit/pro/model/RepeaterWeekly;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private yearly:Lim/doit/pro/model/RepeaterYearly;
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


# virtual methods
.method public getDaily()Lim/doit/pro/model/RepeaterDaily;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->daily:Lim/doit/pro/model/RepeaterDaily;

    return-object v0
.end method

.method public getEndsOn()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->endsOn:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMode()Lim/doit/pro/model/enums/RepeaterMode;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    return-object v0
.end method

.method public getMonthly()Lim/doit/pro/model/RepeaterMonthly;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->monthly:Lim/doit/pro/model/RepeaterMonthly;

    return-object v0
.end method

.method public getWeekly()Lim/doit/pro/model/RepeaterWeekly;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->weekly:Lim/doit/pro/model/RepeaterWeekly;

    return-object v0
.end method

.method public getYearly()Lim/doit/pro/model/RepeaterYearly;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lim/doit/pro/model/Repeater;->yearly:Lim/doit/pro/model/RepeaterYearly;

    return-object v0
.end method

.method public isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "startAt"    # Ljava/util/Calendar;
    .param p2, "checkDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .local v1, "_startAt":Ljava/util/Calendar;
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "_checkDate":Ljava/util/Calendar;
    invoke-static {p2, v1, v4}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lim/doit/pro/model/Repeater;->endsOn:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lim/doit/pro/model/Repeater;->endsOn:Ljava/util/Calendar;

    invoke-static {p2, v3, v4}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Repeater;->isDaily()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v2, p0, Lim/doit/pro/model/Repeater;->daily:Lim/doit/pro/model/RepeaterDaily;

    invoke-virtual {v2, v0, v1}, Lim/doit/pro/model/RepeaterDaily;->isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Repeater;->isWeekly()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    iget-object v2, p0, Lim/doit/pro/model/Repeater;->weekly:Lim/doit/pro/model/RepeaterWeekly;

    invoke-virtual {v2, v0, v1}, Lim/doit/pro/model/RepeaterWeekly;->isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Repeater;->isMonthly()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    iget-object v2, p0, Lim/doit/pro/model/Repeater;->monthly:Lim/doit/pro/model/RepeaterMonthly;

    invoke-virtual {v2, v0, v1}, Lim/doit/pro/model/RepeaterMonthly;->isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Repeater;->isYearly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v2, p0, Lim/doit/pro/model/Repeater;->yearly:Lim/doit/pro/model/RepeaterYearly;

    invoke-virtual {v2, v0, v1}, Lim/doit/pro/model/RepeaterYearly;->isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    goto :goto_0
.end method

.method public isDaily()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v1, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMonthly()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v1, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWeekly()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v1, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isYearly()Z
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v1, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDaily(Lim/doit/pro/model/RepeaterDaily;)V
    .locals 0
    .param p1, "daily"    # Lim/doit/pro/model/RepeaterDaily;

    .prologue
    .line 56
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->daily:Lim/doit/pro/model/RepeaterDaily;

    .line 57
    return-void
.end method

.method public setEndsOn(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "endsOn"    # Ljava/util/Calendar;

    .prologue
    .line 48
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->endsOn:Ljava/util/Calendar;

    .line 49
    return-void
.end method

.method public setMode(Lim/doit/pro/model/enums/RepeaterMode;)V
    .locals 0
    .param p1, "mode"    # Lim/doit/pro/model/enums/RepeaterMode;

    .prologue
    .line 40
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    .line 41
    return-void
.end method

.method public setMonthly(Lim/doit/pro/model/RepeaterMonthly;)V
    .locals 0
    .param p1, "monthly"    # Lim/doit/pro/model/RepeaterMonthly;

    .prologue
    .line 72
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->monthly:Lim/doit/pro/model/RepeaterMonthly;

    .line 73
    return-void
.end method

.method public setWeekly(Lim/doit/pro/model/RepeaterWeekly;)V
    .locals 0
    .param p1, "weekly"    # Lim/doit/pro/model/RepeaterWeekly;

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->weekly:Lim/doit/pro/model/RepeaterWeekly;

    .line 65
    return-void
.end method

.method public setYearly(Lim/doit/pro/model/RepeaterYearly;)V
    .locals 0
    .param p1, "yearly"    # Lim/doit/pro/model/RepeaterYearly;

    .prologue
    .line 80
    iput-object p1, p0, Lim/doit/pro/model/Repeater;->yearly:Lim/doit/pro/model/RepeaterYearly;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v2

    invoke-virtual {v2, p0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method
