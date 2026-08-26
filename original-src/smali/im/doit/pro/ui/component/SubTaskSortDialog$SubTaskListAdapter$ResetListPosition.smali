.class Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "SubTaskSortDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;
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
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 219
    iput-object p2, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->dataList:Ljava/util/ArrayList;

    .line 220
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 229
    const-wide/16 v2, 0x0

    .line 230
    .local v2, "pos":J
    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 230
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 231
    .local v0, "item":Lim/doit/pro/model/SubTask;
    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v4, v4

    iget-object v6, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v6}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$1(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 232
    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/SubTask;->setPos(J)V

    .line 233
    iget-object v4, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/SubTaskDao;->updatePos(Lim/doit/pro/model/SubTask;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 242
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$3(Lim/doit/pro/ui/component/SubTaskSortDialog;)V

    .line 243
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$1(Lim/doit/pro/ui/component/SubTaskSortDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 244
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$1(Lim/doit/pro/ui/component/SubTaskSortDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 225
    return-void
.end method
