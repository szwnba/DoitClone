.class public Lim/doit/pro/controller/TrashGoal;
.super Ljava/lang/Object;
.source "TrashGoal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/TrashGoal$DoTrashGoal;,
        Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;

.field private mGoal:Lim/doit/pro/model/Goal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/TrashGoal;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/controller/TrashGoal;)Lim/doit/pro/model/Goal;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal;->mGoal:Lim/doit/pro/model/Goal;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/controller/TrashGoal;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lim/doit/pro/controller/TrashGoal;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal;->mFinishListener:Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal;->mFinishListener:Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;->onFinish()V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public trash(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "goal"    # Lim/doit/pro/model/Goal;
    .param p3, "l"    # Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;

    .prologue
    .line 28
    iput-object p1, p0, Lim/doit/pro/controller/TrashGoal;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lim/doit/pro/controller/TrashGoal;->mGoal:Lim/doit/pro/model/Goal;

    .line 30
    iput-object p3, p0, Lim/doit/pro/controller/TrashGoal;->mFinishListener:Lim/doit/pro/controller/TrashGoal$TrashGoalFinishListener;

    .line 32
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p2}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, "count":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {p2}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 34
    if-lez v1, :cond_0

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    .line 37
    const v4, 0x7f0c01b5

    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c0027

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-static {p1, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 42
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/controller/TrashGoal$1;

    invoke-direct {v3, p0}, Lim/doit/pro/controller/TrashGoal$1;-><init>(Lim/doit/pro/controller/TrashGoal;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v3, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;-><init>(Lim/doit/pro/controller/TrashGoal;Lim/doit/pro/controller/TrashGoal$DoTrashGoal;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 52
    invoke-direct {p0}, Lim/doit/pro/controller/TrashGoal;->finish()V

    goto :goto_0
.end method
