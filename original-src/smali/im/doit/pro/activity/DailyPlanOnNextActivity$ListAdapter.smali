.class Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;
.super Lim/doit/pro/activity/listview/ListViewAdapter;
.source "DailyPlanOnNextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanOnNextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field onMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    .line 205
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    .line 206
    invoke-direct {p0, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 235
    new-instance v0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->onMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    .line 207
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;)Lim/doit/pro/activity/DailyPlanOnNextActivity;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x8

    .line 221
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "viewHolder":Landroid/view/View;
    instance-of v2, v1, Lim/doit/pro/activity/listview/TaskViewHolder;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 223
    check-cast v0, Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 224
    .local v0, "taskViewHolder":Lim/doit/pro/activity/listview/TaskViewHolder;
    iget-object v2, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v2, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v2, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->markTodayBtn:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    if-nez p2, :cond_0

    .line 229
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->onMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    invoke-virtual {v0, v2}, Lim/doit/pro/activity/listview/TaskViewHolder;->setOnMarkTodayClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;)V

    .line 232
    .end local v0    # "taskViewHolder":Lim/doit/pro/activity/listview/TaskViewHolder;
    :cond_0
    return-object v1
.end method

.method public isUndraggable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected isUnselectedable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method
