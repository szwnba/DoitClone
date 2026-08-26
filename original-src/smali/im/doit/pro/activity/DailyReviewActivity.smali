.class public Lim/doit/pro/activity/DailyReviewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DailyReviewActivity.java"

# interfaces
.implements Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;
.implements Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
.implements Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;,
        Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_CONTACTS:I = 0x1


# instance fields
.field private bottomBarWrap:Landroid/widget/LinearLayout;

.field private chartTopBarBackBtn:Landroid/widget/ImageButton;

.field private chartTopBarCloseBtn:Landroid/widget/Button;

.field private chartTopBarWrap:Landroid/view/View;

.field private doneTopBarSaveBtn:Landroid/widget/Button;

.field private isShowEditMore:Z

.field private mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

.field private mCurrentPage:I

.field private mDailyReview:Lim/doit/pro/model/DailyReview;

.field private mGuideView:Landroid/widget/ImageView;

.field private mIsCreate:Z

.field private mReviewDate:Ljava/util/Calendar;

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

.field private mViewPager:Lim/doit/pro/ui/component/DViewPager;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onAddCommentClick:Landroid/view/View$OnClickListener;

.field private onChartBackClick:Landroid/view/View$OnClickListener;

.field private onChartCloseClick:Landroid/view/View$OnClickListener;

.field private onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

.field private onDailyReviewSaveClick:Landroid/view/View$OnClickListener;

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private setStatusPosition:I

.field private spentTimeBtn:Landroid/widget/TextView;

.field private taskAddCommentBtn:Landroid/widget/ImageButton;

.field private taskSendBtn:Landroid/widget/ImageButton;

.field private taskTopBarCancelBtn:Landroid/widget/Button;

.field private taskTopBarTitleView:Landroid/widget/TextView;

.field private taskTopbarWrap:Landroid/widget/RelativeLayout;

.field private tomorrowBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mIsCreate:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->setStatusPosition:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->isShowEditMore:Z

    .line 431
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$1;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 478
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$2;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onDailyReviewSaveClick:Landroid/view/View$OnClickListener;

    .line 501
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$3;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

    .line 561
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$4;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onAddCommentClick:Landroid/view/View$OnClickListener;

    .line 646
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$5;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onChartBackClick:Landroid/view/View$OnClickListener;

    .line 657
    new-instance v0, Lim/doit/pro/activity/DailyReviewActivity$6;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewActivity$6;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->onChartCloseClick:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyReviewActivity;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyReviewActivity;)Z
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->isDoneLayout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/DailyReviewActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mIsCreate:Z

    return v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    return-object v0
.end method

.method static synthetic access$12(Lim/doit/pro/activity/DailyReviewActivity;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mIsCreate:Z

    return-void
.end method

.method static synthetic access$13(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->startDailyReviewStatistics()V

    return-void
.end method

.method static synthetic access$14(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->showAddCommentDialog()V

    return-void
.end method

.method static synthetic access$15(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lim/doit/pro/activity/DailyReviewActivity;I)Z
    .locals 1

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->isChartLayout(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lim/doit/pro/activity/DailyReviewActivity;I)Z
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->isDoneLayout(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lim/doit/pro/activity/DailyReviewActivity;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->isShowEditMore:Z

    return v0
.end method

.method static synthetic access$19(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->startSelectContacts()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/ui/component/DViewPager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mViewPager:Lim/doit/pro/ui/component/DViewPager;

    return-object v0
.end method

.method static synthetic access$20(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->hideGuide()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyReviewActivity;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->setStatusPosition:I

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyReviewActivity;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lim/doit/pro/activity/DailyReviewActivity;->setStatusPosition:I

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/DailyReviewActivity;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyReviewActivity;->isShowEditMore:Z

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/model/Task;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/DailyReviewActivity;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$9(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/model/Task;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->saveTaskReviewInfo(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method private buildGuideView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 701
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 702
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 703
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 706
    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    return-object v1

    .line 707
    :cond_0
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 709
    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 712
    const v2, 0x7f020138

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private hideGuide()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 722
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->initData()V

    .line 185
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->initView()V

    .line 186
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->initViewContent()V

    .line 187
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->initListener()V

    .line 188
    iget-boolean v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mIsCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v0}, Lim/doit/pro/model/DailyReview;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->startDailyReviewStatistics()V

    .line 191
    :cond_0
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 244
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 249
    const v1, 0x7f030071

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 250
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "daily_review_date"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "date":Ljava/lang/String;
    const-string v4, "yyyyMMdd"

    invoke-static {v1, v4}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mReviewDate:Ljava/util/Calendar;

    .line 196
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mReviewDate:Ljava/util/Calendar;

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 197
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/DailyReviewDao;->findByDate(Ljava/lang/String;)Lim/doit/pro/model/DailyReview;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    .line 198
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    if-nez v4, :cond_0

    .line 199
    const/4 v4, 0x1

    iput-boolean v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mIsCreate:Z

    .line 200
    new-instance v4, Lim/doit/pro/model/DailyReview;

    invoke-direct {v4}, Lim/doit/pro/model/DailyReview;-><init>()V

    iput-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    .line 201
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/DailyReview;->setUuid(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4, v1}, Lim/doit/pro/model/DailyReview;->setDate(Ljava/lang/String;)V

    .line 205
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    .line 207
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 208
    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mReviewDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findArchivedAndCompletedByCompletedTime(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    .local v0, "completedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v4, Lim/doit/pro/activity/listview/sort/ComparatorByCompletedAsc;

    invoke-direct {v4}, Lim/doit/pro/activity/listview/sort/ComparatorByCompletedAsc;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 213
    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mReviewDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findNotCompletedByStartAt(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v2

    .line 215
    .local v2, "notCompletedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    sget-object v4, Lim/doit/pro/model/enums/GroupByType;->start_at_today:Lim/doit/pro/model/enums/GroupByType;

    .line 214
    invoke-static {v2, v4}, Lim/doit/pro/utils/QueryUtils;->sortDatasWithoutGrouper(Ljava/util/ArrayList;Lim/doit/pro/model/enums/GroupByType;)Ljava/util/ArrayList;

    .line 216
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 219
    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mReviewDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findNotCompletedBySentAt(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v3

    .line 220
    .local v3, "sentAtTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v4, Lim/doit/pro/activity/listview/sort/ComparatorBySentAtAsc;

    invoke-direct {v4}, Lim/doit/pro/activity/listview/sort/ComparatorBySentAtAsc;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mViewPager:Lim/doit/pro/ui/component/DViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 324
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onDailyReviewSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopBarCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onDailyPlanCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskSendBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;-><init>(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskAddCommentBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onAddCommentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarBackBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onChartBackClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarCloseBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->onChartCloseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->initActionBar()V

    .line 226
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    .line 227
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopBarCancelBtn:Landroid/widget/Button;

    .line 228
    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopBarTitleView:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskAddCommentBtn:Landroid/widget/ImageButton;

    .line 230
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskSendBtn:Landroid/widget/ImageButton;

    .line 231
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    const v0, 0x7f0b0154

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarWrap:Landroid/view/View;

    .line 234
    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarBackBtn:Landroid/widget/ImageButton;

    .line 235
    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarCloseBtn:Landroid/widget/Button;

    .line 236
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    .line 237
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->tomorrowBtn:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->spentTimeBtn:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DViewPager;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mViewPager:Lim/doit/pro/ui/component/DViewPager;

    .line 240
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 253
    new-instance v1, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;-><init>(Lim/doit/pro/activity/DailyReviewActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    .line 254
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mViewPager:Lim/doit/pro/ui/component/DViewPager;

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 258
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->saveTaskReviewInfo(Lim/doit/pro/model/Task;)V

    .line 260
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 261
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->setSaveBtnEnabled()V

    .line 262
    return-void
.end method

.method private isChartLayout()Z
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->isChartLayout(I)Z

    move-result v0

    return v0
.end method

.method private isChartLayout(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoneLayout()Z
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->isDoneLayout(I)Z

    move-result v0

    return v0
.end method

.method private isDoneLayout(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshView(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->setTopBarViewContent(Lim/doit/pro/model/Task;)V

    .line 428
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->setBottomBarViewContent(Lim/doit/pro/model/Task;)V

    .line 429
    return-void
.end method

.method private removeCurrentItem()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 412
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 414
    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    .line 417
    :cond_0
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    if-ltz v1, :cond_1

    .line 419
    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 420
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 422
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    :cond_1
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 423
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->notifyDataSetChanged()V

    .line 424
    return-void
.end method

.method private saveTask()V
    .locals 3

    .prologue
    .line 510
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 511
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 512
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailFragment;->saveTask()Z

    .line 514
    :cond_0
    return-void
.end method

.method private saveTaskReviewInfo(Lim/doit/pro/model/Task;)V
    .locals 6
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 598
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_0

    .line 599
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lim/doit/pro/model/DailyReview;->setTaskReviewInfos(Ljava/util/ArrayList;)V

    .line 601
    :cond_0
    const/4 v0, 0x0

    .line 602
    .local v0, "deferred":Z
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isNotDead()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v4

    if-nez v4, :cond_1

    .line 603
    const/4 v0, 0x1

    .line 605
    :cond_1
    const/4 v2, 0x0

    .line 606
    .local v2, "taskReviewInfo":Lim/doit/pro/model/TaskReviewInfo;
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUniqUuid()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "uniqUuid":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 612
    if-nez v2, :cond_3

    .line 613
    new-instance v2, Lim/doit/pro/model/TaskReviewInfo;

    .end local v2    # "taskReviewInfo":Lim/doit/pro/model/TaskReviewInfo;
    invoke-direct {v2}, Lim/doit/pro/model/TaskReviewInfo;-><init>()V

    .line 614
    .restart local v2    # "taskReviewInfo":Lim/doit/pro/model/TaskReviewInfo;
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_3
    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v4}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setDailyReviewUuid(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setUuid(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setRepeatNo(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setEstimatedTime(I)V

    .line 620
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setSpentTime(I)V

    .line 621
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setCompleted(Ljava/util/Calendar;)V

    .line 622
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setTrashed(Ljava/util/Calendar;)V

    .line 623
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getArchived()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setArchived(Ljava/util/Calendar;)V

    .line 624
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getDeleted()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Lim/doit/pro/model/TaskReviewInfo;->setDeleted(Ljava/util/Calendar;)V

    .line 625
    invoke-virtual {v2, v0}, Lim/doit/pro/model/TaskReviewInfo;->setDeferred(Z)V

    .line 626
    return-void

    .line 607
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/TaskReviewInfo;

    .line 608
    .local v1, "item":Lim/doit/pro/model/TaskReviewInfo;
    invoke-virtual {v1}, Lim/doit/pro/model/TaskReviewInfo;->getUniqUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 609
    move-object v2, v1

    goto :goto_0
.end method

.method private sendTask(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 550
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    iget v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 551
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v3, :cond_0

    .line 552
    const-string v3, "auto_complete"

    .line 553
    const/4 v4, 0x1

    .line 552
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 555
    .local v1, "isAutoComplete":Z
    const-string v3, "contacts"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 554
    check-cast v2, Ljava/util/ArrayList;

    .line 556
    .local v2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/activity/TaskDetailFragment;->sendTask(ZLjava/util/ArrayList;)V

    .line 559
    .end local v1    # "isAutoComplete":Z
    .end local v2    # "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    :cond_0
    return-void
.end method

.method private setBottomBarViewContent(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 297
    if-nez p1, :cond_0

    .line 298
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->spentTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->tomorrowBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->spentTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->tomorrowBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->spentTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->tomorrowBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->tomorrowBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->bottomBarWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSaveBtnEnabled()V
    .locals 2

    .prologue
    .line 637
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v1}, Lim/doit/pro/model/DailyReview;->getRate()I

    move-result v1

    if-gtz v1, :cond_0

    .line 638
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v1}, Lim/doit/pro/model/DailyReview;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    :cond_0
    const/4 v0, 0x1

    .line 643
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 644
    return-void

    .line 641
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private setTomorrowClickAnim()V
    .locals 8

    .prologue
    .line 100
    iget v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    if-ltz v5, :cond_0

    iget v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iget-object v6, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v6, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 104
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v4

    .line 105
    .local v4, "tomorrow":Ljava/util/Calendar;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 106
    .local v1, "startAt":Ljava/util/Calendar;
    if-nez v1, :cond_2

    .line 107
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v5

    invoke-static {v5, v4}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 113
    :goto_1
    iget-object v5, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    iget v6, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 114
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 115
    check-cast v3, Lim/doit/pro/activity/TaskDetailFragment;

    .line 116
    .local v3, "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    sget-object v5, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v3, v5, v1}, Lim/doit/pro/activity/TaskDetailFragment;->changeStartAt(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    goto :goto_0

    .line 109
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "taskDetailFragment":Lim/doit/pro/activity/TaskDetailFragment;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 110
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 111
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 109
    invoke-virtual {v1, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_1
.end method

.method private setTopBarViewContent(Lim/doit/pro/model/Task;)V
    .locals 5
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 265
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->isChartLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarWrap:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->isDoneLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarWrap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_2
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopbarWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->doneTopBarSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->chartTopBarWrap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskTopBarTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskAddCommentBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 284
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isCanSendTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskSendBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskSendBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskAddCommentBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->taskSendBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAddCommentDialog()V
    .locals 2

    .prologue
    .line 570
    invoke-static {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->getInstance(Landroid/content/Context;)Lim/doit/pro/ui/component/AddCommentDialog;

    move-result-object v0

    .line 571
    .local v0, "dialog":Lim/doit/pro/ui/component/AddCommentDialog;
    new-instance v1, Lim/doit/pro/activity/DailyReviewActivity$7;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/DailyReviewActivity$7;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/AddCommentDialog;->setOnAddCommentFinishListner(Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;)V

    .line 582
    invoke-virtual {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->showDialog()V

    .line 583
    return-void
.end method

.method private showGuide()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 682
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/DailyReviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 683
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 684
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 685
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 686
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 688
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->buildGuideView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    .line 689
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mGuideView:Landroid/widget/ImageView;

    new-instance v2, Lim/doit/pro/activity/DailyReviewActivity$8;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/DailyReviewActivity$8;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    return-void
.end method

.method private startDailyReviewStatistics()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    .line 496
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mViewPager:Lim/doit/pro/ui/component/DViewPager;

    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DViewPager;->setCurrentItem(I)V

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 498
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->notifyDataSetChanged()V

    .line 499
    return-void
.end method

.method private startSelectContacts()V
    .locals 4

    .prologue
    .line 524
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 525
    .local v1, "task":Lim/doit/pro/model/Task;
    new-instance v0, Landroid/content/Intent;

    .line 526
    const-class v2, Lim/doit/pro/activity/SelectContactsActivity;

    .line 525
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v0, "selectContactIntent":Landroid/content/Intent;
    const-string v2, "task"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 528
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/activity/DailyReviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 529
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 533
    packed-switch p1, :pswitch_data_0

    .line 540
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 541
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 547
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 535
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 536
    invoke-direct {p0, p3}, Lim/doit/pro/activity/DailyReviewActivity;->sendTask(Landroid/content/Intent;)V

    goto :goto_0

    .line 533
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
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->setContentView(I)V

    .line 163
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->init()V

    .line 164
    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v2, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 154
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/TaskDao;->trash(Lim/doit/pro/model/Task;)V

    .line 155
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewActivity;->saveTaskReviewInfo(Lim/doit/pro/model/Task;)V

    .line 156
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->removeCurrentItem()V

    goto :goto_0
.end method

.method public onDialogTimeSet(III)V
    .locals 5
    .param p1, "reference"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 587
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 588
    .local v2, "task":Lim/doit/pro/model/Task;
    if-eqz v2, :cond_0

    .line 589
    mul-int/lit8 v3, p2, 0x3c

    add-int v1, v3, p3

    .line 590
    .local v1, "spentTime":I
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewActivity;->mAdapter:Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    iget v4, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 591
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v3, :cond_0

    .line 592
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment;->changeSpentTime(I)V

    .line 595
    .end local v1    # "spentTime":I
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->saveTask()V

    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyReviewing(Z)V

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyReviewing(Z)V

    .line 170
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isShowDailyPlanOrReviewGuestureGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->showGuide()V

    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveShowDailyPlanOrReviewGuestureGuide(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public onSpentTimeClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget v8, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    if-ltz v8, :cond_0

    iget v8, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iget-object v9, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v8, v9, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v8, p0, Lim/doit/pro/activity/DailyReviewActivity;->mTasks:Ljava/util/ArrayList;

    iget v9, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Task;

    .line 125
    .local v6, "task":Lim/doit/pro/model/Task;
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v4, 0x0

    .line 126
    .local v4, "minute":I
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v7

    .line 127
    .local v7, "time":I
    if-nez v7, :cond_2

    .line 128
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v8

    if-lez v8, :cond_4

    .line 129
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    .line 134
    :cond_2
    :goto_1
    div-int/lit8 v2, v7, 0x3c

    .line 135
    rem-int/lit8 v4, v7, 0x3c

    .line 136
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 137
    .local v3, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 138
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v8, "time_dialog"

    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 139
    .local v5, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    const/4 v8, -0x1

    const v9, 0x7f0d0193

    invoke-static {v8, v9, v2, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    .line 146
    .local v0, "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    const-string v8, "time_dialog"

    invoke-virtual {v0, v1, v8}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v5    # "prev":Landroid/support/v4/app/Fragment;
    :cond_4
    const/16 v7, 0x3c

    goto :goto_1
.end method

.method public onTaskChange(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->saveTaskReviewInfo(Lim/doit/pro/model/Task;)V

    .line 395
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 396
    return-void
.end method

.method public onTaskComplete(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->saveTaskReviewInfo(Lim/doit/pro/model/Task;)V

    .line 401
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->refreshView(Lim/doit/pro/model/Task;)V

    .line 402
    return-void
.end method

.method public onTomorrowClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->setTomorrowClickAnim()V

    .line 97
    return-void
.end method

.method public setHideEmptyView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 406
    iget v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mCurrentPage:I

    iput v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->setStatusPosition:I

    .line 407
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyReviewActivity;->isShowEditMore:Z

    .line 408
    return-void
.end method

.method public updateDailyReview(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "rate"    # I
    .param p3, "notes"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/DailyReview;->setRate(I)V

    .line 631
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity;->mDailyReview:Lim/doit/pro/model/DailyReview;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/DailyReview;->setNotes(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewActivity;->setSaveBtnEnabled()V

    .line 633
    return-void
.end method
