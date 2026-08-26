.class Lim/doit/pro/activity/TaskDetailFragment$2;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment;->onTaskPropertiesChange()Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$2;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "isChanged"    # Z

    .prologue
    .line 1138
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$2;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$2;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$2;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->onTaskChange(Lim/doit/pro/model/Task;)V

    .line 1141
    :cond_0
    return-void
.end method
