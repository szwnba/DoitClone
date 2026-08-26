.class Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAddEvernoteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;)V
    .locals 0

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method private showAttachFromEvernoteDailog()V
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1272
    const-class v2, Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 1271
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1274
    const/16 v2, 0x2711

    .line 1273
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1263
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 1268
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;->showAttachFromEvernoteDailog()V

    goto :goto_0
.end method
