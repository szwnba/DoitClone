.class Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "TaskContextViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 98
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 99
    invoke-direct {p0, p1, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 106
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 108
    iget-object v3, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 107
    invoke-direct {v1, v2, v3}, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Landroid/content/Context;)V

    .line 111
    .end local v0    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected isNotShowContextAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isUndraggable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 136
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 140
    .local v1, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    if-eqz v1, :cond_0

    .line 143
    const v2, 0x7f0c004e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    const v2, 0x7f0c0160

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_3
    invoke-super {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected isUnselectedable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 154
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUnselectedable(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 123
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 125
    const-class v3, Lim/doit/pro/activity/TaskContextDetailActivity;

    .line 124
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "taskContext"

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    invoke-static {v3}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->access$0(Lim/doit/pro/activity/TaskContextViewPagerActivity;)Lim/doit/pro/model/TaskContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    invoke-virtual {v2, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->onListItemClick(Landroid/view/View;I)V

    goto :goto_0
.end method
