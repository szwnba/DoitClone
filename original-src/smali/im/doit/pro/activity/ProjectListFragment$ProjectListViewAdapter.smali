.class public Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "ProjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProjectListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/ProjectListFragment;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 117
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    .line 118
    invoke-virtual {p1}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected getSubTitleText()Ljava/lang/String;
    .locals 14

    .prologue
    const v13, 0x7f0c0170

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 123
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getGroupers()Ljava/util/ArrayList;

    move-result-object v3

    .line 124
    .local v3, "groupers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 127
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/model/GrouperForListView;

    .line 128
    .local v2, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v1

    .line 129
    .local v1, "count":I
    const v6, 0x7f0c022a

    .line 130
    .local v6, "resId":I
    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    if-le v1, v10, :cond_0

    .line 133
    const v6, 0x7f0c022a

    .line 144
    :goto_0
    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .end local v1    # "count":I
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v6    # "resId":I
    :goto_1
    return-object v7

    .line 135
    .restart local v1    # "count":I
    .restart local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .restart local v6    # "resId":I
    :cond_0
    const v6, 0x7f0c022b

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    if-le v1, v10, :cond_2

    .line 139
    const v6, 0x7f0c022c

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const v6, 0x7f0c022d

    goto :goto_0

    .line 145
    .end local v1    # "count":I
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v6    # "resId":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_6

    .line 146
    const/4 v0, 0x0

    .local v0, "activeCount":I
    const/4 v4, 0x0

    .line 147
    .local v4, "inactiveCount":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 157
    const v7, 0x7f0c0229

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 156
    invoke-static {v7, v8}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 147
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/BaseEntityWithPos;

    .local v5, "item":Lim/doit/pro/model/BaseEntityWithPos;
    move-object v2, v5

    .line 148
    check-cast v2, Lim/doit/pro/ui/model/GrouperForListView;

    .line 149
    .restart local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 151
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v0

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v4

    goto :goto_2

    .line 161
    .end local v0    # "activeCount":I
    .end local v2    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    .end local v4    # "inactiveCount":I
    .end local v5    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_6
    invoke-super {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSubTitleText()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method protected isCurrentBoxDraggable()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method protected isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 169
    .local v1, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v1, :cond_1

    .line 178
    .end local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    :goto_0
    return v2

    .line 172
    .restart local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    check-cast p2, Lim/doit/pro/model/Project;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getGoalName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "goalName":Ljava/lang/String;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const/4 v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "goalName":Ljava/lang/String;
    .end local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v2

    goto :goto_0
.end method

.method protected isNotShowProjectIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method
