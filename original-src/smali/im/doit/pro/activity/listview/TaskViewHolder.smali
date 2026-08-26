.class public Lim/doit/pro/activity/listview/TaskViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "TaskViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;,
        Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;,
        Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;
    }
.end annotation


# instance fields
.field public attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

.field public avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field public contextTV:Landroid/widget/TextView;

.field public doitNowBtn:Landroid/widget/ImageView;

.field public endAtTV:Landroid/widget/TextView;

.field protected mOnDoitnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

.field private mOnMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

.field protected mOnNotnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

.field public markTodayBtn:Landroid/widget/ImageView;

.field public notesIV:Landroid/widget/ImageView;

.field public priorityIV:Landroid/widget/ImageView;

.field public projectTV:Landroid/widget/TextView;

.field public repeatIV:Landroid/widget/ImageView;

.field public startAtTV:Landroid/widget/TextView;

.field public titleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f03008b

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->priorityIV:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->markTodayBtn:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->titleTV:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->notesIV:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 49
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->repeatIV:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->contextTV:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->projectTV:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->endAtTV:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 55
    invoke-direct {p0}, Lim/doit/pro/activity/listview/TaskViewHolder;->initListener()V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/listview/TaskViewHolder;)Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/TaskViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/TaskViewHolder$1;-><init>(Lim/doit/pro/activity/listview/TaskViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/TaskViewHolder$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/TaskViewHolder$2;-><init>(Lim/doit/pro/activity/listview/TaskViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->markTodayBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/TaskViewHolder$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/TaskViewHolder$3;-><init>(Lim/doit/pro/activity/listview/TaskViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private setContextViewContent(Lim/doit/pro/model/Task;Z)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "isNotShowContext"    # Z

    .prologue
    .line 197
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContextName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isDead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    if-eqz p2, :cond_1

    .line 199
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->contextTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->contextTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->contextTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setEndAtViewContent(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 216
    invoke-static {p1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatEndAtForList(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "endAt":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->endAtTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->endAtTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->endAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->endAtTV:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/TaskUIHelper;->getEndAtColorForList(Lim/doit/pro/model/Task;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setNoteViewContent(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 167
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonMedias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonMedias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->notesIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->notesIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setProjectViewContent(Lim/doit/pro/model/Task;Z)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "isNotShowProject"    # Z

    .prologue
    .line 207
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->projectTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->projectTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->projectTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRepeatViewContent(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 177
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->repeatIV:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSenderViewContent(Lim/doit/pro/model/Task;)V
    .locals 6
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isSent()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    iget-object v4, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setVisibility(I)V

    .line 237
    const/4 v0, 0x0

    .line 240
    .local v0, "avatarImg":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isSent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSenderEmail()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "senderName":Ljava/lang/String;
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSender()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "userId":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v4, v3}, Lim/doit/pro/db/persist/ContactDao;->findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v1

    .line 249
    .local v1, "contact":Lim/doit/pro/model/Contact;
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 254
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .end local v1    # "contact":Lim/doit/pro/model/Contact;
    :cond_2
    iget-object v4, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-virtual {v4, v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v2    # "senderName":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/AssignmentItem;

    invoke-virtual {v4}, Lim/doit/pro/model/AssignmentItem;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2    # "senderName":Ljava/lang/String;
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/AssignmentItem;

    invoke-virtual {v4}, Lim/doit/pro/model/AssignmentItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "userId":Ljava/lang/String;
    goto :goto_1
.end method

.method private setStartAtViewContent(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/16 v2, 0x8

    .line 181
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {p1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatStartAtForList(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "startAt":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->startAtTV:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/TaskUIHelper;->getStartAtColorForList(Lim/doit/pro/model/Task;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setCompleteViewContent(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 164
    return-void
.end method

.method public setDoitNowViewContent(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 158
    return-void
.end method

.method public setOnDoitnowClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnDoitnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

    .line 60
    return-void
.end method

.method public setOnMarkTodayClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    .prologue
    .line 67
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnMarkTodayClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    .line 68
    return-void
.end method

.method public setOnNotnowClickListener(Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnNotnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

    .line 64
    return-void
.end method

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
    .line 129
    move-object v0, p1

    check-cast v0, Lim/doit/pro/model/Task;

    .line 130
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->priorityIV:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v2

    .line 130
    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->getPriorityColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    if-eqz p5, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setDoitNowViewContent(Lim/doit/pro/model/Task;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->markTodayBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setNoteViewContent(Lim/doit/pro/model/Task;)V

    .line 142
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setRepeatViewContent(Lim/doit/pro/model/Task;)V

    .line 143
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setStartAtViewContent(Lim/doit/pro/model/Task;)V

    .line 144
    invoke-direct {p0, v0, p2}, Lim/doit/pro/activity/listview/TaskViewHolder;->setContextViewContent(Lim/doit/pro/model/Task;Z)V

    .line 145
    invoke-direct {p0, v0, p3}, Lim/doit/pro/activity/listview/TaskViewHolder;->setProjectViewContent(Lim/doit/pro/model/Task;Z)V

    .line 146
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setEndAtViewContent(Lim/doit/pro/model/Task;)V

    .line 147
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setSenderViewContent(Lim/doit/pro/model/Task;)V

    .line 148
    iget-object v2, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 149
    iget-object v1, p0, Lim/doit/pro/activity/listview/TaskViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->isChildrenVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->setVisibility(I)V

    .line 151
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->setCompleteViewContent(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 150
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
