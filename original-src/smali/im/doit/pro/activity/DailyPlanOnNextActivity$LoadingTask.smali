.class Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DailyPlanOnNextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanOnNextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$1(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 3
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$2(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 169
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$3(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$4(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 176
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$5(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$6(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V

    .line 178
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$3(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$4(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 159
    return-void
.end method
