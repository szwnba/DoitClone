.class public Lim/doit/pro/activity/listview/sort/ComparatorByFilter;
.super Ljava/lang/Object;
.source "ComparatorByFilter.java"

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


# instance fields
.field private final asc:Z

.field private final orderByField:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "orderByField"    # Ljava/lang/String;
    .param p2, "asc"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->orderByField:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->asc:Z

    .line 16
    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I
    .locals 4
    .param p1, "one"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v3, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 20
    const/4 v0, -0x1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    if-nez p2, :cond_2

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    .local v0, "diff":I
    const-string v1, "start_at"

    iget-object v2, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->orderByField:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v0

    .line 33
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 34
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v0

    .line 37
    :cond_4
    if-eqz v0, :cond_0

    .line 38
    iget-boolean v1, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->asc:Z

    if-nez v1, :cond_0

    .line 41
    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 27
    :cond_5
    const-string v1, "end_at"

    iget-object v2, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->orderByField:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v0

    .line 29
    goto :goto_1

    :cond_6
    const-string v1, "priority"

    iget-object v2, p0, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->orderByField:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v1

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    check-cast p2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorByFilter;->compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I

    move-result v0

    return v0
.end method
