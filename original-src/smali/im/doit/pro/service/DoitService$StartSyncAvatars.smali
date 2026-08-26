.class Lim/doit/pro/service/DoitService$StartSyncAvatars;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DoitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/service/DoitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSyncAvatars"
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
.field final synthetic this$0:Lim/doit/pro/service/DoitService;


# direct methods
.method private constructor <init>(Lim/doit/pro/service/DoitService;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lim/doit/pro/service/DoitService$StartSyncAvatars;->this$0:Lim/doit/pro/service/DoitService;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/service/DoitService;Lim/doit/pro/service/DoitService$StartSyncAvatars;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncAvatars;-><init>(Lim/doit/pro/service/DoitService;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncAvatars;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 198
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncAvatars;->this$0:Lim/doit/pro/service/DoitService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/service/DoitService;->access$5(Lim/doit/pro/service/DoitService;Z)V

    .line 199
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/api/DoitAPI;->syncAvatars()V

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/service/DoitService$StartSyncAvatars;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 205
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncAvatars;->this$0:Lim/doit/pro/service/DoitService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/service/DoitService;->access$5(Lim/doit/pro/service/DoitService;Z)V

    .line 206
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lim/doit/pro/service/DoitService$StartSyncAvatars;->this$0:Lim/doit/pro/service/DoitService;

    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC_FINISH"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lim/doit/pro/service/DoitService;->access$1(Lim/doit/pro/service/DoitService;Ljava/lang/String;Lim/doit/pro/api/Response;)V

    .line 208
    return-void
.end method
