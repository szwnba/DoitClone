.class Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "GoalViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalViewPagerActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 180
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    .line 181
    invoke-direct {p0, p1, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 182
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 206
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;Landroid/content/Context;)V

    .line 210
    .end local v0    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected isNotShowGoalIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public isUndraggable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 257
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 261
    .local v1, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    if-eqz v1, :cond_0

    .line 264
    const v2, 0x7f0c004e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    const v2, 0x7f0c0160

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 266
    if-eqz v2, :cond_3

    .line 267
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 269
    :cond_3
    invoke-super {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected isUnselectedable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 275
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x1

    .line 278
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
    .line 186
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 187
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v2}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    .line 194
    const-class v3, Lim/doit/pro/activity/GoalDetailActivity;

    .line 193
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "goal"

    iget-object v3, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v3}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/model/Goal;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-virtual {v2, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->onListItemClick(Landroid/view/View;I)V

    goto :goto_0
.end method
