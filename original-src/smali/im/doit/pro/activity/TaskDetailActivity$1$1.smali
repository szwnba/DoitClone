.class Lim/doit/pro/activity/TaskDetailActivity$1$1;
.super Ljava/lang/Object;
.source "TaskDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$1$1;->this$1:Lim/doit/pro/activity/TaskDetailActivity$1;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$1$1;->this$1:Lim/doit/pro/activity/TaskDetailActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity$1;->access$0(Lim/doit/pro/activity/TaskDetailActivity$1;)Lim/doit/pro/activity/TaskDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailActivity$1$1;->this$1:Lim/doit/pro/activity/TaskDetailActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailActivity$1;->access$0(Lim/doit/pro/activity/TaskDetailActivity$1;)Lim/doit/pro/activity/TaskDetailActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailActivity;->access$4(Lim/doit/pro/activity/TaskDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 264
    return-void
.end method
