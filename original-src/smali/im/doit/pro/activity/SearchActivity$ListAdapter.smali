.class Lim/doit/pro/activity/SearchActivity$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SearchActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SearchActivity;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 298
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$ListAdapter;->this$0:Lim/doit/pro/activity/SearchActivity;

    .line 299
    invoke-direct {p0, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 300
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, "viewHolder":Landroid/view/View;
    instance-of v4, v3, Lim/doit/pro/activity/listview/TaskViewHolder;

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SearchActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    move-object v2, v3

    .line 307
    check-cast v2, Lim/doit/pro/activity/listview/TaskViewHolder;

    .local v2, "taskViewHolder":Lim/doit/pro/activity/listview/TaskViewHolder;
    move-object v1, v0

    .line 308
    check-cast v1, Lim/doit/pro/model/Task;

    .line 309
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2, v1}, Lim/doit/pro/activity/listview/TaskViewHolder;->setCompleteViewContent(Lim/doit/pro/model/Task;)V

    .line 311
    .end local v0    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v1    # "task":Lim/doit/pro/model/Task;
    .end local v2    # "taskViewHolder":Lim/doit/pro/activity/listview/TaskViewHolder;
    :cond_0
    return-object v3
.end method

.method protected isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SearchActivity$ListAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 319
    .local v1, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v1, :cond_1

    .line 328
    .end local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    :goto_0
    return v2

    .line 322
    .restart local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    check-cast p2, Lim/doit/pro/model/Project;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getGoalName()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "goalName":Ljava/lang/String;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    const/4 v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "goalName":Ljava/lang/String;
    .end local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v2

    goto :goto_0
.end method
