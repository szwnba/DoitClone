.class public Lim/doit/pro/controller/TrashTask;
.super Ljava/lang/Object;
.source "TrashTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;
    }
.end annotation


# instance fields
.field private mFinishListener:Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/controller/TrashTask;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lim/doit/pro/controller/TrashTask;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/controller/TrashTask;->mFinishListener:Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lim/doit/pro/controller/TrashTask;->mFinishListener:Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;

    invoke-interface {v0}, Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;->onFinish()V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public trash(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "task"    # Lim/doit/pro/model/Task;
    .param p3, "l"    # Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;

    .prologue
    .line 19
    iput-object p3, p0, Lim/doit/pro/controller/TrashTask;->mFinishListener:Lim/doit/pro/controller/TrashTask$TrashTaskFinishListener;

    .line 20
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v0, p2}, Lim/doit/pro/db/persist/TaskDao;->trash(Lim/doit/pro/model/Task;)V

    .line 21
    invoke-direct {p0}, Lim/doit/pro/controller/TrashTask;->finish()V

    .line 22
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lim/doit/pro/controller/TrashTask$1;

    invoke-direct {v1, p0}, Lim/doit/pro/controller/TrashTask$1;-><init>(Lim/doit/pro/controller/TrashTask;)V

    .line 23
    invoke-static {p1, v0, v1}, Lim/doit/pro/utils/AlertDialogUtils;->showMakeGoalCompleteDialog(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V

    .line 32
    :cond_0
    return-void
.end method
