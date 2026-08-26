.class public Lim/doit/pro/activity/listview/group/GroupByDeadline;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByDeadline.java"


# instance fields
.field private mBox:Lim/doit/pro/model/Box;


# direct methods
.method public constructor <init>(Lim/doit/pro/model/Box;)V
    .locals 0
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 23
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    .line 24
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/GroupByDeadline;->mBox:Lim/doit/pro/model/Box;

    .line 25
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
    .line 173
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByDeadline;->mBox:Lim/doit/pro/model/Box;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByDeadline;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v0}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct {v0}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 44
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
    .line 29
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v7, "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v26, "overdueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v35, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v36, "tomorrowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v34, "thisWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v24, "nextWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v33, "thisMonthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v23, "nextMonthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v25, "noDeadlineList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v6, "dailyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v37, "weeklyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v22, "monthlyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v38, "yearlyRepeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTodayMillis()J

    move-result-wide v28

    .line 44
    .local v28, "startOfToday":J
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v30

    .line 45
    .local v30, "startOfTomorrow":J
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrowMills()J

    move-result-wide v18

    .line 46
    .local v18, "endOfTomorrow":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lim/doit/pro/utils/DateUtils;->getDoitEndOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 47
    .local v16, "endOfThisWeek":J
    const-wide/32 v40, 0x1ee62800

    add-long v10, v16, v40

    .line 48
    .local v10, "endOfNextWeek":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 49
    .local v14, "endOfThisMonthDate":Ljava/util/Calendar;
    const/16 v39, 0x5

    const/16 v40, 0x5

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 50
    invoke-static {v14}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 51
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 52
    .local v12, "endOfThisMonth":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-nez v39, :cond_c

    .line 95
    new-instance v27, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct/range {v27 .. v27}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 96
    .local v27, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->addDoitnowGrouper(Ljava/util/ArrayList;Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 97
    invoke-static/range {v26 .. v26}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 98
    const v39, 0x7f0c0158

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 99
    .local v20, "grouperName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 100
    .local v15, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 103
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_0
    invoke-static/range {v35 .. v35}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 104
    const v39, 0x7f0c0159

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 105
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 106
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 109
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v36 .. v36}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 110
    const v39, 0x7f0c015a

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 111
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 112
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 115
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static/range {v34 .. v34}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_3

    .line 116
    const v39, 0x7f0c015b

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 117
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 118
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 121
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_3
    invoke-static/range {v24 .. v24}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 122
    const v39, 0x7f0c015c

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 123
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 124
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 127
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_4
    invoke-static/range {v33 .. v33}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 128
    const v39, 0x7f0c015d

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 129
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 130
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 133
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_5
    invoke-static/range {v23 .. v23}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 134
    const v39, 0x7f0c015e

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 135
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 136
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 139
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v25 .. v25}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 140
    const v39, 0x7f0c015f

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 141
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 142
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 145
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_8

    .line 146
    const v39, 0x7f0c00a3

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 147
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 148
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    move-object/from16 v0, v27

    invoke-virtual {v0, v15, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 151
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_8
    invoke-static/range {v37 .. v37}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 152
    const v39, 0x7f0c00a4

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 153
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 154
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 157
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_9
    invoke-static/range {v22 .. v22}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_a

    .line 158
    const v39, 0x7f0c00a6

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 159
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 160
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 163
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_a
    invoke-static/range {v38 .. v38}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v39

    if-eqz v39, :cond_b

    .line 164
    const v39, 0x7f0c00a7

    invoke-static/range {v39 .. v39}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 165
    .restart local v20    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v39

    move-object/from16 v3, v20

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v15

    .line 166
    .restart local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->getComparator()Ljava/util/Comparator;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 169
    .end local v15    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v20    # "grouperName":Ljava/lang/String;
    :cond_b
    return-object v27

    .line 52
    .end local v27    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_c
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lim/doit/pro/model/BaseEntityWithPos;

    .line 53
    .local v21, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual/range {v21 .. v21}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v39

    if-eqz v39, :cond_10

    move-object/from16 v39, v21

    check-cast v39, Lim/doit/pro/model/Task;

    invoke-virtual/range {v39 .. v39}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v39

    if-eqz v39, :cond_10

    move-object/from16 v32, v21

    .line 54
    check-cast v32, Lim/doit/pro/model/Task;

    .line 55
    .local v32, "task":Lim/doit/pro/model/Task;
    invoke-virtual/range {v32 .. v32}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lim/doit/pro/model/Repeater;->isDaily()Z

    move-result v39

    if-eqz v39, :cond_d

    .line 56
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_d
    invoke-virtual/range {v32 .. v32}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lim/doit/pro/model/Repeater;->isWeekly()Z

    move-result v39

    if-eqz v39, :cond_e

    .line 59
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_e
    invoke-virtual/range {v32 .. v32}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lim/doit/pro/model/Repeater;->isMonthly()Z

    move-result v39

    if-eqz v39, :cond_f

    .line 62
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_f
    invoke-virtual/range {v32 .. v32}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lim/doit/pro/model/Repeater;->isYearly()Z

    move-result v39

    if-eqz v39, :cond_10

    .line 65
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 69
    .end local v32    # "task":Lim/doit/pro/model/Task;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listview/group/GroupByDeadline;->mBox:Lim/doit/pro/model/Box;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/activity/listview/group/GroupByDeadline;->isShowDoitNow(Lim/doit/pro/model/Box;Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 70
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_11
    const-wide/16 v8, 0x0

    .line 74
    .local v8, "endAt":J
    invoke-virtual/range {v21 .. v21}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v39

    if-eqz v39, :cond_12

    .line 75
    invoke-virtual/range {v21 .. v21}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseEndAt()Ljava/util/Calendar;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 77
    :cond_12
    const-wide/16 v42, 0x0

    cmp-long v39, v8, v42

    if-nez v39, :cond_13

    .line 78
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_13
    cmp-long v39, v8, v28

    if-gez v39, :cond_14

    .line 80
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_14
    cmp-long v39, v8, v30

    if-gez v39, :cond_15

    .line 82
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    :cond_15
    cmp-long v39, v8, v18

    if-gtz v39, :cond_16

    .line 84
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_16
    cmp-long v39, v8, v16

    if-gtz v39, :cond_17

    .line 86
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :cond_17
    cmp-long v39, v8, v10

    if-gtz v39, :cond_18

    .line 88
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 89
    :cond_18
    cmp-long v39, v8, v12

    if-gtz v39, :cond_19

    .line 90
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :cond_19
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
