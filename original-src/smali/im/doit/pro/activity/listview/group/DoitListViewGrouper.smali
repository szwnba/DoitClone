.class public Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
.super Ljava/lang/Object;
.source "DoitListViewGrouper.java"


# instance fields
.field private grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

.field private grouperFoldStatus:Ljava/util/HashMap;
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

.field private mBox:Lim/doit/pro/model/Box;

.field private mGroupBy:Lim/doit/pro/model/enums/GroupByType;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    .line 13
    return-void
.end method

.method private groupList()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 5

    .prologue
    .line 51
    const/4 v2, 0x0

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    .line 52
    new-instance v0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 53
    .local v0, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 97
    .end local v0    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .local v1, "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 56
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    if-nez v2, :cond_2

    .line 57
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    new-instance v3, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;

    invoke-direct {v3}, Lim/doit/pro/activity/listview/sort/ComparatorByCreatedDesc;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Ljava/util/ArrayList;)V

    move-object v1, v0

    .line 61
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 63
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInToday;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    .line 93
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->setGrouperFoldStatus(Ljava/util/HashMap;)V

    .line 95
    iget-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/listview/group/DBaseGrouper;->group(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 97
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 65
    .end local v1    # "result":Ljava/lang/Object;
    :cond_4
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByStartAtInScheduled;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto :goto_1

    .line 67
    :cond_5
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByProject;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-direct {v2, v3}, Lim/doit/pro/activity/listview/group/GroupByProject;-><init>(Lim/doit/pro/model/Box;)V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto :goto_1

    .line 69
    :cond_6
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByContext;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-direct {v2, v3}, Lim/doit/pro/activity/listview/group/GroupByContext;-><init>(Lim/doit/pro/model/Box;)V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto :goto_1

    .line 71
    :cond_7
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByPriority;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-direct {v2, v3}, Lim/doit/pro/activity/listview/group/GroupByPriority;-><init>(Lim/doit/pro/model/Box;)V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto :goto_1

    .line 73
    :cond_8
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 74
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByDeadline;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-direct {v2, v3}, Lim/doit/pro/activity/listview/group/GroupByDeadline;-><init>(Lim/doit/pro/model/Box;)V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto :goto_1

    .line 75
    :cond_9
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->contacts:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 76
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByContacts;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByContacts;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 77
    :cond_a
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->completed_at:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 78
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByCompleted;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByCompleted;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 79
    :cond_b
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 80
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByStatus;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByStatus;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 81
    :cond_c
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 82
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByBox;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByBox;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 83
    :cond_d
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->box_in_goal:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 84
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByBoxInGoal;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 85
    :cond_e
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->trash:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 86
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByTrash;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByTrash;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 87
    :cond_f
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->contact:Lim/doit/pro/model/enums/GroupByType;

    iget-object v3, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    new-instance v2, Lim/doit/pro/activity/listview/group/GroupByContact;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/GroupByContact;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouper:Lim/doit/pro/activity/listview/group/DBaseGrouper;

    goto/16 :goto_1

    .line 91
    :cond_10
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public group(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 2
    .param p1, "box"    # Lim/doit/pro/model/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Box;",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    .line 30
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 31
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    iget-object v1, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    sget-object v0, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 35
    :cond_1
    iput-object p2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->groupList()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method public group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1
    .param p1, "groupby"    # Lim/doit/pro/model/enums/GroupByType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/enums/GroupByType;",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mGroupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 42
    iput-object p2, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->groupList()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->mList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public updateGroupFoldStatus(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fold"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->grouperFoldStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
