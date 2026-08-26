.class public Lim/doit/pro/controller/TrashProject;
.super Ljava/lang/Object;
.source "TrashProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/TrashProject$DoTrashProject;,
        Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;

.field private mProject:Lim/doit/pro/model/Project;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/TrashProject;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/controller/TrashProject;)Lim/doit/pro/model/Project;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mProject:Lim/doit/pro/model/Project;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/controller/TrashProject;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lim/doit/pro/controller/TrashProject;->trashProject()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/controller/TrashProject;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lim/doit/pro/controller/TrashProject;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mFinishListener:Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mFinishListener:Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;->onFinish()V

    .line 62
    :cond_0
    return-void
.end method

.method private trashProject()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/TrashProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->trash(Lim/doit/pro/model/Project;)V

    .line 90
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject;->mActivity:Landroid/app/Activity;

    .line 92
    iget-object v1, p0, Lim/doit/pro/controller/TrashProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lim/doit/pro/controller/TrashProject$2;

    invoke-direct {v2, p0}, Lim/doit/pro/controller/TrashProject$2;-><init>(Lim/doit/pro/controller/TrashProject;)V

    .line 91
    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/AlertDialogUtils;->showMakeGoalCompleteDialog(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public trash(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "project"    # Lim/doit/pro/model/Project;
    .param p3, "l"    # Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/controller/TrashProject;->mActivity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lim/doit/pro/controller/TrashProject;->mProject:Lim/doit/pro/model/Project;

    .line 33
    iput-object p3, p0, Lim/doit/pro/controller/TrashProject;->mFinishListener:Lim/doit/pro/controller/TrashProject$TrashProjectFinishListener;

    .line 34
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 35
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->countLiveInProject(Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    .line 39
    const v4, 0x7f0c0185

    .line 38
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c0027

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-static {p1, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 44
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/controller/TrashProject$1;

    invoke-direct {v3, p0}, Lim/doit/pro/controller/TrashProject$1;-><init>(Lim/doit/pro/controller/TrashProject;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v3, Lim/doit/pro/controller/TrashProject$DoTrashProject;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/controller/TrashProject$DoTrashProject;-><init>(Lim/doit/pro/controller/TrashProject;Lim/doit/pro/controller/TrashProject$DoTrashProject;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lim/doit/pro/controller/TrashProject$DoTrashProject;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 54
    invoke-direct {p0}, Lim/doit/pro/controller/TrashProject;->finish()V

    goto :goto_0
.end method
