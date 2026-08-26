.class public Lim/doit/pro/activity/listview/group/GroupByPriority;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByPriority.java"


# instance fields
.field private mBox:Lim/doit/pro/model/Box;


# direct methods
.method public constructor <init>(Lim/doit/pro/model/Box;)V
    .locals 0
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 21
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    .line 22
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/GroupByPriority;->mBox:Lim/doit/pro/model/Box;

    .line 23
    return-void
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByPriority;->mBox:Lim/doit/pro/model/Box;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByPriority;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v0}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct {v0}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 13
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
    const/4 v12, 0x0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v3, "highList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v6, "mediumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v5, "lowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v7, "noneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 48
    new-instance v9, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v9}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 49
    .local v9, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {p0, v0, v9}, Lim/doit/pro/activity/listview/group/GroupByPriority;->addDoitnowGrouper(Ljava/util/ArrayList;Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 50
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 51
    const v10, 0x7f0c00fb

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "grouperName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v2, v10, v2, v12}, Lim/doit/pro/activity/listview/group/GroupByPriority;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 53
    .local v1, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/GroupByPriority;->getComparator()Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    invoke-virtual {v9, v1, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 56
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 57
    const v10, 0x7f0c00fc

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .restart local v2    # "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v2, v10, v2, v12}, Lim/doit/pro/activity/listview/group/GroupByPriority;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 59
    .restart local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/GroupByPriority;->getComparator()Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    invoke-virtual {v9, v1, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 62
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 63
    const v10, 0x7f0c00fd

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "grouperName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v2, v10, v2, v12}, Lim/doit/pro/activity/listview/group/GroupByPriority;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 65
    .restart local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/GroupByPriority;->getComparator()Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    invoke-virtual {v9, v1, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 68
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 69
    const v10, 0x7f0c0174

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "grouperName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v2, v10, v2, v12}, Lim/doit/pro/activity/listview/group/GroupByPriority;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 71
    .restart local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/GroupByPriority;->getComparator()Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    invoke-virtual {v9, v1, v7}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 74
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v2    # "grouperName":Ljava/lang/String;
    :cond_3
    return-object v9

    .line 32
    .end local v9    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/BaseEntityWithPos;

    .line 33
    .local v4, "item":Lim/doit/pro/model/BaseEntityWithPos;
    iget-object v11, p0, Lim/doit/pro/activity/listview/group/GroupByPriority;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p0, v11, v4}, Lim/doit/pro/activity/listview/group/GroupByPriority;->isShowDoitNow(Lim/doit/pro/model/Box;Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_5
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v8

    .line 38
    .local v8, "priority":I
    const/4 v11, 0x3

    if-ne v11, v8, :cond_6

    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_6
    const/4 v11, 0x2

    if-ne v11, v8, :cond_7

    .line 41
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_7
    const/4 v11, 0x1

    if-ne v11, v8, :cond_8

    .line 43
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    :cond_8
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
