.class public Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;
.super Ljava/lang/Object;
.source "ComparatorForWaiting.java"

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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I
    .locals 10
    .param p1, "one"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 19
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 22
    check-cast v2, Lim/doit/pro/model/Task;

    .local v2, "task1":Lim/doit/pro/model/Task;
    move-object v3, p2

    check-cast v3, Lim/doit/pro/model/Task;

    .line 23
    .local v3, "task2":Lim/doit/pro/model/Task;
    const-wide/16 v0, 0x0

    .line 24
    .local v0, "diff":J
    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    .line 25
    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v5

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v0, v5

    .line 27
    :cond_2
    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    .line 28
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v5

    int-to-long v0, v5

    .line 30
    :cond_3
    cmp-long v5, v0, v8

    if-nez v5, :cond_4

    .line 31
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getSentAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getSentAt()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v5

    int-to-long v0, v5

    .line 33
    :cond_4
    cmp-long v5, v0, v8

    if-nez v5, :cond_5

    .line 34
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v5

    int-to-long v0, v5

    .line 36
    :cond_5
    cmp-long v5, v0, v8

    if-gtz v5, :cond_0

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    check-cast p2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;->compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I

    move-result v0

    return v0
.end method
