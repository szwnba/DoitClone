.class Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetListPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1194
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 1195
    iput-object p2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->dataList:Ljava/util/ArrayList;

    .line 1196
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1205
    const-wide/16 v2, 0x0

    .line 1206
    .local v2, "pos":J
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1221
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->updateAndSendReminder()V

    .line 1222
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 1224
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 1225
    const/4 v1, 0x0

    return-object v1

    .line 1206
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 1207
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v4, v4

    iget-object v6, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$2(Lim/doit/pro/activity/listview/ListViewAdapter;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 1208
    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/BaseEntityWithPos;->setPos(J)V

    .line 1209
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1210
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    check-cast v0, Lim/doit/pro/model/Task;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/TaskDao;->updatePos(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 1211
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1212
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    check-cast v0, Lim/doit/pro/model/Project;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/ProjectDao;->updatePos(Lim/doit/pro/model/Project;)V

    goto :goto_0

    .line 1213
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1214
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    check-cast v0, Lim/doit/pro/model/Goal;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/GoalDao;->updatePos(Lim/doit/pro/model/Goal;)V

    goto :goto_0

    .line 1215
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTaskContext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1216
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 1217
    check-cast v0, Lim/doit/pro/model/TaskContext;

    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/TaskContextDao;->updatePos(Lim/doit/pro/model/TaskContext;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1230
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 1231
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1232
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$ResetListPosition;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 1201
    return-void
.end method
