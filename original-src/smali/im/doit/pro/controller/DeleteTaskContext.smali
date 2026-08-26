.class public Lim/doit/pro/controller/DeleteTaskContext;
.super Ljava/lang/Object;
.source "DeleteTaskContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;,
        Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;

.field private mTaskContext:Lim/doit/pro/model/TaskContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/DeleteTaskContext;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/controller/DeleteTaskContext;)Lim/doit/pro/model/TaskContext;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext;->mTaskContext:Lim/doit/pro/model/TaskContext;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/controller/DeleteTaskContext;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lim/doit/pro/controller/DeleteTaskContext;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext;->mFinishListener:Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext;->mFinishListener:Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;->onFinish()V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/app/Activity;Lim/doit/pro/model/TaskContext;Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "taskContext"    # Lim/doit/pro/model/TaskContext;
    .param p3, "l"    # Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;

    .prologue
    .line 28
    iput-object p1, p0, Lim/doit/pro/controller/DeleteTaskContext;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lim/doit/pro/controller/DeleteTaskContext;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 30
    iput-object p3, p0, Lim/doit/pro/controller/DeleteTaskContext;->mFinishListener:Lim/doit/pro/controller/DeleteTaskContext$DeleteTaskContextFinishListener;

    .line 32
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p2}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->countLiveInTaskContext(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    const v4, 0x7f0c0184

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c0027

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-static {p1, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 39
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/controller/DeleteTaskContext$1;

    invoke-direct {v3, p0}, Lim/doit/pro/controller/DeleteTaskContext$1;-><init>(Lim/doit/pro/controller/DeleteTaskContext;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v3, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;-><init>(Lim/doit/pro/controller/DeleteTaskContext;Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method
