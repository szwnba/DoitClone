.class Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "ProjectViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 217
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    .line 218
    invoke-direct {p0, p1, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 219
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 265
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;Landroid/content/Context;)V

    .line 269
    .end local v0    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected isNotShowProjectAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method protected isNotShowProjectIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public isUndraggable(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 224
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v2

    .line 228
    .local v2, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "groupName":Ljava/lang/String;
    const v3, 0x7f0c004e

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 233
    const v3, 0x7f0c0160

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 234
    if-eqz v3, :cond_3

    .line 235
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 237
    :cond_3
    invoke-super {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v3

    goto :goto_0
.end method

.method protected isUnselectedable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 243
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 246
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
    .line 274
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 275
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    .line 278
    const-class v3, Lim/doit/pro/activity/ProjectDetailActivity;

    .line 277
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "project"

    iget-object v3, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v3}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-virtual {v2, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->onListItemClick(Landroid/view/View;I)V

    goto :goto_0
.end method
