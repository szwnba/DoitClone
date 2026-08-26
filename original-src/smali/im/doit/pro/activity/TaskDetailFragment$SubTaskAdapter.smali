.class Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubTaskAdapter"
.end annotation


# instance fields
.field private mSubTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p2, "subTasks":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/model/SubTask;>;"
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 619
    iput-object p2, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->mSubTasks:Ljava/util/List;

    .line 620
    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;IZ)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->completeSubTask(IZ)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;I)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->deleteSubTask(I)V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->clearFocusAndUpdate(Landroid/widget/EditText;)V

    return-void
.end method

.method private clearFocusAndUpdate(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/EditText;

    .prologue
    .line 699
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$3(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 704
    :cond_0
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$4(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->updateSubtask(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private completeSubTask(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isComplete"    # Z

    .prologue
    .line 723
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$3(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 724
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 725
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    if-eqz p2, :cond_1

    .line 726
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    .line 738
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$4(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 739
    return-void

    .line 729
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;->complete(Lim/doit/pro/model/SubTask;)V

    goto :goto_0

    .line 732
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    goto :goto_0

    .line 735
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;->uncomplete(Lim/doit/pro/model/SubTask;)V

    goto :goto_0
.end method

.method private deleteSubTask(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 742
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$3(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 743
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 744
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setDeleted(Ljava/util/Calendar;)V

    .line 745
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 746
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/SubTaskDao;->delete(Ljava/lang/String;)V

    .line 749
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$4(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 750
    return-void
.end method

.method private onSubtaskCompleteListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;
    .locals 1

    .prologue
    .line 639
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;)V

    return-object v0
.end method

.method private onSubtaskDeleteListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;
    .locals 1

    .prologue
    .line 653
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$2;-><init>(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;)V

    return-object v0
.end method

.method private onSubtaskSaveListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$3;-><init>(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;)V

    return-object v0
.end method

.method private updateSubtask(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$4(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 720
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 717
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;->updateAndSaveLog(Lim/doit/pro/model/SubTask;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->mSubTasks:Ljava/util/List;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->mSubTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/SubTask;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->mSubTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->getItem(I)Lim/doit/pro/model/SubTask;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 687
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 629
    new-instance v0, Lim/doit/pro/ui/component/SubTaskListItem;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->getItem(I)Lim/doit/pro/model/SubTask;

    move-result-object v3

    .line 629
    invoke-direct {v0, v1, v2, v3, p1}, Lim/doit/pro/ui/component/SubTaskListItem;-><init>(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/model/SubTask;I)V

    .line 632
    .local v0, "viewHolder":Lim/doit/pro/ui/component/SubTaskListItem;
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->onSubtaskCompleteListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setOnSubTaskCompleteListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;)V

    .line 633
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->onSubtaskDeleteListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setOnSubTaskDeleteListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;)V

    .line 634
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->onSubtaskSaveListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->setOnSubTaskSaveListener(Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;)V

    .line 635
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isNotEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 695
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 625
    return-void
.end method
