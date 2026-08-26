.class public Lim/doit/pro/controller/CompleteGoal;
.super Ljava/lang/Object;
.source "CompleteGoal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;,
        Lim/doit/pro/controller/CompleteGoal$DoComplete;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;

.field private mGoal:Lim/doit/pro/model/Goal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/CompleteGoal;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal;->mGoal:Lim/doit/pro/model/Goal;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/controller/CompleteGoal;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteGoal;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal;->mFinishListener:Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal;->mFinishListener:Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;->onFinish()V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public complete(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "goal"    # Lim/doit/pro/model/Goal;
    .param p3, "l"    # Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;

    .prologue
    .line 28
    iput-object p1, p0, Lim/doit/pro/controller/CompleteGoal;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lim/doit/pro/controller/CompleteGoal;->mGoal:Lim/doit/pro/model/Goal;

    .line 30
    iput-object p3, p0, Lim/doit/pro/controller/CompleteGoal;->mFinishListener:Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;

    .line 31
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v4, p0, Lim/doit/pro/controller/CompleteGoal;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v1

    .line 32
    .local v1, "count":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v4, p0, Lim/doit/pro/controller/CompleteGoal;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33
    if-lez v1, :cond_0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    const v4, 0x7f0c01b6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c003c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c003b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-static {p1, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 39
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/controller/CompleteGoal$1;

    invoke-direct {v3, p0}, Lim/doit/pro/controller/CompleteGoal$1;-><init>(Lim/doit/pro/controller/CompleteGoal;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v3

    .line 45
    new-instance v4, Lim/doit/pro/controller/CompleteGoal$2;

    invoke-direct {v4, p0}, Lim/doit/pro/controller/CompleteGoal$2;-><init>(Lim/doit/pro/controller/CompleteGoal;)V

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v4, p0, Lim/doit/pro/controller/CompleteGoal;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/GoalDao;->complete(Lim/doit/pro/model/Goal;)V

    .line 55
    invoke-direct {p0}, Lim/doit/pro/controller/CompleteGoal;->finish()V

    goto :goto_0
.end method
