.class Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRepeaterClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)V
    .locals 0

    .prologue
    .line 1558
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1561
    new-instance v0, Lim/doit/pro/ui/component/SelectRepeatDialog;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectRepeatDialog;-><init>(Landroid/app/Activity;)V

    .line 1562
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectRepeatDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRepeatDialog;->setOnSelectFinishListner(Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;)V

    .line 1602
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V

    .line 1603
    return-void
.end method
