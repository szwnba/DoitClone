.class public Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByBoxInGoal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 25
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
    .line 23
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v10, "inboxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v19, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v12, "nextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v20, "tomorrowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v16, "scheduldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v17, "somedayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v22, "waitingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v14, "repeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v3, "activeProjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v9, "inactiveProjecttList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v6, "goalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v5, "completedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v21, "trashedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, "archivedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_f

    .line 80
    new-instance v15, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v15}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 81
    .local v15, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v10}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 82
    const v23, 0x7f0c004b

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "grouperName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 83
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 85
    .local v7, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-virtual {v15, v7, v10}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 88
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v19 .. v19}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 89
    const v23, 0x7f0c004d

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 91
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 92
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    move-object/from16 v0, v19

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 95
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static {v12}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 96
    const v23, 0x7f0c004e

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 97
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 99
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    invoke-virtual {v15, v7, v12}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 102
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_3
    invoke-static/range {v20 .. v20}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 103
    const v23, 0x7f0c004f

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 106
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    move-object/from16 v0, v20

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 109
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_4
    invoke-static/range {v16 .. v16}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 110
    const v23, 0x7f0c0050

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 113
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 116
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_5
    invoke-static/range {v17 .. v17}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 117
    const v23, 0x7f0c0051

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 119
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 118
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 120
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    move-object/from16 v0, v17

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 123
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v22 .. v22}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 124
    const v23, 0x7f0c0052

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 125
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 127
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    move-object/from16 v0, v22

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 130
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_7
    invoke-static {v14}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 132
    const v23, 0x7f0c0161

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 135
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    invoke-virtual {v15, v7, v14}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 138
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_8
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 139
    const v23, 0x7f0c0170

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 142
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    invoke-virtual {v15, v7, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 145
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_9
    invoke-static {v9}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 146
    const v23, 0x7f0c016f

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 148
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 147
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 149
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    invoke-virtual {v15, v7, v9}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 152
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_a
    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 153
    const v23, 0x7f0c01b2

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 155
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 156
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    invoke-virtual {v15, v7, v6}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 159
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 160
    const v23, 0x7f0c0053

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 163
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    invoke-virtual {v15, v7, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 166
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_c
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 167
    const v23, 0x7f0c0054

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 170
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-virtual {v15, v7, v4}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 173
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_d
    invoke-static/range {v21 .. v21}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 174
    const v23, 0x7f0c0055

    invoke-static/range {v23 .. v23}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 176
    .restart local v8    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x0

    .line 175
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v8, v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v7

    .line 177
    .restart local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v23, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;

    invoke-direct/range {v23 .. v23}, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    move-object/from16 v0, v21

    invoke-virtual {v15, v7, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 180
    .end local v7    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v8    # "grouperName":Ljava/lang/String;
    :cond_e
    return-object v15

    .line 37
    .end local v15    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/doit/pro/model/BaseEntityWithPos;

    .line 38
    .local v11, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 39
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_10
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 43
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :cond_11
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 47
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :cond_12
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v18, v11

    .line 51
    check-cast v18, Lim/doit/pro/model/Task;

    .line 52
    .local v18, "task":Lim/doit/pro/model/Task;
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 53
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 55
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :cond_14
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isNext()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 57
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_15
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 59
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :cond_16
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isScheduled()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 61
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :cond_17
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isSomeday()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 63
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_18
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isWaiting()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 65
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    :cond_19
    invoke-virtual/range {v18 .. v18}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 67
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 69
    .end local v18    # "task":Lim/doit/pro/model/Task;
    :cond_1a
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v24

    if-eqz v24, :cond_1c

    move-object v13, v11

    .line 70
    check-cast v13, Lim/doit/pro/model/Project;

    .line 71
    .local v13, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v13}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 72
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 74
    :cond_1b
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    .end local v13    # "project":Lim/doit/pro/model/Project;
    :cond_1c
    invoke-virtual {v11}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 77
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
