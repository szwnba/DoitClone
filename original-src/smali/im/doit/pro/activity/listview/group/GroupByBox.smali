.class public Lim/doit/pro/activity/listview/group/GroupByBox;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByBox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 23
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
    .line 22
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v8, "inboxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v17, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v10, "nextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v18, "tomorrowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v14, "scheduldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v15, "somedayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v20, "waitingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v12, "repeaterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v11, "projectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v5, "goalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v4, "completedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v19, "trashedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v3, "archivedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_e

    .line 73
    new-instance v13, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v13}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 74
    .local v13, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {v8}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 75
    const v21, 0x7f0c004b

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "grouperName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 77
    .local v6, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    invoke-virtual {v13, v6, v8}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 80
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v17 .. v17}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 81
    const v21, 0x7f0c004d

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 82
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 83
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    move-object/from16 v0, v17

    invoke-virtual {v13, v6, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 86
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 87
    const v21, 0x7f0c004e

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 89
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    invoke-virtual {v13, v6, v10}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 92
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_3
    invoke-static/range {v18 .. v18}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 93
    const v21, 0x7f0c004f

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 95
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    move-object/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 98
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_4
    invoke-static {v14}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 99
    const v21, 0x7f0c0050

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 100
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 101
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-virtual {v13, v6, v14}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 104
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 105
    const v21, 0x7f0c0051

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 107
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {v13, v6, v15}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 110
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v20 .. v20}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 111
    const v21, 0x7f0c0052

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 113
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    move-object/from16 v0, v20

    invoke-virtual {v13, v6, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 116
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_7
    invoke-static {v12}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 117
    const v21, 0x7f0c0161

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 119
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByStartAt;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-virtual {v13, v6, v12}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 122
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_8
    invoke-static {v11}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 123
    const v21, 0x7f0c00ea

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 125
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    invoke-virtual {v13, v6, v11}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 128
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 129
    const v21, 0x7f0c01b2

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 131
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    invoke-virtual {v13, v6, v5}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 134
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_a
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 135
    const v21, 0x7f0c0053

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 137
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-virtual {v13, v6, v4}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 140
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_b
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 141
    const v21, 0x7f0c0054

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 143
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByCompleted;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    invoke-virtual {v13, v6, v3}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 146
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_c
    invoke-static/range {v19 .. v19}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 147
    const v21, 0x7f0c0055

    invoke-static/range {v21 .. v21}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .restart local v7    # "grouperName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v7, v2}, Lim/doit/pro/activity/listview/group/GroupByBox;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v6

    .line 149
    .restart local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v21, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;

    invoke-direct/range {v21 .. v21}, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    move-object/from16 v0, v19

    invoke-virtual {v13, v6, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 152
    .end local v6    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v7    # "grouperName":Ljava/lang/String;
    :cond_d
    return-object v13

    .line 35
    .end local v13    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lim/doit/pro/model/BaseEntityWithPos;

    .line 36
    .local v9, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 37
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_f
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 41
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :cond_10
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 45
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    :cond_11
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v22

    if-eqz v22, :cond_19

    move-object/from16 v16, v9

    .line 49
    check-cast v16, Lim/doit/pro/model/Task;

    .line 50
    .local v16, "task":Lim/doit/pro/model/Task;
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 51
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 53
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isNext()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 55
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 57
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isScheduled()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 59
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :cond_16
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isSomeday()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 61
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :cond_17
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isWaiting()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 63
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_18
    invoke-virtual/range {v16 .. v16}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 65
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    .end local v16    # "task":Lim/doit/pro/model/Task;
    :cond_19
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 68
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 69
    :cond_1a
    invoke-virtual {v9}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 70
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
