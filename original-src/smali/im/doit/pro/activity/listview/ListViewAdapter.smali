.class public Lim/doit/pro/activity/listview/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemClickListener;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;,
        Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;,
        Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;,
        Lim/doit/pro/activity/listview/ListViewAdapter$TYPE;
    }
.end annotation


# instance fields
.field protected isAcionModeDone:Z

.field protected mActionMode:Landroid/view/ActionMode;

.field protected mActionModeCallback:Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDatasForView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mOnDeleteTagFilterListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

.field private mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

.field private mOnPullRefreshEnabledListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

.field private mOnReloadDataLisetner:Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;

.field private mOnUpdateGroupByStatusListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;

.field private mOnUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

.field private mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOne:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mShowOne:Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->isAcionModeDone:Z

    .line 123
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 124
    iput-object p2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 125
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;)V

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionModeCallback:Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

    .line 126
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->initListener()V

    .line 127
    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/listview/ListViewAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1411
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectPriorityDialog()V

    return-void
.end method

.method static synthetic access$11(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->putbackItems()V

    return-void
.end method

.method static synthetic access$12(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Task;)V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->completeTask(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method static synthetic access$13(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Project;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->completeProject(Lim/doit/pro/model/Project;)V

    return-void
.end method

.method static synthetic access$14(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Goal;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->completeGoal(Lim/doit/pro/model/Goal;)V

    return-void
.end method

.method static synthetic access$15(Lim/doit/pro/activity/listview/ListViewAdapter;)Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnDeleteTagFilterListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/listview/ListViewAdapter;)D
    .locals 2

    .prologue
    .line 1186
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getDelta()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshPullEnabled()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1430
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->showMoveTaskDailog()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->convertTaskToProject()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectProjectDialog()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectTaskContextDialog()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1388
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectGoalDialog()V

    return-void
.end method

.method private completeGoal(Lim/doit/pro/model/Goal;)V
    .locals 3
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 792
    new-instance v0, Lim/doit/pro/controller/CompleteGoal;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteGoal;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 793
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$8;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$8;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 792
    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/CompleteGoal;->complete(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;)V

    .line 800
    return-void
.end method

.method private completeProject(Lim/doit/pro/model/Project;)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 780
    new-instance v0, Lim/doit/pro/controller/CompleteProject;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteProject;-><init>()V

    .line 781
    .local v0, "completeProject":Lim/doit/pro/controller/CompleteProject;
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 782
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$7;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$7;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 781
    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/CompleteProject;->complete(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;)V

    .line 789
    return-void
.end method

.method private completeTask(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 768
    new-instance v0, Lim/doit/pro/controller/CompleteTask;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteTask;-><init>()V

    .line 769
    .local v0, "completeTask":Lim/doit/pro/controller/CompleteTask;
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 770
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$6;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$6;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 769
    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/CompleteTask;->complete(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/CompleteTask$CompleteTaskFinishListener;)V

    .line 777
    return-void
.end method

.method private convertTaskToProject()V
    .locals 3

    .prologue
    .line 1335
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 1339
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 1340
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$15;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$15;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1339
    invoke-static {v1, v0, v2}, Lim/doit/pro/utils/AlertDialogUtils;->showConvertToProjectDialog(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;)V

    goto :goto_0
.end method

.method private deleteTaskContext(Lim/doit/pro/model/TaskContext;)V
    .locals 3
    .param p1, "taskContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 1117
    new-instance v0, Lim/doit/pro/controller/DeleteTaskContext;

    invoke-direct {v0}, Lim/doit/pro/controller/DeleteTaskContext;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 1118
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$14;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$14;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1117
    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/DeleteTaskContext;->delete(Landroid/app/Activity;Lim/doit/pro/model/TaskContext;Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;)V

    .line 1125
    return-void
.end method

.method private doListViewItemUnselected(Lim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 8
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v5, 0x0

    .line 951
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, "selected":Z
    const/4 v3, -0x1

    .line 954
    .local v3, "selectedIndex":I
    const/4 v0, 0x0

    .line 955
    .local v0, "i":I
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, "uniqId":Ljava/lang/String;
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 965
    :goto_1
    if-eqz v2, :cond_0

    .line 966
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 967
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 968
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    if-eqz v6, :cond_0

    .line 969
    iget-object v5, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    invoke-interface {v5}, Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;->onItemUnselected()V

    .line 970
    const/4 v5, 0x1

    .line 975
    .end local v0    # "i":I
    .end local v2    # "selected":Z
    .end local v3    # "selectedIndex":I
    .end local v4    # "uniqId":Ljava/lang/String;
    :cond_0
    return v5

    .line 956
    .restart local v0    # "i":I
    .restart local v2    # "selected":Z
    .restart local v3    # "selectedIndex":I
    .restart local v4    # "uniqId":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/BaseEntityWithPos;

    .line 957
    .local v1, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 958
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 959
    const/4 v2, 0x1

    .line 960
    move v3, v0

    .line 961
    goto :goto_1

    .line 963
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDelta()D
    .locals 6

    .prologue
    .line 1187
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v1, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemClickListener;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemClickListener;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 853
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v1, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/activity/listview/ListViewAdapter$OnListViewItemLongClick;)V

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 854
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$9;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$9;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnItemSelectedListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;)V

    .line 877
    return-void
.end method

.method private isInDraggableGrouper(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 492
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 493
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    if-eqz v0, :cond_2

    .line 494
    const v3, 0x7f0c004e

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    const v3, 0x7f0c0160

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 496
    if-eqz v3, :cond_2

    .line 497
    :cond_0
    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 500
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 497
    goto :goto_0

    :cond_2
    move v1, v2

    .line 500
    goto :goto_0
.end method

.method private isNotProSelectedItemsContainGoal()Z
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 371
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 365
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 366
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;
    .locals 1

    .prologue
    .line 743
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$5;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-object v0
.end method

.method private onDeleteTagFilterClick()Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$10;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$10;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-object v0
.end method

.method private onDoitnowClickListener()Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$2;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-object v0
.end method

.method private onNotnowClickListener()Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$3;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-object v0
.end method

.method private onUncompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;
    .locals 1

    .prologue
    .line 716
    new-instance v0, Lim/doit/pro/activity/listview/ListViewAdapter$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$4;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    return-object v0
.end method

.method private putbackItems()V
    .locals 7

    .prologue
    .line 330
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotProSelectedItemsContainGoal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    goto :goto_0

    .line 337
    :cond_1
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 358
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    .line 360
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V

    goto :goto_0

    .line 337
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/BaseEntityWithPos;

    .line 338
    .local v1, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isNotTrashed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 341
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    check-cast v1, Lim/doit/pro/model/Task;

    .end local v1    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/TaskDao;->untrash(Lim/doit/pro/model/Task;)V

    goto :goto_1

    .line 343
    .restart local v1    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_4
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v1

    .line 344
    check-cast v2, Lim/doit/pro/model/Project;

    .line 345
    .local v2, "project":Lim/doit/pro/model/Project;
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {v4, v5, v6}, Lim/doit/pro/utils/ToastUtils;->ProjectExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 346
    if-nez v4, :cond_2

    .line 349
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/ProjectDao;->untrash(Lim/doit/pro/model/Project;)V

    goto :goto_1

    .line 350
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :cond_5
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 351
    check-cast v0, Lim/doit/pro/model/Goal;

    .line 352
    .local v0, "goal":Lim/doit/pro/model/Goal;
    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lim/doit/pro/utils/ToastUtils;->GoalExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 355
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/GoalDao;->untrash(Lim/doit/pro/model/Goal;)V

    goto :goto_1
.end method

.method private refreshPositionOfItem(II)V
    .locals 16
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1136
    invoke-virtual/range {p0 .. p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v4

    .line 1137
    .local v4, "item":Lim/doit/pro/model/BaseEntityWithPos;
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1138
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v9, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1139
    const/4 v8, 0x0

    .local v8, "preItem":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v5, 0x0

    .line 1141
    .local v5, "nextItem":Lim/doit/pro/model/BaseEntityWithPos;
    if-lez p2, :cond_1

    .line 1142
    add-int/lit8 v9, p2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v8

    .line 1143
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1144
    :cond_0
    const/4 v8, 0x0

    .line 1147
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v0, p2

    if-ge v0, v9, :cond_2

    .line 1148
    add-int/lit8 v9, p2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v5

    .line 1149
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1150
    const/4 v5, 0x0

    .line 1153
    :cond_2
    if-nez v8, :cond_4

    if-nez v5, :cond_4

    .line 1154
    const-string v9, "cannot drag"

    invoke-static {v9}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1184
    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_3
    :goto_0
    return-void

    .line 1157
    .restart local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_4
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v6

    .line 1158
    .local v6, "newPos":J
    if-nez v8, :cond_6

    .line 1159
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sget-wide v12, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v12, v12

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    sub-long v6, v10, v12

    .line 1173
    :cond_5
    :goto_1
    invoke-virtual {v4, v6, v7}, Lim/doit/pro/model/BaseEntityWithPos;->setPos(J)V

    .line 1174
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1175
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    check-cast v4, Lim/doit/pro/model/Task;

    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v9, v4}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 1160
    .restart local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_6
    if-nez v5, :cond_7

    .line 1161
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sget-wide v12, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v12, v12

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v6, v10, v12

    .line 1162
    goto :goto_1

    .line 1163
    :cond_7
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1164
    .local v2, "diff":J
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    long-to-double v12, v2

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v6, v10, v12

    .line 1166
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x64

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 1167
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x64

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 1168
    const-wide v10, -0x7ffffffffffffffeL    # -1.0E-323

    cmp-long v9, v6, v10

    if-ltz v9, :cond_8

    const-wide v10, 0x7ffffffffffffffeL

    cmp-long v9, v6, v10

    if-lez v9, :cond_5

    .line 1169
    :cond_8
    new-instance v9, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;

    move-object/from16 v0, p0

    iget-object v10, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto/16 :goto_0

    .line 1176
    .end local v2    # "diff":J
    :cond_9
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1177
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    check-cast v4, Lim/doit/pro/model/Project;

    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v9, v4}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto/16 :goto_0

    .line 1178
    .restart local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_a
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1179
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    check-cast v4, Lim/doit/pro/model/Goal;

    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v9, v4}, Lim/doit/pro/db/persist/GoalDao;->updateAndSaveLog(Lim/doit/pro/model/Goal;)V

    goto/16 :goto_0

    .line 1180
    .restart local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_b
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1181
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 1182
    check-cast v4, Lim/doit/pro/model/TaskContext;

    .end local v4    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v9, v4}, Lim/doit/pro/db/persist/TaskContextDao;->updateAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    goto/16 :goto_0
.end method

.method private refreshPullEnabled()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnPullRefreshEnabledListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1440
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnPullRefreshEnabledListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;->setEnabled(Z)V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnPullRefreshEnabledListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshView()V
    .locals 0

    .prologue
    .line 1077
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->notifyDataSetChanged()V

    .line 1078
    return-void
.end method

.method private reloadData()V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnReloadDataLisetner:Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnReloadDataLisetner:Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;

    invoke-interface {v0}, Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;->reloadData()V

    .line 1084
    :cond_0
    return-void
.end method

.method private setDatasForViewAndRefreshView()V
    .locals 6

    .prologue
    .line 253
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "i":I
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    .end local v0    # "i":I
    :goto_1
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 271
    return-void

    .line 256
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/BaseEntityWithPos;

    .line 257
    .local v1, "item":Lim/doit/pro/model/BaseEntityWithPos;
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lim/doit/pro/ui/model/GrouperForListView;

    .end local v1    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->isFold()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-boolean v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mShowOne:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 260
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_2
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 268
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private setItemSelected(Lim/doit/pro/activity/listview/ViewHolder;ILim/doit/pro/model/BaseEntityWithPos;)V
    .locals 5
    .param p1, "holder"    # Lim/doit/pro/activity/listview/ViewHolder;
    .param p2, "position"    # I
    .param p3, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 835
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 836
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 849
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-virtual {p3}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "uniqId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 841
    .local v1, "selected":Z
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 848
    :goto_1
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3, p2, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 842
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 843
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 844
    const/4 v1, 0x1

    .line 845
    goto :goto_1
.end method

.method private setViewHolderBackground(Lim/doit/pro/activity/listview/ViewHolder;ILim/doit/pro/model/BaseEntityWithPos;)V
    .locals 4
    .param p1, "holder"    # Lim/doit/pro/activity/listview/ViewHolder;
    .param p2, "position"    # I
    .param p3, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 804
    if-nez p3, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-virtual {p3}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 810
    const/4 v1, 0x0

    .local v1, "preEntity":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v0, 0x0

    .line 811
    .local v0, "nextEntity":Lim/doit/pro/model/BaseEntityWithPos;
    if-lez p2, :cond_2

    .line 812
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    .line 814
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_3

    .line 815
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 817
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 818
    check-cast v2, Lim/doit/pro/ui/model/GrouperForListView;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 820
    const v2, 0x7f02015d

    invoke-virtual {p1, v2}, Lim/doit/pro/activity/listview/ViewHolder;->setItemBackgroud(I)V

    goto :goto_0

    .line 821
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 823
    :cond_5
    const v2, 0x7f020155

    invoke-virtual {p1, v2}, Lim/doit/pro/activity/listview/ViewHolder;->setItemBackgroud(I)V

    goto :goto_0

    .line 824
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 826
    :cond_7
    const v2, 0x7f020159

    invoke-virtual {p1, v2}, Lim/doit/pro/activity/listview/ViewHolder;->setItemBackgroud(I)V

    goto :goto_0

    .line 829
    :cond_8
    const v2, 0x7f020151

    invoke-virtual {p1, v2}, Lim/doit/pro/activity/listview/ViewHolder;->setItemBackgroud(I)V

    goto :goto_0
.end method

.method private showMoveTaskDailog()V
    .locals 1

    .prologue
    .line 1431
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lim/doit/pro/utils/AlertDialogUtils;->showListViewMoveDailog(Landroid/app/Activity;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0
.end method

.method private showSelectGoalDialog()V
    .locals 4

    .prologue
    .line 1389
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1392
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1393
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    goto :goto_0

    .line 1396
    :cond_1
    new-instance v1, Lim/doit/pro/ui/component/SelectGoalDialog;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectGoalDialog;-><init>(Landroid/app/Activity;)V

    .line 1397
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectGoalDialog;
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$18;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$18;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectGoalDialog;->setOnGoalFinishListner(Lim/doit/pro/ui/component/SelectGoalDialog$OnGoalFinishListner;)V

    .line 1404
    const/4 v0, 0x0

    .line 1405
    .local v0, "defaultGoal":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1406
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getGoal()Ljava/lang/String;

    move-result-object v0

    .line 1408
    :cond_2
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectGoalDialog;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSelectPriorityDialog()V
    .locals 4

    .prologue
    .line 1412
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1415
    :cond_0
    new-instance v1, Lim/doit/pro/ui/component/SelectPriorityDialog;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectPriorityDialog;-><init>(Landroid/content/Context;)V

    .line 1416
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectPriorityDialog;
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$19;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$19;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectPriorityDialog;->setOnPriorityFinishListner(Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;)V

    .line 1423
    const/4 v0, -0x1

    .line 1424
    .local v0, "defaultPriority":I
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1425
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getBasePriority()I

    move-result v0

    .line 1427
    :cond_1
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->showDialog(I)V

    goto :goto_0
.end method

.method private showSelectProjectDialog()V
    .locals 4

    .prologue
    .line 1351
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1354
    :cond_0
    new-instance v1, Lim/doit/pro/ui/component/SelectProjectDialog;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectProjectDialog;-><init>(Landroid/app/Activity;)V

    .line 1355
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectProjectDialog;
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$16;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$16;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->setOnProjectFinishListner(Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;)V

    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, "defaultProject":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1364
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseProject()Ljava/lang/String;

    move-result-object v0

    .line 1366
    :cond_1
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectProjectDialog;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSelectTaskContextDialog()V
    .locals 4

    .prologue
    .line 1370
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1373
    :cond_0
    new-instance v1, Lim/doit/pro/ui/component/SelectTaskContextDialog;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;-><init>(Landroid/app/Activity;)V

    .line 1374
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectTaskContextDialog;
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$17;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$17;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->setOnTaskContextFinishListner(Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;)V

    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "defaultTaskContext":Ljava/lang/String;
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1383
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseContext()Ljava/lang/String;

    move-result-object v0

    .line 1385
    :cond_1
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trashGoal(Lim/doit/pro/model/Goal;)V
    .locals 3
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 1087
    new-instance v0, Lim/doit/pro/controller/TrashGoal;

    invoke-direct {v0}, Lim/doit/pro/controller/TrashGoal;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$11;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$11;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/TrashGoal;->trash(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;)V

    .line 1094
    return-void
.end method

.method private trashProject(Lim/doit/pro/model/Project;)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 1106
    new-instance v0, Lim/doit/pro/controller/TrashProject;

    invoke-direct {v0}, Lim/doit/pro/controller/TrashProject;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 1107
    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$13;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$13;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1106
    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/TrashProject;->trash(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;)V

    .line 1114
    return-void
.end method

.method private trashTask(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 1097
    new-instance v0, Lim/doit/pro/controller/TrashTask;

    invoke-direct {v0}, Lim/doit/pro/controller/TrashTask;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lim/doit/pro/activity/listview/ListViewAdapter$12;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$12;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/controller/TrashTask;->trash(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;)V

    .line 1103
    return-void
.end method


# virtual methods
.method protected doListViewItemClick(Lim/doit/pro/model/BaseEntityWithPos;)V
    .locals 3
    .param p1, "item"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 654
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    const-class v2, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "task"

    check-cast p1, Lim/doit/pro/model/Task;

    .end local p1    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 673
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 674
    return-void

    .line 658
    .restart local p1    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 660
    const-class v2, Lim/doit/pro/activity/ProjectViewPagerActivity;

    .line 659
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    const-class v2, Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 665
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "goal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 666
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 667
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    .line 669
    const-class v2, Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 668
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "taskContext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public doListViewItemSelected(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 924
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 925
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->doListViewItemUnselected(Lim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUnselectedable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 933
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    invoke-interface {v1, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;->onItemSelected(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public drop(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1129
    if-eq p1, p2, :cond_0

    .line 1130
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshPositionOfItem(II)V

    .line 1131
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 1133
    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lim/doit/pro/activity/listview/ListViewAdapter$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/ListViewAdapter$1;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshPullEnabled()V

    .line 239
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 539
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 545
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 540
    :cond_0
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    .line 541
    .local v1, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    check-cast v1, Lim/doit/pro/ui/model/GrouperForListView;

    goto :goto_1

    .line 539
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getGrouperPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 523
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 529
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 524
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    .line 525
    .local v1, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getGroupers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lim/doit/pro/model/BaseEntityWithPos;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDatasForView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 588
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 551
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 562
    :goto_0
    return v1

    .line 553
    :cond_0
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    const/4 v1, 0x1

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    const/4 v1, 0x2

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    const/4 v1, 0x3

    goto :goto_0

    .line 559
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    const/4 v1, 0x4

    goto :goto_0

    .line 561
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 562
    const/4 v1, 0x5

    goto :goto_0

    .line 564
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "type error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSubTitleText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 641
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const/4 v1, 0x0

    .line 648
    :goto_0
    return-object v1

    .line 644
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 645
    .local v0, "count":I
    if-le v0, v2, :cond_1

    .line 646
    const v1, 0x7f0c0227

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 649
    :cond_1
    const v1, 0x7f0c0228

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ListUIHelper;->getTags(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "holder":Lim/doit/pro/activity/listview/ViewHolder;
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItemViewType(I)I

    move-result v8

    .line 595
    .local v8, "type":I
    if-nez p2, :cond_7

    .line 596
    if-nez v8, :cond_2

    .line 597
    new-instance v0, Lim/doit/pro/activity/listview/TaskViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/TaskViewHolder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    move-object v9, v0

    .line 598
    check-cast v9, Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 599
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onDoitnowClickListener()Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lim/doit/pro/activity/listview/TaskViewHolder;->setOnDoitnowClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;)V

    move-object v9, v0

    .line 600
    check-cast v9, Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 601
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onNotnowClickListener()Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lim/doit/pro/activity/listview/TaskViewHolder;->setOnNotnowClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;)V

    .line 615
    :cond_0
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onCompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    move-result-object v9

    invoke-virtual {v0, v9}, Lim/doit/pro/activity/listview/ViewHolder;->setOnCompleteClickListener(Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;)V

    .line 616
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onUncompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    move-result-object v9

    invoke-virtual {v0, v9}, Lim/doit/pro/activity/listview/ViewHolder;->setOnUncompleteClickListener(Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;)V

    .line 620
    :goto_1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    .line 621
    .local v1, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setViewHolderBackground(Lim/doit/pro/activity/listview/ViewHolder;ILim/doit/pro/model/BaseEntityWithPos;)V

    .line 622
    invoke-direct {p0, v0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setItemSelected(Lim/doit/pro/activity/listview/ViewHolder;ILim/doit/pro/model/BaseEntityWithPos;)V

    .line 624
    instance-of v9, v0, Lim/doit/pro/activity/listview/GrouperViewHolder;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 625
    check-cast v9, Lim/doit/pro/activity/listview/GrouperViewHolder;

    iget-boolean v10, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mShowOne:Z

    invoke-virtual {v9, v10}, Lim/doit/pro/activity/listview/GrouperViewHolder;->setShowOne(Z)V

    .line 628
    :cond_1
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowContextAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v2

    .line 629
    .local v2, "isNotShowContext":Z
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowProjectAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v3

    .line 630
    .local v3, "isNotShowProject":Z
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v4

    .line 631
    .local v4, "isNotShowGoal":Z
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v9

    if-lez v9, :cond_8

    .line 632
    .local v5, "isSelectedSomething":Z
    :goto_2
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowProjectIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v6

    .line 633
    .local v6, "isNotShowProjectIcon":Z
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotShowGoalIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z

    move-result v7

    .line 634
    .local v7, "isNotShowGoalIcon":Z
    invoke-virtual/range {v0 .. v7}, Lim/doit/pro/activity/listview/ViewHolder;->setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V

    .line 637
    return-object v0

    .line 602
    .end local v1    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v2    # "isNotShowContext":Z
    .end local v3    # "isNotShowProject":Z
    .end local v4    # "isNotShowGoal":Z
    .end local v5    # "isSelectedSomething":Z
    .end local v6    # "isNotShowProjectIcon":Z
    .end local v7    # "isNotShowGoalIcon":Z
    :cond_2
    if-ne v5, v8, :cond_3

    .line 603
    new-instance v0, Lim/doit/pro/activity/listview/GrouperViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/GrouperViewHolder;-><init>(Landroid/content/Context;)V

    .line 604
    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    if-ne v9, v8, :cond_4

    .line 605
    new-instance v0, Lim/doit/pro/activity/listview/ProjectViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/ProjectViewHolder;-><init>(Landroid/content/Context;)V

    .line 606
    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    if-ne v9, v8, :cond_5

    .line 607
    new-instance v0, Lim/doit/pro/activity/listview/GoalViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/GoalViewHolder;-><init>(Landroid/app/Activity;)V

    .line 608
    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    goto :goto_0

    :cond_5
    const/4 v9, 0x4

    if-ne v9, v8, :cond_6

    .line 609
    new-instance v0, Lim/doit/pro/activity/listview/TaskContextViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/TaskContextViewHolder;-><init>(Landroid/content/Context;)V

    .line 610
    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    goto :goto_0

    :cond_6
    const/4 v9, 0x5

    if-ne v9, v8, :cond_0

    .line 611
    new-instance v0, Lim/doit/pro/activity/listview/TagFilterViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    iget-object v9, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lim/doit/pro/activity/listview/TagFilterViewHolder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "holder":Lim/doit/pro/activity/listview/ViewHolder;
    move-object v9, v0

    .line 612
    check-cast v9, Lim/doit/pro/activity/listview/TagFilterViewHolder;

    .line 613
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onDeleteTagFilterClick()Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->setOnDeleteClickListener(Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p2

    .line 618
    check-cast v0, Lim/doit/pro/activity/listview/ViewHolder;

    goto :goto_1

    .line 631
    .restart local v1    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local v2    # "isNotShowContext":Z
    .restart local v3    # "isNotShowProject":Z
    .restart local v4    # "isNotShowGoal":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x6

    return v0
.end method

.method protected isActivityFinish()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCurrentBoxDraggable()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public isDragable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isNotShowContextAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 995
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v1

    .line 997
    .local v1, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v1, :cond_2

    move v2, v3

    .line 1011
    .end local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    :goto_0
    return v2

    .line 1001
    .restart local v1    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1002
    check-cast p2, Lim/doit/pro/model/Task;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getContextName()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "contextName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1009
    goto :goto_0

    .line 1004
    .end local v0    # "contextName":Ljava/lang/String;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_3
    check-cast p2, Lim/doit/pro/model/Project;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getContextName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contextName":Ljava/lang/String;
    goto :goto_1
.end method

.method protected isNotShowGoalAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method protected isNotShowGoalIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1062
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1063
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 1064
    .local v0, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v0, :cond_1

    .line 1073
    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    :goto_0
    return v2

    .line 1067
    .restart local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "grouperName":Ljava/lang/String;
    const v4, 0x7f0c01b2

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 1069
    goto :goto_0

    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v1    # "grouperName":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1073
    goto :goto_0
.end method

.method protected isNotShowProjectAttr(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1023
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1024
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 1025
    .local v0, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v0, :cond_1

    .line 1034
    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    :goto_0
    return v2

    .line 1028
    .restart local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    check-cast p2, Lim/doit/pro/model/Task;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getProjectName()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "projectName":Ljava/lang/String;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 1030
    goto :goto_0

    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v1    # "projectName":Ljava/lang/String;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    move v2, v3

    .line 1034
    goto :goto_0
.end method

.method protected isNotShowProjectIcon(ILim/doit/pro/model/BaseEntityWithPos;)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1039
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1040
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouper(I)Lim/doit/pro/ui/model/GrouperForListView;

    move-result-object v0

    .line 1041
    .local v0, "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    if-nez v0, :cond_1

    .line 1054
    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    :goto_0
    return v2

    .line 1044
    .restart local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "grouperName":Ljava/lang/String;
    const v4, 0x7f0c00ea

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1046
    const v4, 0x7f0c016f

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 1047
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1048
    const v4, 0x7f0c0170

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 1049
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 1050
    goto :goto_0

    .end local v0    # "grouper":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v1    # "grouperName":Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1054
    goto :goto_0
.end method

.method public isUndraggable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 475
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_2

    :cond_0
    move v1, v2

    .line 488
    :cond_1
    :goto_0
    return v1

    .line 478
    :cond_2
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 479
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 480
    goto :goto_0

    .line 482
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isCurrentBoxDraggable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 485
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->isInDraggableGrouper(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 488
    goto :goto_0
.end method

.method protected isUnselectedable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 980
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemSelectedDone()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 285
    return-void
.end method

.method protected onListItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 890
    invoke-virtual {p0, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    .line 891
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 892
    check-cast v1, Lim/doit/pro/ui/model/GrouperForListView;

    .line 893
    .local v1, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->isFold()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lim/doit/pro/ui/model/GrouperForListView;->setFold(Z)V

    .line 894
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasForViewAndRefreshView()V

    .line 895
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateGroupByStatusListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;

    if-eqz v2, :cond_0

    .line 896
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateGroupByStatusListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;

    .line 897
    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->isFold()Z

    move-result v4

    .line 896
    invoke-interface {v2, v3, v4}, Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;->updateGroupbyStatus(Ljava/lang/String;Z)V

    .line 899
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshView()V

    .line 910
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    :cond_1
    :goto_1
    return-void

    .line 893
    .restart local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v2

    if-nez v2, :cond_1

    .line 905
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 906
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->doListViewItemSelected(Landroid/view/View;I)V

    goto :goto_1

    .line 909
    :cond_4
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->doListViewItemClick(Lim/doit/pro/model/BaseEntityWithPos;)V

    goto :goto_1
.end method

.method public refreshSelectedItems(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, "tempSelectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 206
    iput-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    .line 207
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    invoke-interface {v4}, Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;->onItemUnselected()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 198
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "uniqId":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/BaseEntityWithPos;

    .line 200
    .local v1, "selectedItem":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 202
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "datas"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 215
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    .line 216
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mGroupers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasForViewAndRefreshView()V

    .line 221
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    .line 223
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSubTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;->updateActionBarSubTitle(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->refreshSelectedItems(Ljava/util/ArrayList;)V

    .line 226
    return-void
.end method

.method public setOnDeleteTagFilterListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

    .prologue
    .line 169
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnDeleteTagFilterListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;

    .line 170
    return-void
.end method

.method public setOnItemSelectedListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    .prologue
    .line 161
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnItemSelectedListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;

    .line 162
    return-void
.end method

.method public setOnPullRefreshEnabledListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

    .prologue
    .line 173
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnPullRefreshEnabledListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;

    .line 174
    return-void
.end method

.method public setOnUpdateGroupByStatusListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;

    .prologue
    .line 157
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateGroupByStatusListener:Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;

    .line 158
    return-void
.end method

.method public setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;

    .prologue
    .line 165
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnReloadDataLisetner:Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;

    .line 166
    return-void
.end method

.method public setSelectedItemsAttribute(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 11
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc

    const/16 v8, 0xb

    .line 424
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v1, 0x1

    .line 428
    .local v1, "isChangeTime":Z
    if-eqz p2, :cond_1

    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 429
    const/4 v1, 0x0

    .line 431
    :cond_1
    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 464
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    goto :goto_0

    .line 431
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    .line 432
    .local v2, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v5, v2

    .line 433
    check-cast v5, Lim/doit/pro/model/Task;

    .line 435
    .local v5, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isTrashed()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 436
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v7, v5}, Lim/doit/pro/db/persist/TaskDao;->untrash(Lim/doit/pro/model/Task;)V

    .line 438
    :cond_4
    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v3

    .line 439
    .local v3, "oriStartAt":Ljava/util/Calendar;
    invoke-virtual {v5, p1}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 441
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 442
    .local v0, "date":Ljava/util/Calendar;
    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_5

    .line 443
    if-nez v1, :cond_5

    .line 445
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 444
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 446
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 448
    :cond_5
    invoke-virtual {v5, v0}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 449
    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 450
    invoke-virtual {v5, v10}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v5, v10}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 453
    :cond_6
    invoke-virtual {v5, v3}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 454
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v7, v5}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1

    .line 455
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v3    # "oriStartAt":Ljava/util/Calendar;
    .end local v5    # "task":Lim/doit/pro/model/Task;
    :cond_7
    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v2

    .line 456
    check-cast v4, Lim/doit/pro/model/Project;

    .line 457
    .local v4, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v4}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 458
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v7, v4}, Lim/doit/pro/db/persist/ProjectDao;->untrash(Lim/doit/pro/model/Project;)V

    .line 460
    :cond_8
    invoke-static {v4, p1, p2}, Lim/doit/pro/utils/ProjectUtils;->updateProjectStartAt(Lim/doit/pro/model/Project;Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 461
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v7, v4}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto/16 :goto_1
.end method

.method public setSelectedItemsGoal(Ljava/lang/String;)V
    .locals 5
    .param p1, "goal"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    goto :goto_0

    .line 406
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 407
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v0

    .line 408
    check-cast v2, Lim/doit/pro/model/Task;

    .line 409
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    sget-object v4, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2, v4}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 412
    :cond_3
    invoke-virtual {v2, p1}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1

    .line 414
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 415
    check-cast v1, Lim/doit/pro/model/Project;

    .line 416
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v1, p1}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method public setSelectedItemsPriority(I)V
    .locals 4
    .param p1, "priority"    # I

    .prologue
    .line 375
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    goto :goto_0

    .line 378
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 379
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 380
    check-cast v1, Lim/doit/pro/model/Task;

    .line 381
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v1, p1}, Lim/doit/pro/model/Task;->setPriority(I)V

    .line 382
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method public setSelectedItemsProject(Ljava/lang/String;)V
    .locals 4
    .param p1, "project"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 399
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    goto :goto_0

    .line 392
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 393
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 394
    check-cast v1, Lim/doit/pro/model/Task;

    .line 395
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v1, p1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method public setSelectedItemsTaskContext(Ljava/lang/String;)V
    .locals 5
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v3, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 292
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 293
    check-cast v2, Lim/doit/pro/model/Task;

    .line 294
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2, p1}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1

    .line 296
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 297
    check-cast v1, Lim/doit/pro/model/Project;

    .line 298
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v1, p1}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method public setShowOne(Z)V
    .locals 0
    .param p1, "showOne"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mShowOne:Z

    .line 275
    return-void
.end method

.method public setShowOneAndRefresView(Z)V
    .locals 0
    .param p1, "showOne"    # Z

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setShowOne(Z)V

    .line 279
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasForViewAndRefreshView()V

    .line 280
    return-void
.end method

.method public setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    .prologue
    .line 153
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mOnUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    .line 154
    return-void
.end method

.method public trashItems()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isNotProSelectedItemsContainGoal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 324
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 325
    invoke-direct {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->reloadData()V

    .line 326
    invoke-virtual {p0}, Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V

    goto :goto_0

    .line 313
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 314
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    check-cast v0, Lim/doit/pro/model/Task;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->trashTask(Lim/doit/pro/model/Task;)V

    goto :goto_1

    .line 316
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    check-cast v0, Lim/doit/pro/model/Project;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->trashProject(Lim/doit/pro/model/Project;)V

    goto :goto_1

    .line 318
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_5
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 319
    check-cast v0, Lim/doit/pro/model/Goal;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->trashGoal(Lim/doit/pro/model/Goal;)V

    goto :goto_1

    .line 320
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_6
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    check-cast v0, Lim/doit/pro/model/TaskContext;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->deleteTaskContext(Lim/doit/pro/model/TaskContext;)V

    goto :goto_1
.end method
