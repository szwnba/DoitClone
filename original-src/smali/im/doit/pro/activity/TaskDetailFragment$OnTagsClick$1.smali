.class Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1536
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setTags(Ljava/util/ArrayList;)V

    .line 1537
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1538
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$21(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1539
    return-void
.end method
