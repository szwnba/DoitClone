.class public Lim/doit/pro/activity/listview/ProjectViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "ProjectViewHolder.java"


# instance fields
.field public attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

.field public completeBtn:Landroid/widget/ImageView;

.field public contextTV:Landroid/widget/TextView;

.field public countTV:Landroid/widget/TextView;

.field public endAtTV:Landroid/widget/TextView;

.field public goalTV:Landroid/widget/TextView;

.field public nameTV:Landroid/widget/TextView;

.field public notesIV:Landroid/widget/ImageView;

.field public projectIcon:Landroid/widget/ImageView;

.field public startAtTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 31
    const v0, 0x7f030086

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->projectIcon:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->notesIV:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->countTV:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 38
    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->startAtTV:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->contextTV:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->endAtTV:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/ProjectViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/ProjectViewHolder$1;-><init>(Lim/doit/pro/activity/listview/ProjectViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method private setContextViewContent(Lim/doit/pro/model/Project;Z)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;
    .param p2, "isNotShowContext"    # Z

    .prologue
    .line 128
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getContextName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->isDead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    if-eqz p2, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->contextTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->contextTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->contextTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getContextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setCountViewContent(Lim/doit/pro/model/Project;)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "count":I
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 84
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countCompletedByProject(Ljava/lang/String;)I

    move-result v0

    .line 92
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->countTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 87
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countTrashedByProject(Ljava/lang/String;)I

    move-result v0

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 90
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->countNotCompletedByProject(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private setEndAtViewContent(Lim/doit/pro/model/Project;)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 138
    invoke-static {p1}, Lim/doit/pro/activity/utils/ProjectUIHelper;->formatEndAtForList(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "endAt":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->endAtTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->endAtTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->endAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->endAtTV:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ProjectUIHelper;->getEndAtColorForList(Lim/doit/pro/model/Project;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setGoalViewContent(Lim/doit/pro/model/Project;Z)V
    .locals 2
    .param p1, "project"    # Lim/doit/pro/model/Project;
    .param p2, "isNotShowGoal"    # Z

    .prologue
    .line 118
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setNoteViewContent(Lim/doit/pro/model/Project;)V
    .locals 2
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 96
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getJsonMedias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getJsonMedias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->notesIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->notesIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStartAtViewContent(Lim/doit/pro/model/Project;)V
    .locals 3
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 107
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 106
    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ProjectUIHelper;->formatStartAtForList(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "startAt":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->startAtTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->startAtTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ProjectUIHelper;->getStartAtColorForList(Lim/doit/pro/model/Project;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V
    .locals 5
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "isNotShowContext"    # Z
    .param p3, "isNotShowProject"    # Z
    .param p4, "isNotShowGoal"    # Z
    .param p5, "isSomeSelected"    # Z
    .param p6, "isNotShowProjectIcon"    # Z
    .param p7, "isNotShowGoalIcon"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 64
    move-object v0, p1

    check-cast v0, Lim/doit/pro/model/Project;

    .line 65
    .local v0, "project":Lim/doit/pro/model/Project;
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 66
    iget-object v4, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->projectIcon:Landroid/widget/ImageView;

    if-eqz p6, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setCountViewContent(Lim/doit/pro/model/Project;)V

    .line 70
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setNoteViewContent(Lim/doit/pro/model/Project;)V

    .line 71
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setStartAtViewContent(Lim/doit/pro/model/Project;)V

    .line 72
    invoke-direct {p0, v0, p4}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setGoalViewContent(Lim/doit/pro/model/Project;Z)V

    .line 73
    invoke-direct {p0, v0, p2}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setContextViewContent(Lim/doit/pro/model/Project;Z)V

    .line 74
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/ProjectViewHolder;->setEndAtViewContent(Lim/doit/pro/model/Project;)V

    .line 75
    iget-object v1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 76
    iget-object v4, p0, Lim/doit/pro/activity/listview/ProjectViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->isChildrenVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->setVisibility(I)V

    .line 78
    return-void

    :cond_0
    move v1, v3

    .line 67
    goto :goto_0

    :cond_1
    move v3, v2

    .line 77
    goto :goto_1
.end method
