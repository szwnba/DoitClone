.class public Lim/doit/pro/activity/listview/GoalViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "GoalViewHolder.java"


# instance fields
.field public completeBtn:Landroid/widget/ImageView;

.field public goalIcon:Landroid/widget/ImageView;

.field public nameTV:Landroid/widget/TextView;

.field public notesIV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f030084

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->goalIcon:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->nameTV:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->notesIV:Landroid/widget/ImageView;

    .line 27
    iget-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/GoalViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/GoalViewHolder$1;-><init>(Lim/doit/pro/activity/listview/GoalViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method private setNoteViewContent(Lim/doit/pro/model/Goal;)V
    .locals 2
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 57
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->notesIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->notesIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V
    .locals 3
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "isNotShowContext"    # Z
    .param p3, "isNotShowProject"    # Z
    .param p4, "isNotShowGoal"    # Z
    .param p5, "isSomeSelected"    # Z
    .param p6, "isNotShowProjectIcon"    # Z
    .param p7, "isNotShowGoalIcon"    # Z

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 50
    .local v0, "goal":Lim/doit/pro/model/Goal;
    iget-object v2, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->goalIcon:Landroid/widget/ImageView;

    if-eqz p7, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lim/doit/pro/activity/listview/GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 53
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/GoalViewHolder;->setNoteViewContent(Lim/doit/pro/model/Goal;)V

    .line 54
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
