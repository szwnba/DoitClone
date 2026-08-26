.class public Lim/doit/pro/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ContextExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/TaskContextDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/TaskContext;

    move-result-object v0

    .line 58
    .local v0, "dbContext":Lim/doit/pro/model/TaskContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const v1, 0x7f0c0088

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 60
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static GoalExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/GoalDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Goal;

    move-result-object v0

    .line 49
    .local v0, "dbGoal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const v1, 0x7f0c01b7

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 51
    const/4 v1, 0x1

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ProjectExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/ProjectDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Project;

    move-result-object v0

    .line 40
    .local v0, "dbProject":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const v1, 0x7f0c0183

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 42
    const/4 v1, 0x1

    .line 44
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static show(I)V
    .locals 1
    .param p0, "textRes"    # I

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lim/doit/pro/utils/ToastUtils;->showMessage(II)V

    .line 24
    return-void
.end method

.method public static show(II)V
    .locals 0
    .param p0, "textRes"    # I
    .param p1, "time"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lim/doit/pro/utils/ToastUtils;->showMessage(II)V

    .line 32
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1
    .param p0, "textRes"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lim/doit/pro/utils/ToastUtils;->showMessage(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method private static showMessage(II)V
    .locals 2
    .param p0, "text"    # I
    .param p1, "time"    # I

    .prologue
    .line 76
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method private static showMessage(III)V
    .locals 3
    .param p0, "text"    # I
    .param p1, "time"    # I
    .param p2, "gravity"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method

.method private static showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "time"    # I

    .prologue
    .line 81
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 82
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

.method public static showNetworkNotReady()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lim/doit/pro/utils/NetworkUtils;->isNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const v0, 0x7f0c0085

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showToast(III)V
    .locals 0
    .param p0, "textRes"    # I
    .param p1, "time"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lim/doit/pro/utils/ToastUtils;->showMessage(III)V

    .line 36
    return-void
.end method

.method public static tagExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/TagDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Tag;

    move-result-object v0

    .line 67
    .local v0, "dbTag":Lim/doit/pro/model/Tag;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Tag;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const v1, 0x7f0c01a2

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 69
    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
