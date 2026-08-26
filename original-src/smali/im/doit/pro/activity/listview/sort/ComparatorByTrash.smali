.class public Lim/doit/pro/activity/listview/sort/ComparatorByTrash;
.super Ljava/lang/Object;
.source "ComparatorByTrash.java"

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
    .locals 8
    .param p1, "one"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getTrashed()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getTrashed()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v3

    int-to-long v0, v3

    .line 19
    .local v0, "diff":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 20
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->getCreated()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v3

    int-to-long v0, v3

    .line 22
    :cond_0
    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    check-cast p2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;->compare(Lim/doit/pro/model/BaseEntityWithPos;Lim/doit/pro/model/BaseEntityWithPos;)I

    move-result v0

    return v0
.end method
