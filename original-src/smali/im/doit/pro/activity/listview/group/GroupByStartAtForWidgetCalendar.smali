.class public Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByStartAtForWidgetCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
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

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "alldayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "amList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v6, "pmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 47
    new-instance v7, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v7}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 48
    .local v7, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 49
    const v10, 0x7f0c0171

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "grouperName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v3, v10, v3, v12}, Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v2

    .line 51
    .local v2, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v10, Lim/doit/pro/activity/listview/sort/ComparatorByContext;

    invoke-direct {v10}, Lim/doit/pro/activity/listview/sort/ComparatorByContext;-><init>()V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-virtual {v7, v2, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 54
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v3    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 55
    const v10, 0x7f0c0172

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .restart local v3    # "grouperName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v3, v10, v3, v12}, Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v2

    .line 57
    .restart local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v10, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;

    invoke-direct {v10}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;-><init>()V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    invoke-virtual {v7, v2, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 60
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v3    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 61
    const v10, 0x7f0c0173

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3    # "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0, v3, v10, v3, v12}, Lim/doit/pro/activity/listview/group/GroupByStartAtForWidgetCalendar;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v2

    .line 63
    .restart local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v10, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;

    invoke-direct {v10}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;-><init>()V

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    invoke-virtual {v7, v2, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 66
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v3    # "grouperName":Ljava/lang/String;
    :cond_3
    return-object v7

    .line 25
    .end local v7    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/BaseEntityWithPos;

    .line 26
    .local v5, "item":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v4, 0x1

    .line 27
    .local v4, "isAllDay":Z
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v8

    .line 28
    .local v8, "startAt":Ljava/util/Calendar;
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v9, v5

    .line 29
    check-cast v9, Lim/doit/pro/model/Task;

    .line 30
    .local v9, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v9}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v4

    .line 34
    .end local v9    # "task":Lim/doit/pro/model/Task;
    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    .line 35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 32
    const/4 v4, 0x1

    goto :goto_1

    .line 38
    :cond_7
    invoke-static {v8}, Lim/doit/pro/utils/DateUtils;->isAm(Ljava/util/Calendar;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_8
    invoke-static {v8}, Lim/doit/pro/utils/DateUtils;->isPm(Ljava/util/Calendar;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 43
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
