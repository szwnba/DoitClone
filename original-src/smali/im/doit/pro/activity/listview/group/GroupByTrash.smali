.class public Lim/doit/pro/activity/listview/group/GroupByTrash;
.super Lim/doit/pro/activity/listview/group/DBaseGrouper;
.source "GroupByTrash.java"


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
    .locals 12
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
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v1, "chilrenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .local v4, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Lim/doit/pro/activity/listview/group/GroupByTrash$1;

    invoke-direct {v9, p0}, Lim/doit/pro/activity/listview/group/GroupByTrash$1;-><init>(Lim/doit/pro/activity/listview/group/GroupByTrash;)V

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    new-instance v8, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v8}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 38
    .local v8, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 52
    return-object v8

    .line 23
    .end local v4    # "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lim/doit/pro/model/BaseEntityWithPos;

    .line 24
    .local v7, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v7}, Lim/doit/pro/model/BaseEntityWithPos;->getTrashed()Ljava/util/Calendar;

    move-result-object v9

    const-string v11, "yyyy/MM/dd"

    invoke-static {v9, v11}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "dateStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 26
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v3    # "dateStr":Ljava/lang/String;
    .end local v7    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local v4    # "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 39
    .local v7, "item":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .local v0, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 43
    const-string v10, "yyyy/MM/dd"

    invoke-static {v7, v10}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 44
    .local v2, "date":Ljava/util/Calendar;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->formatWeekdayDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "grouperName":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 46
    const v10, 0x7f0c0163

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v6, v10, v6, v11}, Lim/doit/pro/activity/listview/group/GroupByTrash;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v5

    .line 49
    .local v5, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v10, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;

    invoke-direct {v10}, Lim/doit/pro/activity/listview/sort/ComparatorByTrash;-><init>()V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    invoke-virtual {v8, v5, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    goto :goto_1
.end method
