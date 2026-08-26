.class Lim/doit/pro/service/DoitService$StartPullGcal;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DoitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/service/DoitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPullGcal"
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
.field final synthetic this$0:Lim/doit/pro/service/DoitService;


# direct methods
.method private constructor <init>(Lim/doit/pro/service/DoitService;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lim/doit/pro/service/DoitService$StartPullGcal;->this$0:Lim/doit/pro/service/DoitService;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/service/DoitService;Lim/doit/pro/service/DoitService$StartPullGcal;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lim/doit/pro/service/DoitService$StartPullGcal;-><init>(Lim/doit/pro/service/DoitService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 164
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartPullGcal;->this$0:Lim/doit/pro/service/DoitService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/service/DoitService;->access$3(Lim/doit/pro/service/DoitService;Z)V

    .line 165
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/api/DoitAPI;->syncGcal()Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartPullGcal;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/api/Response;

    .prologue
    .line 170
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartPullGcal;->this$0:Lim/doit/pro/service/DoitService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/service/DoitService;->access$3(Lim/doit/pro/service/DoitService;Z)V

    .line 171
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartPullGcal;->this$0:Lim/doit/pro/service/DoitService;

    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC_GCAL_FINISH"

    invoke-static {v0, v1, p1}, Lim/doit/pro/service/DoitService;->access$1(Lim/doit/pro/service/DoitService;Ljava/lang/String;Lim/doit/pro/api/Response;)V

    .line 173
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartPullGcal;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method
