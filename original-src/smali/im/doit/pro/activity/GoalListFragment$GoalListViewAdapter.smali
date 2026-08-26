.class Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "GoalListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoalListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalListFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/GoalListFragment;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 305
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->this$0:Lim/doit/pro/activity/GoalListFragment;

    .line 306
    invoke-direct {p0, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 307
    return-void
.end method


# virtual methods
.method protected isCurrentBoxDraggable()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method protected isNotShowGoalIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method
