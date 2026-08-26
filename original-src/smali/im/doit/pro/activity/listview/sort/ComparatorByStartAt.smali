.class public Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;
.super Ljava/lang/Object;
.source "ComparatorByStartAt.java"

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I
    .locals 7
    .param p1, "one"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 18
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v2

    int-to-long v0, v2

    .line 19
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 20
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v2

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 22
    :cond_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 23
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v2

    int-to-long v0, v2

    .line 25
    :cond_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 26
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v2

    int-to-long v0, v2

    .line 28
    :cond_2
    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    check-cast p2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;->compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I

    move-result v0

    return v0
.end method
