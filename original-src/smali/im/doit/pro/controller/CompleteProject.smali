.class public Lim/doit/pro/controller/CompleteProject;
.super Ljava/lang/Object;
.source "CompleteProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;,
        Lim/doit/pro/controller/CompleteProject$DoCompleteProject;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;

.field private mProject:Lim/doit/pro/model/Project;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/CompleteProject;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/controller/CompleteProject;)Lim/doit/pro/model/Project;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mProject:Lim/doit/pro/model/Project;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/controller/CompleteProject;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteProject;->completeProject()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/controller/CompleteProject;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteProject;->finish()V

    return-void
.end method

.method private completeProject()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->complete(Lim/doit/pro/model/Project;)V

    .line 104
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteProject;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Lim/doit/pro/controller/CompleteProject$3;

    invoke-direct {v2, p0}, Lim/doit/pro/controller/CompleteProject$3;-><init>(Lim/doit/pro/controller/CompleteProject;)V

    .line 105
    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/AlertDialogUtils;->showMakeGoalCompleteDialog(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mFinishListener:Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject;->mFinishListener:Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;->onFinish()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public complete(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "project"    # Lim/doit/pro/model/Project;
    .param p3, "l"    # Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;

    .prologue
    .line 32
    iput-object p1, p0, Lim/doit/pro/controller/CompleteProject;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lim/doit/pro/controller/CompleteProject;->mProject:Lim/doit/pro/model/Project;

    .line 34
    iput-object p3, p0, Lim/doit/pro/controller/CompleteProject;->mFinishListener:Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;

    .line 35
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

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
    const-string v3, "dialog_message_str"

    const v4, 0x7f0c0186

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c003c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c003b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-static {p1, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 42
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/controller/CompleteProject$1;

    invoke-direct {v3, p0}, Lim/doit/pro/controller/CompleteProject$1;-><init>(Lim/doit/pro/controller/CompleteProject;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v3

    .line 48
    new-instance v4, Lim/doit/pro/controller/CompleteProject$2;

    invoke-direct {v4, p0}, Lim/doit/pro/controller/CompleteProject$2;-><init>(Lim/doit/pro/controller/CompleteProject;)V

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteProject;->completeProject()V

    .line 59
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteProject;->finish()V

    goto :goto_0
.end method
