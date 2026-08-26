.class Lim/doit/pro/activity/TaskDetailFragment$6;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment;->initNoteListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1210
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$12(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$6;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->onTaskChange(Lim/doit/pro/model/Task;)V

    .line 1216
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1206
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1201
    return-void
.end method
