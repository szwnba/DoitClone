.class Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SubTaskSortDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubTaskViewHolder"
.end annotation


# instance fields
.field public completeBtn:Landroid/widget/ImageView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->this$1:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    .line 142
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 143
    const v0, 0x7f030089

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 145
    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0b0191

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->titleView:Landroid/widget/TextView;

    .line 147
    return-void
.end method


# virtual methods
.method public setViewContent(ILim/doit/pro/model/SubTask;)V
    .locals 2
    .param p1, "postion"    # I
    .param p2, "item"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 150
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lim/doit/pro/model/SubTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lim/doit/pro/model/SubTask;->isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 153
    return-void
.end method
