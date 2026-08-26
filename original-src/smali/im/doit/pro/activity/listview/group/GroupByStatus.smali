.class public Lim/doit/pro/activity/listview/group/GroupByStatus;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v10, 0x0

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "activeChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v3, "inactiveChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 28
    new-instance v6, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 29
    .local v6, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 30
    const v7, 0x7f0c0170

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "grouperName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v2, v7, v2, v10}, Lim/doit/pro/activity/listview/group/GroupByStatus;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 32
    .local v1, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v7, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v7}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    invoke-virtual {v6, v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 35
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 36
    const v7, 0x7f0c016f

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    .restart local v2    # "grouperName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v2, v7, v2, v10}, Lim/doit/pro/activity/listview/group/GroupByStatus;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 38
    .restart local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v7, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v7}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    invoke-virtual {v6, v1, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 41
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_1
    return-object v6

    .line 20
    .end local v6    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/BaseEntityWithPos;

    .local v4, "item":Lim/doit/pro/model/BaseEntityWithPos;
    move-object v5, v4

    .line 21
    check-cast v5, Lim/doit/pro/model/Project;

    .line 22
    .local v5, "project":Lim/doit/pro/model/Project;
    const-string v8, "active"

    invoke-virtual {v5}, Lim/doit/pro/model/Project;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
