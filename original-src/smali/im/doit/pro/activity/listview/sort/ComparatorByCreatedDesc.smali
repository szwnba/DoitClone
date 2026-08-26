.class public Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;
.super Ljava/lang/Object;
.source "ComparatorByCreatedDesc.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/model/BaseEntity;",
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
.method public compare(Lim/doit/pro/model/BaseEntity;Lim/doit/pro/model/BaseEntity;)I
    .locals 4
    .param p1, "one"    # Lim/doit/pro/model/BaseEntity;
    .param p2, "another"    # Lim/doit/pro/model/BaseEntity;

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntity;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v0

    .line 19
    .local v0, "diff":I
    if-lez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntity;

    check-cast p2, Lim/doit/pro/model/BaseEntity;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;->compare(Lim/doit/pro/model/BaseEntity;Lim/doit/pro/model/BaseEntity;)I

    move-result v0

    return v0
.end method
