.class Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;
.super Landroid/widget/LinearLayout;
.source "FilterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public assignmentTV:Landroid/widget/TextView;

.field public attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

.field public contextsTV:Landroid/widget/TextView;

.field public endatTV:Landroid/widget/TextView;

.field public forwardedbyTV:Landroid/widget/TextView;

.field public groupbyTV:Landroid/widget/TextView;

.field public nameTV:Landroid/widget/TextView;

.field public orderbyTV:Landroid/widget/TextView;

.field public priorityTV:Landroid/widget/TextView;

.field public projectsTV:Landroid/widget/TextView;

.field public startatTV:Landroid/widget/TextView;

.field public statusTV:Landroid/widget/TextView;

.field public tagsTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    .line 244
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-static {p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->access$1(Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;)Lim/doit/pro/activity/FilterListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030083

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 247
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 249
    const v0, 0x7f0b017b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->statusTV:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->priorityTV:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0b017c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->groupbyTV:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0b017d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->orderbyTV:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0b017e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->startatTV:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->endatTV:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->contextsTV:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->projectsTV:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->tagsTV:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->forwardedbyTV:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->assignmentTV:Landroid/widget/TextView;

    .line 260
    return-void
.end method

.method private formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    const-string v1, "today"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const v1, 0x7f0c01ff

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_0
    return-object v1

    .line 387
    :cond_0
    const-string v1, "tomorrow"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const v1, 0x7f0c0200

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 389
    :cond_1
    const-string v1, "this_workday"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    const v1, 0x7f0c0201

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 391
    :cond_2
    const-string v1, "this_week"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    const v1, 0x7f0c0202

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    :cond_3
    const-string v1, "this_month"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    const v1, 0x7f0c0205

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 395
    :cond_4
    const-string v1, "next_workday"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    const v1, 0x7f0c0203

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 397
    :cond_5
    const-string v1, "next_week"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    const v1, 0x7f0c0204

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 399
    :cond_6
    const-string v1, "next_month"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 400
    const v1, 0x7f0c0206

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 402
    :cond_7
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "arr":[Ljava/lang/String;
    const v1, 0x7f0c0207

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private setAssignmentViewContent(Lim/doit/pro/model/Filter;)V
    .locals 6
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 514
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterAssignTo;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->assignmentTV:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->assignmentTV:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v0, "format":Ljava/lang/StringBuilder;
    const-string v4, "in"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/FilterAssignTo;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 521
    const v4, 0x7f0c01f7

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterAssignTo;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 526
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 535
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->assignmentTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    .end local v3    # "length":I
    :cond_2
    const v4, 0x7f0c01f8

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 527
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterAssignTo;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 528
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 526
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_4

    .line 532
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private setContextViewContent(Lim/doit/pro/model/Filter;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 408
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->contextsTV:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->contextsTV:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "format":Ljava/lang/StringBuilder;
    const v5, 0x7f0c01f9

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 416
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 432
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->contextsTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 418
    .local v4, "uuid":Ljava/lang/String;
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 416
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_3
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 421
    const v5, 0x7f0c00fa

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_4
    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    .line 429
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 423
    :cond_5
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/TaskContext;

    .line 424
    .local v3, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v3, :cond_4

    .line 425
    invoke-virtual {v3}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private setEndatViewContent(Lim/doit/pro/model/Filter;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 374
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->endatTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->endatTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "format":Ljava/lang/StringBuilder;
    const v1, 0x7f0c01f2

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->endatTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setForwaredbyViewContent(Lim/doit/pro/model/Filter;)V
    .locals 6
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 489
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->forwardedbyTV:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->forwardedbyTV:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "format":Ljava/lang/StringBuilder;
    const-string v4, "in"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/FilterSender;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const v4, 0x7f0c01f4

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :goto_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 501
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 510
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->forwardedbyTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    .end local v3    # "length":I
    :cond_2
    const v4, 0x7f0c01f5

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 501
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 505
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_4

    .line 507
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private setGroupbyViewContent(Lim/doit/pro/model/Filter;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 322
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->groupbyTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->groupbyTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "format":Ljava/lang/StringBuilder;
    const v1, 0x7f0c01fd

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->start_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    const v1, 0x7f0c0176

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_1
    :goto_1
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->groupbyTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :cond_2
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->end_at:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    const v1, 0x7f0c0177

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 333
    :cond_3
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->priority:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    const v1, 0x7f0c00ef

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_4
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->project:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    const v1, 0x7f0c00ea

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_5
    sget-object v1, Lim/doit/pro/model/enums/GroupByType;->context:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/GroupByType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const v1, 0x7f0c00e8

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setPriorityViewContent(Lim/doit/pro/model/Filter;)V
    .locals 6
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 301
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->priorityTV:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->priorityTV:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v3, "priFormat":Ljava/lang/StringBuilder;
    const v4, 0x7f0c01fe

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 309
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 318
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->priorityTV:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 311
    .local v1, "item":I
    if-gez v1, :cond_3

    .line 309
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_3
    invoke-static {v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatPriority(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    .line 315
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private setProjectViewContent(Lim/doit/pro/model/Filter;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 436
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->projectsTV:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->projectsTV:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "format":Ljava/lang/StringBuilder;
    const v5, 0x7f0c01fa

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 444
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 460
    iget-object v5, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->projectsTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 446
    .local v4, "uuid":Ljava/lang/String;
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_3
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 449
    const v5, 0x7f0c00fa

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_4
    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    .line 457
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 451
    :cond_5
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Project;

    .line 452
    .local v3, "project":Lim/doit/pro/model/Project;
    if-eqz v3, :cond_4

    .line 453
    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private setSortbyViewContent(Lim/doit/pro/model/Filter;)V
    .locals 4
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->orderbyTV:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->orderbyTV:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, "format":Ljava/lang/StringBuilder;
    const v2, 0x7f0c01fc

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "orderBy":Ljava/lang/String;
    const-string v2, "end_at"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const v2, 0x7f0c0177

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_2
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->orderbyTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    :cond_3
    const-string v2, "priority"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    const v2, 0x7f0c00ef

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :cond_4
    const-string v2, "start_at"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    const v2, 0x7f0c0176

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setStartatViewContent(Lim/doit/pro/model/Filter;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 363
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->startatTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->startatTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "format":Ljava/lang/StringBuilder;
    const v1, 0x7f0c01f1

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->startatTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setStatusTVContent(Lim/doit/pro/model/Filter;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 285
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->statusTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->statusTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, "statusFormat":Ljava/lang/StringBuilder;
    const v1, 0x7f0c0030

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const v1, 0x7f0c0053

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1
    :goto_1
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->statusTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "uncompleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const v1, 0x7f0c017b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setTagViewContent(Lim/doit/pro/model/Filter;)V
    .locals 6
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 464
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->tagsTV:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->tagsTV:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, "format":Ljava/lang/StringBuilder;
    const v4, 0x7f0c01fb

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 472
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 485
    iget-object v4, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->tagsTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 472
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 476
    :cond_3
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 477
    const v4, 0x7f0c00fa

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_2

    .line 482
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 479
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setBackgroundResource(I)V

    .line 282
    return-void
.end method

.method public setViewContent(ILim/doit/pro/model/Filter;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setStatusTVContent(Lim/doit/pro/model/Filter;)V

    .line 265
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setPriorityViewContent(Lim/doit/pro/model/Filter;)V

    .line 266
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setGroupbyViewContent(Lim/doit/pro/model/Filter;)V

    .line 267
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setSortbyViewContent(Lim/doit/pro/model/Filter;)V

    .line 268
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setStartatViewContent(Lim/doit/pro/model/Filter;)V

    .line 269
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setEndatViewContent(Lim/doit/pro/model/Filter;)V

    .line 270
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setContextViewContent(Lim/doit/pro/model/Filter;)V

    .line 271
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setProjectViewContent(Lim/doit/pro/model/Filter;)V

    .line 272
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setTagViewContent(Lim/doit/pro/model/Filter;)V

    .line 273
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setForwaredbyViewContent(Lim/doit/pro/model/Filter;)V

    .line 274
    invoke-direct {p0, p2}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->setAssignmentViewContent(Lim/doit/pro/model/Filter;)V

    .line 275
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter$ViewHolder;->attributeWrap:Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;

    .line 276
    invoke-virtual {v0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->isChildrenVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    :goto_0
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->setVisibility(I)V

    .line 278
    return-void

    .line 276
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
