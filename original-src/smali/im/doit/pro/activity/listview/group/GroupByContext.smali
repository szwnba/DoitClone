.class public Lim/doit/pro/activity/listview/group/GroupByContext;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByContext.java"


# instance fields
.field private mBox:Lim/doit/pro/model/Box;


# direct methods
.method public constructor <init>(Lim/doit/pro/model/Box;)V
    .locals 0
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 25
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    .line 26
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/GroupByContext;->mBox:Lim/doit/pro/model/Box;

    .line 27
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
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByContext;->mBox:Lim/doit/pro/model/Box;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/listview/group/GroupByContext;->mBox:Lim/doit/pro/model/Box;

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
    .locals 21
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
    .line 31
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v9

    .line 32
    .local v9, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    new-instance v17, Lim/doit/pro/activity/listview/sort/ComparatorContextByPos;

    invoke-direct/range {v17 .. v17}, Lim/doit/pro/activity/listview/sort/ComparatorContextByPos;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v7, "contextIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v8, "contextNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v5, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_3

    .line 43
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v10, "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v15, "noContextChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 57
    new-instance v16, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct/range {v16 .. v16}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 58
    .local v16, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lim/doit/pro/activity/listview/group/GroupByContext;->addDoitnowGrouper(Ljava/util/ArrayList;Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 59
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 68
    invoke-static {v15}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 69
    const v17, 0x7f0c0174

    invoke-static/range {v17 .. v17}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "grouperName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v12, v2}, Lim/doit/pro/activity/listview/group/GroupByContext;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v11

    .line 71
    .local v11, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByContext;->getComparator()Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v15}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 74
    .end local v11    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v12    # "grouperName":Ljava/lang/String;
    :cond_2
    return-object v16

    .line 36
    .end local v10    # "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .end local v15    # "noContextChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .end local v16    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/doit/pro/model/TaskContext;

    .line 37
    .local v14, "item":Lim/doit/pro/model/TaskContext;
    invoke-virtual {v14}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v14}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v14}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 40
    invoke-virtual {v14}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 45
    .end local v14    # "item":Lim/doit/pro/model/TaskContext;
    .restart local v10    # "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .restart local v15    # "noContextChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/doit/pro/model/BaseEntityWithPos;

    .line 46
    .local v14, "item":Lim/doit/pro/model/BaseEntityWithPos;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listview/group/GroupByContext;->mBox:Lim/doit/pro/model/Box;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lim/doit/pro/activity/listview/group/GroupByContext;->isShowDoitNow(Lim/doit/pro/model/Box;Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 47
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 50
    :cond_5
    invoke-virtual {v14}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseContext()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "context":Ljava/lang/String;
    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 52
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 54
    :cond_6
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 59
    .end local v6    # "context":Ljava/lang/String;
    .end local v14    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local v16    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 60
    .local v13, "id":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 61
    .local v4, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 64
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v13, v3}, Lim/doit/pro/activity/listview/group/GroupByContext;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v11

    .line 65
    .restart local v11    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/group/GroupByContext;->getComparator()Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v4}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method
