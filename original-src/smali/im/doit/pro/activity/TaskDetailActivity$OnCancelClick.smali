.class Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;
.super Ljava/lang/Object;
.source "TaskDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity;->access$0(Lim/doit/pro/activity/TaskDetailActivity;)Lim/doit/pro/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 322
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity;->access$1(Lim/doit/pro/activity/TaskDetailActivity;)V

    .line 323
    return-void
.end method
