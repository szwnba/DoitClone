.class Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "FilterViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FilterViewPagerActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 168
    iput-object p1, p0, Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    .line 169
    invoke-direct {p0, p1, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 170
    return-void
.end method


# virtual methods
.method public isUndraggable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 175
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    .line 178
    :cond_0
    const v1, 0x7f0c004e

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    const v1, 0x7f0c0160

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 180
    if-eqz v1, :cond_2

    .line 181
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 183
    :cond_2
    invoke-super {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v1

    goto :goto_0
.end method
