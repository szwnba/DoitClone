.class Lim/doit/pro/activity/TaskListFragment$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "TaskListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskListFragment;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 528
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$ListAdapter;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 529
    invoke-direct {p0, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 530
    return-void
.end method


# virtual methods
.method protected isCurrentBoxDraggable()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$ListAdapter;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$8(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/model/Box;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v0

    return v0
.end method
