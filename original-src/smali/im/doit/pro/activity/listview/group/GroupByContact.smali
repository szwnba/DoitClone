.class public Lim/doit/pro/activity/listview/group/GroupByContact;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByContact.java"


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

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v5, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v3, "receivedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 35
    new-instance v4, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v4}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 36
    .local v4, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    const v7, 0x7f0c0178

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "grouperName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 38
    invoke-virtual {p0, v1, v7, v1, v10}, Lim/doit/pro/activity/listview/group/GroupByContact;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 40
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v7, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v7}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v4, v0, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 43
    .end local v0    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v1    # "grouperName":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    const v7, 0x7f0c0179

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .restart local v1    # "grouperName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 45
    invoke-virtual {p0, v1, v7, v1, v10}, Lim/doit/pro/activity/listview/group/GroupByContact;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 47
    .restart local v0    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v7, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v7}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    invoke-virtual {v4, v0, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 50
    .end local v0    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v1    # "grouperName":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 22
    .end local v4    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    .line 23
    .local v2, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v6, v2

    .line 24
    check-cast v6, Lim/doit/pro/model/Task;

    .line 25
    .local v6, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 26
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v6    # "task":Lim/doit/pro/model/Task;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GroupByContacts list item is not task. item is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
