.class Lim/doit/pro/service/DoitService$StartSyncMany;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DoitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/service/DoitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSyncMany"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lim/doit/pro/api/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private isAfterDBUpgrade:Z

.field final synthetic this$0:Lim/doit/pro/service/DoitService;


# direct methods
.method private constructor <init>(Lim/doit/pro/service/DoitService;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->this$0:Lim/doit/pro/service/DoitService;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->isAfterDBUpgrade:Z

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/service/DoitService;Lim/doit/pro/service/DoitService$StartSyncMany;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncMany;-><init>(Lim/doit/pro/service/DoitService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-wide/16 v4, 0x0

    .line 130
    iget-object v2, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->this$0:Lim/doit/pro/service/DoitService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lim/doit/pro/service/DoitService;->access$0(Lim/doit/pro/service/DoitService;Z)V

    .line 131
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/api/DoitAPI;->sync()Lim/doit/pro/api/Response;

    move-result-object v1

    .line 132
    .local v1, "response":Lim/doit/pro/api/Response;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isDownloadAllAfterDBUpgrade()Z

    move-result v2

    iput-boolean v2, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->isAfterDBUpgrade:Z

    .line 134
    iget-boolean v2, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->isAfterDBUpgrade:Z

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "max_usn"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    invoke-static {v4, v5}, Lim/doit/pro/activity/DoitApp;->updateMaxUSN(J)V

    .line 140
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/api/DoitAPI;->sync()Lim/doit/pro/api/Response;

    move-result-object v1

    .line 143
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncMany;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 3
    .param p1, "result"    # Lim/doit/pro/api/Response;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 149
    iget-boolean v0, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->isAfterDBUpgrade:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v2}, Lim/doit/pro/utils/PrefUtils;->downloadAllAfterDBUpgrade(Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->this$0:Lim/doit/pro/service/DoitService;

    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC_FINISH"

    invoke-static {v0, v1, p1}, Lim/doit/pro/service/DoitService;->access$1(Lim/doit/pro/service/DoitService;Ljava/lang/String;Lim/doit/pro/api/Response;)V

    .line 154
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->this$0:Lim/doit/pro/service/DoitService;

    invoke-static {v0}, Lim/doit/pro/service/DoitService;->access$2(Lim/doit/pro/service/DoitService;)V

    .line 155
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncMany;->this$0:Lim/doit/pro/service/DoitService;

    invoke-static {v0, v2}, Lim/doit/pro/service/DoitService;->access$0(Lim/doit/pro/service/DoitService;Z)V

    .line 156
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncMany;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method
