.class public Lim/doit/pro/activity/DailyPlanActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DailyPlanActivity.java"

# interfaces
.implements Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;
.implements Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;,
        Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_CONTACTS:I = 0x1


# instance fields
.field private addCommentBtn:Landroid/widget/ImageButton;

.field private bottomBarWrap:Landroid/widget/LinearLayout;

.field private isShowEditMore:Z

.field private mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

.field private mCurrentPage:I

.field private mGuideView:Landroid/widget/ImageView;

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onAddCommentClick:Landroid/view/View$OnClickListener;

.field private onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

.field private onDailyPlanDoneClick:Landroid/view/View$OnClickListener;

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private sendBtn:Landroid/widget/ImageButton;

.field private setStatusPosition:I

.field private taskTopbarWrap:Landroid/widget/RelativeLayout;

.field private todayBtn:Landroid/widget/TextView;

.field private topBarCancelBtn:Landroid/widget/Button;

.field private topBarDoneBtn:Landroid/widget/Button;

.field private topBarTitleView:Landroid/widget/TextView;

.field private workTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->setStatusPosition:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->isShowEditMore:Z

    .line 404
    new-instance v0, Lim/doit/pro/activity/DailyPlanActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanActivity$1;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 446
    new-instance v0, Lim/doit/pro/activity/DailyPlanActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanActivity$2;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->onDailyPlanDoneClick:Landroid/view/View$OnClickListener;

    .line 455
    new-instance v0, Lim/doit/pro/activity/DailyPlanActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanActivity$3;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

    .line 515
    new-instance v0, Lim/doit/pro/activity/DailyPlanActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanActivity$4;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->onAddCommentClick:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyPlanActivity;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyPlanActivity;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->setStatusPosition:I

    return v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/DailyPlanActivity;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->workTime:I

    return v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/DailyPlanActivity;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->isShowEditMore:Z

    return v0
.end method

.method static synthetic access$12(Lim/doit/pro/activity/DailyPlanActivity;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->startSelectContacts()V

    return-void
.end method

.method static synthetic access$13(Lim/doit/pro/activity/DailyPlanActivity;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->removeGuide()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyPlanActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lim/doit/pro/activity/DailyPlanActivity;->setStatusPosition:I

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyPlanActivity;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyPlanActivity;->isShowEditMore:Z

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/DailyPlanActivity;Lim/doit/pro/model/Task;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity;->refreshView(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/DailyPlanActivity;)Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/DailyPlanActivity;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$8(Lim/doit/pro/activity/DailyPlanActivity;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->showAddCommentDialog()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/DailyPlanActivity;)I
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getTotalArrangedTime()I

    move-result v0

    return v0
.end method

.method private buildGuideView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 578
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 579
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 580
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 583
    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    return-object v1

    .line 584
    :cond_0
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 586
    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 589
    const v2, 0x7f020138

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getTotalArrangedTime()I
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "arrangedTime":I
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    return v0

    .line 227
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 228
    .local v1, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isNotDead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initData()V

    .line 153
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initView()V

    .line 154
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initViewContent()V

    .line 155
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initListener()V

    .line 156
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 250
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 255
    const v1, 0x7f030070

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 256
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "isFromNext":Z
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 162
    const-string v7, "daily_plan_from_next_tasks"

    .line 161
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 164
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 165
    const-string v7, "daily_plan_from_next_tasks"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    .local v0, "fromNextTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v6}, Lim/doit/pro/db/persist/TaskDao;->findToday()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    .line 168
    iget-object v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    sget-object v7, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    invoke-static {v6, v7}, Lim/doit/pro/utils/QueryUtils;->sortDatasWithoutGrouper(Ljava/util/ArrayList;Lim/doit/pro/model/enums/GroupByType;)Ljava/util/ArrayList;

    move-result-object v4

    .line 169
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, "fromNextTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 180
    if-eqz v2, :cond_1

    .line 181
    iget-object v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    .line 183
    :cond_1
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    iget-object v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_2
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initWorkTime()V

    .line 187
    return-void

    .line 171
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/BaseEntityWithPos;

    .local v3, "item":Lim/doit/pro/model/BaseEntityWithPos;
    move-object v5, v3

    .line 172
    check-cast v5, Lim/doit/pro/model/Task;

    .line 173
    .local v5, "task":Lim/doit/pro/model/Task;
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_4
    iget-object v7, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 302
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarDoneBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->onDailyPlanDoneClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->sendBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;-><init>(Lim/doit/pro/activity/DailyPlanActivity;Lim/doit/pro/activity/DailyPlanActivity$OnSendBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->addCommentBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->onAddCommentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->initActionBar()V

    .line 237
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    .line 238
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarCancelBtn:Landroid/widget/Button;

    .line 239
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarTitleView:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->addCommentBtn:Landroid/widget/ImageButton;

    .line 241
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->sendBtn:Landroid/widget/ImageButton;

    .line 242
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarDoneBtn:Landroid/widget/Button;

    .line 243
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    .line 244
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->todayBtn:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 246
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 259
    new-instance v1, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;-><init>(Lim/doit/pro/activity/DailyPlanActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    .line 260
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 261
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 266
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 267
    return-void
.end method

.method private initWorkTime()V
    .locals 11

    .prologue
    .line 190
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    .line 191
    .local v4, "user":Lim/doit/pro/model/User;
    const/4 v7, 0x0

    .local v7, "workStart":Ljava/util/Calendar;
    const/4 v5, 0x0

    .local v5, "workEnd":Ljava/util/Calendar;
    const/4 v2, 0x0

    .local v2, "lunchBreakStart":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 192
    .local v0, "lunchBreakEnd":Ljava/util/Calendar;
    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "workStartStr":Ljava/lang/String;
    invoke-static {v8}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    const-string v9, "HH:mm"

    .line 194
    invoke-static {v8, v9}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    .line 197
    :cond_0
    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingEndTime()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "workEndStr":Ljava/lang/String;
    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 200
    const-string v9, "HH:mm"

    .line 199
    invoke-static {v6, v9}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    .line 202
    :cond_1
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 203
    const/4 v9, 0x0

    invoke-static {v7, v5, v9}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 204
    invoke-static {v5, v7}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v9

    iput v9, p0, Lim/doit/pro/activity/DailyPlanActivity;->workTime:I

    .line 209
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lim/doit/pro/model/User;->getLunchBreakStartTime()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "lunchBreakStartStr":Ljava/lang/String;
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 212
    const-string v9, "HH:mm"

    .line 211
    invoke-static {v3, v9}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 214
    :cond_3
    invoke-virtual {v4}, Lim/doit/pro/model/User;->getLunchBreakEndTime()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "lunchBreakEndStr":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 217
    const-string v9, "HH:mm"

    .line 216
    invoke-static {v1, v9}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 219
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 220
    iget v9, p0, Lim/doit/pro/activity/DailyPlanActivity;->workTime:I

    .line 221
    invoke-static {v0, v2}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Lim/doit/pro/activity/DailyPlanActivity;->workTime:I

    .line 223
    :cond_5
    return-void

    .line 206
    .end local v1    # "lunchBreakEndStr":Ljava/lang/String;
    .end local v3    # "lunchBreakStartStr":Ljava/lang/String;
    :cond_6
    invoke-static {v7, v5}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v9

    iput v9, p0, Lim/doit/pro/activity/DailyPlanActivity;->workTime:I

    goto :goto_0
.end method

.method private refreshView(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity;->setTopBarViewContent(Lim/doit/pro/model/Task;)V

    .line 401
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity;->setBottomBarViewContent(Lim/doit/pro/model/Task;)V

    .line 402
    return-void
.end method

.method private removeCurrentItem()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    iget v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 386
    iget v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 389
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    if-ltz v1, :cond_1

    .line 390
    iget v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 391
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 395
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    :goto_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 396
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->notifyDataSetChanged()V

    .line 397
    return-void

    .line 393
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    goto :goto_0
.end method

.method private removeGuide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 597
    iput-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 598
    iput-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 600
    :cond_0
    return-void
.end method

.method private saveTask()V
    .locals 3

    .prologue
    .line 464
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 465
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailFragment;->saveTask()Z

    .line 468
    :cond_0
    return-void
.end method

.method private sendTask(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 504
    iget-object v3, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    iget v4, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 505
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v3, :cond_0

    .line 506
    const-string v3, "auto_complete"

    .line 507
    const/4 v4, 0x1

    .line 506
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 509
    .local v1, "isAutoComplete":Z
    const-string v3, "contacts"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 508
    check-cast v2, Ljava/util/ArrayList;

    .line 510
    .local v2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/activity/TaskDetailFragment;->sendTask(ZLjava/util/ArrayList;)V

    .line 513
    .end local v1    # "isAutoComplete":Z
    .end local v2    # "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    :cond_0
    return-void
.end method

.method private setBottomBarViewContent(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 288
    if-nez p1, :cond_0

    .line 289
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->todayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->todayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTaskEstimatedTime(Lim/doit/pro/model/Task;I)V
    .locals 4
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "estimatedTime"    # I

    .prologue
    .line 550
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    iget v3, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 551
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 552
    check-cast v1, Lim/doit/pro/activity/TaskDetailFragment;

    .line 553
    .local v1, "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    invoke-virtual {v1, p2}, Lim/doit/pro/activity/TaskDetailFragment;->changeEstimatedTime(I)V

    .line 555
    .end local v1    # "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    :cond_0
    return-void
.end method

.method private setTopBarViewContent(Lim/doit/pro/model/Task;)V
    .locals 5
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->topBarTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isCanSendTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->sendBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->sendBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAddCommentDialog()V
    .locals 2

    .prologue
    .line 524
    invoke-static {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->getInstance(Landroid/content/Context;)Lim/doit/pro/ui/component/AddCommentDialog;

    move-result-object v0

    .line 525
    .local v0, "dialog":Lim/doit/pro/ui/component/AddCommentDialog;
    new-instance v1, Lim/doit/pro/activity/DailyPlanActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/DailyPlanActivity$5;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/AddCommentDialog;->setOnAddCommentFinishListner(Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;)V

    .line 536
    invoke-virtual {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->showDialog()V

    .line 537
    return-void
.end method

.method private showGuide()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 558
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->removeGuide()V

    .line 559
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/DailyPlanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 560
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 561
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 562
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 563
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 565
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->buildGuideView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    .line 566
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mGuideView:Landroid/widget/ImageView;

    new-instance v2, Lim/doit/pro/activity/DailyPlanActivity$6;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/DailyPlanActivity$6;-><init>(Lim/doit/pro/activity/DailyPlanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    return-void
.end method

.method private startSelectContacts()V
    .locals 4

    .prologue
    .line 478
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 479
    .local v1, "task":Lim/doit/pro/model/Task;
    new-instance v0, Landroid/content/Intent;

    .line 480
    const-class v2, Lim/doit/pro/activity/SelectContactsActivity;

    .line 479
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v0, "selectContactIntent":Landroid/content/Intent;
    const-string v2, "task"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/activity/DailyPlanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 483
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_0

    .line 494
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 495
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 498
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 501
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 489
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 490
    invoke-direct {p0, p3}, Lim/doit/pro/activity/DailyPlanActivity;->sendTask(Landroid/content/Intent;)V

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanActivity;->setContentView(I)V

    .line 131
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isShowDailyPlanOrReviewGuestureGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->showGuide()V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveShowDailyPlanOrReviewGuestureGuide(Z)V

    .line 135
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->init()V

    .line 136
    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 123
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/TaskDao;->trash(Lim/doit/pro/model/Task;)V

    .line 124
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->removeCurrentItem()V

    .line 125
    return-void
.end method

.method public onDialogTimeSet(III)V
    .locals 4
    .param p1, "reference"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 541
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 542
    .local v1, "task":Lim/doit/pro/model/Task;
    if-eqz v1, :cond_0

    .line 543
    mul-int/lit8 v2, p2, 0x3c

    add-int v0, v2, p3

    .line 544
    .local v0, "estimatedTime":I
    invoke-direct {p0, v1, v0}, Lim/doit/pro/activity/DailyPlanActivity;->setTaskEstimatedTime(Lim/doit/pro/model/Task;I)V

    .line 546
    .end local v0    # "estimatedTime":I
    :cond_0
    return-void
.end method

.method public onEstimateClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v7, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v8, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Task;

    .line 103
    .local v6, "task":Lim/doit/pro/model/Task;
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v4, 0x0

    .line 104
    .local v4, "minute":I
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    if-lez v7, :cond_0

    .line 105
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    div-int/lit8 v2, v7, 0x3c

    .line 106
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    rem-int/lit8 v4, v7, 0x3c

    .line 108
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 109
    .local v3, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 110
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v7, "time_dialog"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 111
    .local v5, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 114
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    const/4 v7, -0x1

    const v8, 0x7f0d0193

    invoke-static {v7, v8, v2, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    .line 118
    .local v0, "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    const-string v7, "time_dialog"

    invoke-virtual {v0, v1, v7}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanActivity;->saveTask()V

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyPlaning(Z)V

    .line 148
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyPlaning(Z)V

    .line 142
    return-void
.end method

.method public onTaskChange(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 370
    return-void
.end method

.method public onTaskComplete(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 375
    return-void
.end method

.method public onTodayClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v5, p0, Lim/doit/pro/activity/DailyPlanActivity;->mTasks:Ljava/util/ArrayList;

    iget v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 85
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 86
    .local v4, "today":Ljava/util/Calendar;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 87
    .local v1, "startAt":Ljava/util/Calendar;
    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v5

    invoke-static {v5, v4}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 94
    :goto_0
    iget-object v5, p0, Lim/doit/pro/activity/DailyPlanActivity;->mAdapter:Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    iget v6, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 95
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 96
    check-cast v3, Lim/doit/pro/activity/TaskDetailFragment;

    .line 97
    .local v3, "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    sget-object v5, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v3, v5, v1}, Lim/doit/pro/activity/TaskDetailFragment;->changeStartAt(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 99
    .end local v3    # "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    :cond_0
    return-void

    .line 90
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 91
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 90
    invoke-virtual {v1, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_0
.end method

.method public setHideEmptyView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 379
    iget v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->mCurrentPage:I

    iput v0, p0, Lim/doit/pro/activity/DailyPlanActivity;->setStatusPosition:I

    .line 380
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyPlanActivity;->isShowEditMore:Z

    .line 381
    return-void
.end method
