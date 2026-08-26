.class Lim/doit/pro/activity/TaskDetailFragment$7;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment;->focusOnTitle()V
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
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$7;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$7;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$27(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 1706
    return-void
.end method
