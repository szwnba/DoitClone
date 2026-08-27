.class public Lim/doit/pro/asynctask/CheckVersion;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "CheckVersion.java"


# annotations
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
.field private isBackground:Z

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    .line 22
    iput-object p1, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isBackground"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    .line 26
    iput-object p1, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    .line 27
    iput-boolean p2, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    .line 28
    return-void
.end method

.method private needUpdate(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public closeView()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 32
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lim/doit/pro/api/DoitAPI;->getNewestVersion(Landroid/content/Context;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/asynctask/CheckVersion;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 9
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lim/doit/pro/utils/LocalSettings;->updateCheckVersionTime(J)V

    .line 46
    invoke-virtual {p0}, Lim/doit/pro/asynctask/CheckVersion;->closeView()V

    .line 47
    if-nez p1, :cond_1

    .line 48
    iget-boolean v6, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    if-nez v6, :cond_0

    .line 49
    const v6, 0x7f0c0086

    invoke-static {v6}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    invoke-static {p1}, Lim/doit/pro/utils/JsonUtils;->parseVersion(Lim/doit/pro/api/Response;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "version":Ljava/lang/String;
    invoke-direct {p0, v5}, Lim/doit/pro/asynctask/CheckVersion;->needUpdate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    iget-object v6, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    .line 57
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static {v6, v7, v5}, Lim/doit/pro/utils/AlertDialogUtils;->alertNewVersionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-boolean v6, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    if-nez v6, :cond_0

    .line 59
    iget-object v6, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lim/doit/pro/utils/AlertDialogUtils;->showCurrentVersionIsNewestDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 61
    .end local v5    # "version":Ljava/lang/String;
    :cond_3
    iget-boolean v6, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    if-nez v6, :cond_0

    .line 62
    iget v0, p1, Lim/doit/pro/api/Response;->code:I

    .line 63
    .local v0, "code":I
    const/4 v1, 0x0

    .line 65
    .local v1, "doitErrorCode":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v6

    .line 66
    iget-object v7, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    const-class v8, Lim/doit/pro/model/ResponseErrorResult;

    .line 65
    invoke-virtual {v6, v7, v8}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/ResponseErrorResult;

    .line 67
    .local v4, "result":Lim/doit/pro/model/ResponseErrorResult;
    invoke-virtual {v4}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .end local v4    # "result":Lim/doit/pro/model/ResponseErrorResult;
    :goto_1
    iget-object v6, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    .line 71
    invoke-static {v6, v0, v1}, Lim/doit/pro/utils/AlertDialogUtils;->alertSyncCommonErrorDialog(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v3

    .line 73
    .local v3, "isAlert":Z
    if-nez v3, :cond_0

    .line 74
    iget-object v6, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lim/doit/pro/utils/AlertDialogUtils;->showCurrentVersionIsNewestDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    .end local v3    # "isAlert":Z
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/asynctask/CheckVersion;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 37
    iget-boolean v0, p0, Lim/doit/pro/asynctask/CheckVersion;->isBackground:Z

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lim/doit/pro/asynctask/CheckVersion;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0124

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Z)Lim/doit/pro/ui/component/DProgressDialog;

    goto :goto_0
.end method
