.class public Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByStartAtInScheduled.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 42
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
    .line 20
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v6, "beforeTodayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v34, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v35, "tomorrowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v33, "thisWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v22, "nextWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v32, "thisMonthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v21, "nextMonthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v7, "dailyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v36, "weeklyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v20, "monthlyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v37, "yearlyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v23, "noStartAtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTodayMillis()J

    move-result-wide v28

    .line 34
    .local v28, "startOfToday":J
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v30

    .line 35
    .local v30, "startOfTomorrow":J
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrowMills()J

    move-result-wide v16

    .line 36
    .local v16, "endOfTomorrow":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lim/doit/pro/utils/DateUtils;->getDoitEndOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 37
    .local v14, "endOfThisWeek":J
    const-wide/32 v38, 0x1ee62800

    add-long v8, v14, v38

    .line 38
    .local v8, "endOfNextWeek":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 39
    .local v12, "endOfThisMonthDate":Ljava/util/Calendar;
    const/16 v38, 0x5

    const/16 v39, 0x5

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 40
    invoke-static {v12}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 41
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 43
    .local v10, "endOfThisMonth":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_0
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_c

    .line 82
    new-instance v24, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct/range {v24 .. v24}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 83
    .local v24, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 84
    const v38, 0x7f0c0162

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 85
    .local v18, "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 86
    .local v13, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 89
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_0
    invoke-static/range {v34 .. v34}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 90
    const v38, 0x7f0c0163

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 91
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 92
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 95
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v35 .. v35}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 96
    const v38, 0x7f0c0165

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 97
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 98
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 101
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static/range {v33 .. v33}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 102
    const v38, 0x7f0c0166

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 103
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 104
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 107
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_3
    invoke-static/range {v22 .. v22}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 108
    const v38, 0x7f0c0167

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 109
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 110
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 113
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_4
    invoke-static/range {v32 .. v32}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 114
    const v38, 0x7f0c0168

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 115
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 116
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 119
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_5
    invoke-static/range {v21 .. v21}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 120
    const v38, 0x7f0c0169

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 121
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 122
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 125
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v23 .. v23}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 126
    const v38, 0x7f0c016e

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 127
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 128
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 131
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_7
    invoke-static {v7}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 132
    const v38, 0x7f0c016d

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 133
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 135
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v38

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v7}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 138
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_8
    invoke-static/range {v36 .. v36}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 139
    const v38, 0x7f0c016c

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 140
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 142
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 145
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_9
    invoke-static/range {v20 .. v20}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 146
    const v38, 0x7f0c016b

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 147
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 149
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 152
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_a
    invoke-static/range {v37 .. v37}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 153
    const v38, 0x7f0c016a

    invoke-static/range {v38 .. v38}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v18

    .line 154
    .restart local v18    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    move-object/from16 v3, v18

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v13

    .line 156
    .restart local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v38, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v38 .. v38}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    invoke-static/range {v37 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v13, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 159
    .end local v13    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v18    # "grouperName":Ljava/lang/String;
    :cond_b
    return-object v24

    .line 43
    .end local v24    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_c
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lim/doit/pro/model/BaseEntityWithPos;

    .line 44
    .local v19, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual/range {v19 .. v19}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v38

    if-eqz v38, :cond_10

    move-object/from16 v38, v19

    check-cast v38, Lim/doit/pro/model/Task;

    invoke-virtual/range {v38 .. v38}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v38

    if-eqz v38, :cond_10

    move-object/from16 v25, v19

    .line 45
    check-cast v25, Lim/doit/pro/model/Task;

    .line 46
    .local v25, "task":Lim/doit/pro/model/Task;
    invoke-virtual/range {v25 .. v25}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lim/doit/pro/model/Repeater;->isDaily()Z

    move-result v38

    if-eqz v38, :cond_d

    .line 47
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :cond_d
    invoke-virtual/range {v25 .. v25}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lim/doit/pro/model/Repeater;->isWeekly()Z

    move-result v38

    if-eqz v38, :cond_e

    .line 50
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lim/doit/pro/model/Repeater;->isMonthly()Z

    move-result v38

    if-eqz v38, :cond_f

    .line 53
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_f
    invoke-virtual/range {v25 .. v25}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lim/doit/pro/model/Repeater;->isYearly()Z

    move-result v38

    if-eqz v38, :cond_10

    .line 56
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    .end local v25    # "task":Lim/doit/pro/model/Task;
    :cond_10
    const-wide/16 v26, 0x0

    .line 61
    .local v26, "startAt":J
    invoke-virtual/range {v19 .. v19}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v38

    if-eqz v38, :cond_11

    .line 62
    invoke-virtual/range {v19 .. v19}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 64
    :cond_11
    const-wide/16 v40, 0x0

    cmp-long v38, v26, v40

    if-nez v38, :cond_12

    .line 65
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    :cond_12
    cmp-long v38, v26, v28

    if-gez v38, :cond_13

    .line 67
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_13
    cmp-long v38, v26, v30

    if-gez v38, :cond_14

    .line 69
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :cond_14
    cmp-long v38, v26, v16

    if-gtz v38, :cond_15

    .line 71
    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 72
    :cond_15
    cmp-long v38, v26, v14

    if-gtz v38, :cond_16

    .line 73
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 74
    :cond_16
    cmp-long v38, v26, v8

    if-gtz v38, :cond_17

    .line 75
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_17
    cmp-long v38, v26, v10

    if-gtz v38, :cond_18

    .line 77
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_18
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
