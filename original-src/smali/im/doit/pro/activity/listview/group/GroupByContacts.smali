.class public Lim/doit/pro/activity/listview/group/GroupByContacts;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByContacts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DBaseGrouper;-><init>()V

    return-void
.end method


# virtual methods
.method public group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 14
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
    .line 24
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v7, "mineList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v10, "unknowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v1, "childrenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 48
    new-instance v8, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v8}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 49
    .local v8, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v11

    iget-object v11, v11, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v11}, Lim/doit/pro/db/persist/ContactDao;->findAll()Ljava/util/ArrayList;

    move-result-object v2

    .line 50
    .local v2, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    new-instance v11, Lim/doit/pro/activity/listview/sort/ComparatorContactByPos;

    invoke-direct {v11}, Lim/doit/pro/activity/listview/sort/ComparatorContactByPos;-><init>()V

    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 66
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_a

    .line 72
    invoke-static {v7}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    const v11, 0x7f0c0157

    invoke-static {v11}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "grouperName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v5, v11, v5, v12}, Lim/doit/pro/activity/listview/group/GroupByContacts;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v4

    .line 75
    .local v4, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v11, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v11}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-virtual {v8, v4, v7}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 78
    .end local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v5    # "grouperName":Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 79
    const v11, 0x7f0c00e7

    invoke-static {v11}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "grouperName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v5, v11, v5, v12}, Lim/doit/pro/activity/listview/group/GroupByContacts;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v4

    .line 81
    .restart local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v11, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v11}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-virtual {v8, v4, v10}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 84
    .end local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v5    # "grouperName":Ljava/lang/String;
    :cond_2
    return-object v8

    .line 27
    .end local v2    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    .end local v8    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/BaseEntityWithPos;

    .line 28
    .local v6, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v6}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v9, v6

    .line 29
    check-cast v9, Lim/doit/pro/model/Task;

    .line 30
    .local v9, "task":Lim/doit/pro/model/Task;
    const/4 v3, 0x0

    .line 31
    .local v3, "email":Ljava/lang/String;
    invoke-virtual {v9}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 32
    invoke-virtual {v9}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v11

    invoke-virtual {v11}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/doit/pro/model/AssignmentItem;

    invoke-virtual {v11}, Lim/doit/pro/model/AssignmentItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 35
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_5
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    .end local v3    # "email":Ljava/lang/String;
    .end local v9    # "task":Lim/doit/pro/model/Task;
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "GroupByContacts list item is not task. item is "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 51
    .end local v6    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local v2    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    .restart local v8    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Contact;

    .line 52
    .local v6, "item":Lim/doit/pro/model/Contact;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 53
    const/4 v5, 0x0

    .line 54
    .restart local v5    # "grouperName":Ljava/lang/String;
    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 55
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    :goto_3
    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 60
    .local v0, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v5, v12, v5, v13}, Lim/doit/pro/activity/listview/group/GroupByContacts;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v4

    .line 61
    .restart local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v12, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v12}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    invoke-virtual {v8, v4, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 63
    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 57
    .end local v0    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    .end local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    :cond_9
    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 66
    .end local v5    # "grouperName":Ljava/lang/String;
    .end local v6    # "item":Lim/doit/pro/model/Contact;
    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 67
    .local v6, "item":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .restart local v0    # "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v6, v12, v6, v13}, Lim/doit/pro/activity/listview/group/GroupByContacts;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v4

    .line 69
    .restart local v4    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v12, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;

    invoke-direct {v12}, Lim/doit/pro/activity/listview/sort/ComparatorForWaiting;-><init>()V

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-virtual {v8, v4, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method
