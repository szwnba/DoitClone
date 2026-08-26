.class public abstract Lim/doit/pro/activity/listview/group/DBaseGrouper;
.super Ljava/lang/Object;
.source "DBaseGrouper.java"


# instance fields
.field protected grouperFoldStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/DBaseGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method private hasChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/DBaseGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mergeFold(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fold"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->hasChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/DBaseGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 51
    .end local p2    # "fold":Z
    :cond_0
    return p2
.end method


# virtual methods
.method protected addDoitnowGrouper(Ljava/util/ArrayList;Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 4
    .param p2, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "doitnowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const v2, 0x7f0c0160

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "grouperName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 42
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    new-instance v2, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    invoke-virtual {p2, v0, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V

    .line 45
    .end local v0    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v1    # "grouperName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected buildGrouper(Ljava/lang/String;ILjava/lang/String;Z)Lim/doit/pro/ui/model/GrouperForListView;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "foldStatusKey"    # Ljava/lang/String;
    .param p4, "defaultFold"    # Z

    .prologue
    .line 27
    new-instance v0, Lim/doit/pro/ui/model/GrouperForListView;

    invoke-direct {p0, p3, p4}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->mergeFold(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lim/doit/pro/ui/model/GrouperForListView;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 28
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    return-object v0
.end method

.method public abstract group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
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
.end method

.method protected isShowDoitNow(Lim/doit/pro/model/Box;Lim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "box"    # Lim/doit/pro/model/Box;
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 32
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    check-cast p2, Lim/doit/pro/model/Task;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->isNow()Z

    move-result v0

    .line 35
    :goto_0
    return v0

    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGrouperFoldStatus(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "grouperFoldStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/DBaseGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    .line 22
    return-void
.end method
