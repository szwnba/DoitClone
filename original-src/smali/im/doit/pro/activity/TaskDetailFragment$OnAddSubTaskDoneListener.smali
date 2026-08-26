.class Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAddSubTaskDoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1672
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;)V
    .locals 0

    .prologue
    .line 1672
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 1676
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->access$23(Lim/doit/pro/activity/TaskDetailFragment;Landroid/widget/EditText;)V

    .line 1677
    return-void
.end method
