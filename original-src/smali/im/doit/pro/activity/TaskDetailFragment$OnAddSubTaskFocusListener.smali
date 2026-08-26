.class Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAddSubTaskFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;)V
    .locals 0

    .prologue
    .line 1652
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1655
    if-nez p2, :cond_0

    .line 1656
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->access$23(Lim/doit/pro/activity/TaskDetailFragment;Landroid/widget/EditText;)V

    .line 1658
    :cond_0
    return-void
.end method
