.class public Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByStartAtInToday.java"


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
    .locals 22
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
    .line 21
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v7, "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v6, "beforeTodayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v4, "alldayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v5, "amList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v12, "pmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTodayMillis()J

    move-result-wide v16

    .line 28
    .local v16, "startOfTodayMillis":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 58
    new-instance v13, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v13}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 59
    .local v13, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;->addDoitnowGrouper(Ljava/util/ArrayList;Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 60
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 61
    const v18, 0x7f0c0162

    invoke-static/range {v18 .. v18}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v9, v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v8

    .line 63
    .local v8, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v18, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;

    invoke-direct/range {v18 .. v18}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    invoke-virtual {v13, v8, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 66
    .end local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v9    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 67
    const v18, 0x7f0c0171

    invoke-static/range {v18 .. v18}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 68
    .restart local v9    # "grouperName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v9, v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v8

    .line 69
    .restart local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v18, Lim/doit/pro/activity/listview/sort/ComparatorByContext;

    invoke-direct/range {v18 .. v18}, Lim/doit/pro/activity/listview/sort/ComparatorByContext;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-virtual {v13, v8, v4}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 72
    .end local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v9    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 73
    const v18, 0x7f0c0172

    invoke-static/range {v18 .. v18}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    .restart local v9    # "grouperName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v9, v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v8

    .line 75
    .restart local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v18, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;

    invoke-direct/range {v18 .. v18}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-virtual {v13, v8, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 78
    .end local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v9    # "grouperName":Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 79
    const v18, 0x7f0c0173

    invoke-static/range {v18 .. v18}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 80
    .restart local v9    # "grouperName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v9, v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v8

    .line 81
    .restart local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v18, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;

    invoke-direct/range {v18 .. v18}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAtForTodayTomorrow;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-virtual {v13, v8, v12}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 84
    .end local v8    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v9    # "grouperName":Ljava/lang/String;
    :cond_4
    return-object v13

    .line 28
    .end local v13    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/doit/pro/model/BaseEntityWithPos;

    .line 29
    .local v11, "item":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v10, 0x1

    .line 30
    .local v10, "isAllDay":Z
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v14

    .line 31
    .local v14, "startAt":Ljava/util/Calendar;
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object v15, v11

    .line 32
    check-cast v15, Lim/doit/pro/model/Task;

    .line 33
    .local v15, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v15}, Lim/doit/pro/model/Task;->isNow()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 34
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_6
    invoke-virtual {v15}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v10

    .line 41
    .end local v15    # "task":Lim/doit/pro/model/Task;
    :cond_7
    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v19, v20, v16

    if-gez v19, :cond_9

    .line 42
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_8
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 39
    const/4 v10, 0x1

    goto :goto_1

    .line 45
    :cond_9
    if-eqz v10, :cond_a

    .line 46
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :cond_a
    invoke-static {v14}, Lim/doit/pro/utils/DateUtils;->isAm(Ljava/util/Calendar;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 50
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :cond_b
    invoke-static {v14}, Lim/doit/pro/utils/DateUtils;->isPm(Ljava/util/Calendar;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 54
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
