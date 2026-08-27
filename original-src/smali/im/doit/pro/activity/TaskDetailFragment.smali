.class public Lim/doit/pro/activity/TaskDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "TaskDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;,
        Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;,
        Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;,
        Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;,
        Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;,
        Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;,
        Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;,
        Lim/doit/pro/activity/TaskDetailFragment$SetEstimatedTimeCallBack;,
        Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;,
        Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;,
        Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD_EVERNOTE_CODE:I = 0x2711


# instance fields
.field private mAddEvernoteBtn:Landroid/widget/Button;

.field private mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

.field private mAddSubtaskWrap:Landroid/view/View;

.field private mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private mCommentListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mCommentsCountTV:Landroid/widget/TextView;

.field private mCommentsWrap:Landroid/view/View;

.field private mCompleteBtn:Landroid/widget/ImageView;

.field private mContextView:Lim/doit/pro/ui/component/LabelTextView;

.field private mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

.field private mEditMoreBtn:Landroid/widget/Button;

.field private mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

.field private mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

.field private mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mEvernoteWrap:Landroid/view/View;

.field private mIsCreate:Z

.field private mIsHideEmptyView:Z

.field private mNotesET:Lim/doit/pro/ui/component/DEditText;

.field private mPriorityWrap:Landroid/widget/RelativeLayout;

.field private mProjectContextWrap:Landroid/widget/RelativeLayout;

.field private mProjectView:Lim/doit/pro/ui/component/LabelTextView;

.field private mReminderView:Lim/doit/pro/ui/component/LabelTextView;

.field private mRepeatReminderView:Landroid/widget/RelativeLayout;

.field private mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

.field private mSenderAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field private mSenderNameTV:Landroid/widget/TextView;

.field private mSenderWrap:Landroid/widget/RelativeLayout;

.field private mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

.field private mStartAtView:Lim/doit/pro/ui/component/LabelTextView;

.field private mSubtaskAdapter:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

.field private mSubtaskListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mSubtaskSortBtn:Landroid/widget/Button;

.field private mSubtaskWrap:Landroid/view/View;

.field private mTagsView:Lim/doit/pro/ui/component/LabelTextView;

.field private mTask:Lim/doit/pro/model/Task;

.field private mTaskChangeListener:Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

.field private mTimeBlockView:Landroid/widget/RelativeLayout;

.field private mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

.field private mTitleNotesWrap:Landroid/widget/RelativeLayout;

.field private mViewLoading:Z

.field private nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

.field private onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 573
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    .line 95
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z
    .locals 1

    .prologue
    .line 1711
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->updateTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTimeViewContent()V

    return-void
.end method

.method static synthetic access$11(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAllViewVisiable()V

    return-void
.end method

.method static synthetic access$12(Lim/doit/pro/activity/TaskDetailFragment;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mViewLoading:Z

    return v0
.end method

.method static synthetic access$13(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setStartTimeViewContent()V

    return-void
.end method

.method static synthetic access$14(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setDeadlineViewContent()V

    return-void
.end method

.method static synthetic access$15(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRepeatViewContent()V

    return-void
.end method

.method static synthetic access$16(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/TaskDetailFragment;->setViewContentAfterStartAtChange(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$17(Lim/doit/pro/activity/TaskDetailFragment;I)V
    .locals 0

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTime(I)V

    return-void
.end method

.method static synthetic access$18(Lim/doit/pro/activity/TaskDetailFragment;I)V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTime(I)V

    return-void
.end method

.method static synthetic access$19(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setContextViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEvernoteViewContent()V

    return-void
.end method

.method static synthetic access$20(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setProjectViewContent()V

    return-void
.end method

.method static synthetic access$21(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setTagsViewContent()V

    return-void
.end method

.method static synthetic access$22(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setPriorityViewContent()V

    return-void
.end method

.method static synthetic access$23(Lim/doit/pro/activity/TaskDetailFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->onSaveSubTaskClick(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$24(Lim/doit/pro/activity/TaskDetailFragment;Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    return-void
.end method

.method static synthetic access$25(Lim/doit/pro/activity/TaskDetailFragment;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    return v0
.end method

.method static synthetic access$26(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/ui/component/DEditText;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    return-object v0
.end method

.method static synthetic access$27(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->clearSubTaskFocus()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSubtaskViewContent()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    return v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTaskChangeListener:Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setCompleteBtnViewContent()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setReminderViewContent()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTimeViewContent()V

    return-void
.end method

.method private buildMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Media;
    .locals 2
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lim/doit/pro/model/Media;

    invoke-direct {v0}, Lim/doit/pro/model/Media;-><init>()V

    .line 198
    .local v0, "media":Lim/doit/pro/model/Media;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Media;->setUuid(Ljava/lang/String;)V

    .line 199
    const-string v1, "evernote"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Media;->setType(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p2}, Lim/doit/pro/model/Media;->setTitle(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p3}, Lim/doit/pro/model/Media;->setUrl(Ljava/lang/String;)V

    .line 202
    return-object v0
.end method

.method private clearSubTaskFocus()V
    .locals 4

    .prologue
    .line 755
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 757
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 758
    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 760
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 761
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 763
    :cond_1
    return-void
.end method

.method private createSubTasksWhenIsCreate()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    :cond_1
    return-void

    .line 280
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 281
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v2, v0}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    .line 282
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v2, v0}, Lim/doit/pro/db/persist/SubTaskDao;->complete(Lim/doit/pro/model/SubTask;)V

    goto :goto_0
.end method

.method private createSubtask(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1690
    new-instance v0, Lim/doit/pro/model/SubTask;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/SubTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->initPos()V

    .line 1694
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-nez v1, :cond_0

    .line 1696
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    .line 1698
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSubtaskViewContent()V

    .line 1699
    return-void
.end method

.method private focusOnTitle()V
    .locals 4

    .prologue
    .line 1702
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$7;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$7;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1707
    const-wide/16 v2, 0x64

    .line 1702
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1708
    return-void
.end method

.method private getExistMedia(Ljava/lang/String;Ljava/util/ArrayList;)Lim/doit/pro/model/Media;
    .locals 3
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;)",
            "Lim/doit/pro/model/Media;"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 208
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Media;

    .line 209
    .local v0, "item":Lim/doit/pro/model/Media;
    invoke-virtual {v0}, Lim/doit/pro/model/Media;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private initAddSubtaskListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1643
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setFocusable(Z)V

    .line 1645
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setFocusableInTouchMode(Z)V

    .line 1647
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskDoneListener;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 1648
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskFocusListener;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1649
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1650
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    iput-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    .line 349
    const-string v1, "is_create"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    .line 350
    const-string v1, "is_show_edit_more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "is_show_edit_more"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-eqz v1, :cond_1

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    goto :goto_0

    .line 356
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    goto :goto_0
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCompleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initTitleListener()V

    .line 1113
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initNoteListener()V

    .line 1114
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddEvernoteBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddEvernoteClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 1116
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mStartAtView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1117
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1118
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1119
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1120
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1121
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1122
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1123
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1124
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1125
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 1126
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEditMoreBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->onEditMoreClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskSortBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initAddSubtaskListener()V

    .line 1130
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->onTaskPropertiesChange()Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setOnDataChangeListener(Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;)V

    .line 1131
    return-void
.end method

.method private initNoteListener()V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$6;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1218
    return-void
.end method

.method private initTitleListener()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$4;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 1171
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$5;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1193
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    .line 362
    .line 363
    const v0, 0x7f0b0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 362
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderWrap:Landroid/widget/RelativeLayout;

    .line 364
    const v0, 0x7f0b0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderNameTV:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0b0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 365
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 368
    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 367
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleNotesWrap:Landroid/widget/RelativeLayout;

    .line 369
    const v0, 0x7f0b008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCompleteBtn:Landroid/widget/ImageView;

    .line 370
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 371
    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DEditText;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    .line 373
    const v0, 0x7f0b009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteWrap:Landroid/view/View;

    .line 375
    const v0, 0x7f0b009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 374
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 377
    const v0, 0x7f0b009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 376
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddEvernoteBtn:Landroid/widget/Button;

    .line 379
    const v0, 0x7f0b0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskWrap:Landroid/view/View;

    .line 381
    const v0, 0x7f0b0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 380
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 383
    const v0, 0x7f0b0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 382
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskSortBtn:Landroid/widget/Button;

    .line 384
    const v0, 0x7f0b01c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskWrap:Landroid/view/View;

    .line 386
    const v0, 0x7f0b01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SubTaskTitleView;

    .line 385
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskET:Lim/doit/pro/ui/component/SubTaskTitleView;

    .line 388
    const v0, 0x7f0b013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 387
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mPriorityWrap:Landroid/widget/RelativeLayout;

    .line 390
    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 389
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    .line 392
    const v0, 0x7f0b009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 391
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTimeBlockView:Landroid/widget/RelativeLayout;

    .line 394
    const v0, 0x7f0b013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 393
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 396
    const v0, 0x7f0b009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 395
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mStartAtView:Lim/doit/pro/ui/component/LabelTextView;

    .line 398
    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 397
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    .line 400
    const v0, 0x7f0b013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 399
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    .line 402
    const v0, 0x7f0b013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 401
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    .line 404
    const v0, 0x7f0b00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 403
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectContextWrap:Landroid/widget/RelativeLayout;

    .line 406
    const v0, 0x7f0b00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 405
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    .line 408
    const v0, 0x7f0b013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 407
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    .line 410
    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 409
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    .line 412
    const v0, 0x7f0b0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 411
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatReminderView:Landroid/widget/RelativeLayout;

    .line 414
    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 413
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    .line 416
    const v0, 0x7f0b0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 415
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    .line 417
    const v0, 0x7f0b0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentsWrap:Landroid/view/View;

    .line 419
    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 418
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentsCountTV:Landroid/widget/TextView;

    .line 421
    const v0, 0x7f0b0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 420
    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 422
    const v0, 0x7f0b0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEditMoreBtn:Landroid/widget/Button;

    .line 423
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSenderViewContent()V

    .line 441
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setCompleteBtnViewContent()V

    .line 442
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setTitleNotesViewContent()V

    .line 443
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEvernoteViewContent()V

    .line 444
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSubtaskViewContent()V

    .line 445
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAlldayViewContent()V

    .line 446
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setStartTimeViewContent()V

    .line 447
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setDeadlineViewContent()V

    .line 448
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTimeViewContent()V

    .line 449
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTimeViewContent()V

    .line 450
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setProjectViewContent()V

    .line 451
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setContextViewContent()V

    .line 452
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setTagsViewContent()V

    .line 453
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setPriorityViewContent()V

    .line 454
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRepeatViewContent()V

    .line 455
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setReminderViewContent()V

    .line 456
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setCommentView()V

    .line 457
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAllViewVisiable()V

    .line 458
    return-void
.end method

.method private initViewLengthLimit()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setNoteEditViewLengthLimit()V

    .line 427
    return-void
.end method

.method private isTitleNotesNotEditable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-nez v2, :cond_1

    .line 515
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isSent()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 516
    .local v0, "isNotEditable":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 519
    :goto_1
    return v1

    .line 514
    .end local v0    # "isNotEditable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    .restart local v0    # "isNotEditable":Z
    :cond_2
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isNotEditable()Z

    move-result v1

    goto :goto_1
.end method

.method public static newInstance(Lim/doit/pro/model/Task;Z)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 3
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "isCreate"    # Z

    .prologue
    .line 290
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/TaskDetailFragment;-><init>()V

    .line 291
    .local v1, "newFragment":Lim/doit/pro/activity/TaskDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "task"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 293
    const-string v2, "is_create"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 295
    return-object v1
.end method

.method public static newInstance(Lim/doit/pro/model/Task;ZZ)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 3
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "isCreate"    # Z
    .param p2, "isShowEditMore"    # Z

    .prologue
    .line 300
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/TaskDetailFragment;-><init>()V

    .line 301
    .local v1, "newFragment":Lim/doit/pro/activity/TaskDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "task"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 303
    const-string v2, "is_create"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string v2, "is_show_edit_more"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 306
    return-object v1
.end method

.method private onEditMoreClick()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1146
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$3;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-object v0
.end method

.method private onSaveSubTaskClick(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 1681
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1682
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    :goto_0
    return-void

    .line 1685
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->createSubtask(Ljava/lang/String;)V

    .line 1686
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onTaskPropertiesChange()Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;
    .locals 1

    .prologue
    .line 1134
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskDetailFragment$2;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-object v0
.end method

.method private setAddEvernoteViewContent()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 544
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteWrap:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "count":I
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    :cond_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 552
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddEvernoteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    .end local v0    # "count":I
    .end local v1    # "visibility":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "count":I
    :cond_2
    move v1, v2

    .line 551
    goto :goto_0

    .line 554
    .end local v0    # "count":I
    :cond_3
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddEvernoteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteWrap:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAllViewVisiable()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatEndAt(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setDeadlineViewVisible(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatEstimatedTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTimeViewVisible(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatSpentTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTimeViewVisible(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getProjectName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setProjectViewVisible(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getContextName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setTaskContextViewVisible(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatTagsForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->setTagsViewVisible(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setPriorityViewVisible()V

    .line 1007
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRepeatViewVisible()V

    .line 1008
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRemindersViewVisible()V

    .line 1010
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setPriorityWrap()V

    .line 1011
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setTimeWrap()V

    .line 1012
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setProjectContextWrap()V

    .line 1013
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRepeatReminderWrap()V

    .line 1014
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEditButton()V

    .line 1015
    return-void
.end method

.method private setAlldayViewContent()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setVisibility(I)V

    .line 857
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 856
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAlldaySwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setCommentView()V
    .locals 4

    .prologue
    .line 961
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentsWrap:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentsWrap:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentsCountTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0c003f

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 967
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 969
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Ljava/util/List;)V

    .line 970
    .local v0, "commentAdapter":Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCommentListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method private setCompleteBtnViewContent()V
    .locals 6

    .prologue
    const v5, 0x7f09004c

    const/4 v4, 0x0

    .line 523
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCompleteBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 526
    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    .line 527
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v3

    .line 528
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v4

    .line 525
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 529
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    .line 530
    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    .line 531
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v3

    .line 532
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v4

    .line 529
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    .line 540
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCompleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 541
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mCompleteBtn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 535
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v1

    .line 536
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v3

    .line 535
    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 537
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v1

    .line 538
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v3

    .line 537
    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setContextViewContent()V
    .locals 3

    .prologue
    .line 905
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getContextName()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "contextName":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 908
    return-void
.end method

.method private setDeadlineViewContent()V
    .locals 3

    .prologue
    .line 869
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatEndAt(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "endAtFormat":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v1

    .line 871
    .local v1, "isEditable":Z
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    const/4 v1, 0x0

    .line 874
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 876
    return-void
.end method

.method private setDeadlineViewVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "endAtFormat"    # Ljava/lang/String;

    .prologue
    .line 1036
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mDeadlineView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEditButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 990
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEditMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 991
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEditMoreBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 996
    :goto_0
    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEditMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEstimatedTime(I)V
    .locals 1
    .param p1, "estimatedTime"    # I

    .prologue
    .line 1469
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setEstimatedTime(I)V

    .line 1470
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->updateTask()Z

    .line 1471
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTimeViewContent()V

    .line 1472
    return-void
.end method

.method private setEstimatedTimeViewContent()V
    .locals 3

    .prologue
    .line 879
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatEstimatedTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "timeFormat":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    .line 881
    .local v0, "isEditable":Z
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 884
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 886
    return-void
.end method

.method private setEstimatedTimeViewVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "estimatedTimeFormat"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEstimatedTimeView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEvernoteViewContent()V
    .locals 4

    .prologue
    .line 562
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAddEvernoteViewContent()V

    .line 563
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 564
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getEvernoteList()Ljava/util/ArrayList;

    move-result-object v0

    .line 565
    .local v0, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 567
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 566
    iput-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 568
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->setOnRemoveClickListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;)V

    .line 569
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 571
    :cond_0
    return-void
.end method

.method private setNoteEditViewLengthLimit()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 430
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 432
    const v3, 0x7f0a000a

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 431
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 435
    const v3, 0x7f0a0009

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 434
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPriorityViewContent()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    .line 918
    .local v0, "isEditable":Z
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    const/4 v0, 0x0

    .line 921
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    .line 922
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v2

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatPriority(I)I

    move-result v2

    .line 921
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    .line 924
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v2

    .line 923
    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->getPriorityColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setTextColorResource(I)V

    .line 925
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    .line 926
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v2

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->getPriorityIconForSelectDialog(I)I

    move-result v2

    .line 925
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 928
    return-void
.end method

.method private setPriorityViewVisible()V
    .locals 2

    .prologue
    .line 1083
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->nPriorityView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPriorityWrap()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mPriorityWrap:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 975
    return-void
.end method

.method private setProjectContextWrap()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectContextWrap:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 983
    return-void
.end method

.method private setProjectViewContent()V
    .locals 3

    .prologue
    .line 899
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "projectName":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 902
    return-void
.end method

.method private setProjectViewVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectName"    # Ljava/lang/String;

    .prologue
    .line 1028
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1033
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mProjectView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setReminderViewContent()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 951
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 958
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 950
    goto :goto_0

    .line 954
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    .line 955
    const v3, 0x7f0c01ab

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    .line 956
    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 955
    invoke-static {v3, v1}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRemindersViewVisible()V
    .locals 2

    .prologue
    .line 1103
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mReminderView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRepeatReminderWrap()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatReminderView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 987
    return-void
.end method

.method private setRepeatViewContent()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isRepeaterEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 932
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    .line 934
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(I)V

    .line 935
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    .line 936
    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setTextColorResource(I)V

    .line 937
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 947
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatRepeat(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    .line 943
    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setTextColorResource(I)V

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRepeatViewVisible()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1091
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1100
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1096
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mRepeatView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSenderViewContent()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 461
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isSent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 462
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderWrap:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    const/4 v0, 0x0

    .line 470
    .local v0, "avatarImg":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->isSent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 471
    const v5, 0x7f0c01f3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "nameFormat":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getSenderEmail()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "senderName":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getSender()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "userId":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/ContactDao;->findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v1

    .line 481
    .local v1, "contact":Lim/doit/pro/model/Contact;
    if-eqz v1, :cond_2

    .line 482
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 485
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 486
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 490
    .end local v1    # "contact":Lim/doit/pro/model/Contact;
    :cond_2
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderNameTV:Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v2, v6}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSenderAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-virtual {v5, v0, v3}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    .end local v2    # "nameFormat":Ljava/lang/String;
    .end local v3    # "senderName":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    :cond_3
    const v5, 0x7f0c01f6

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    .restart local v2    # "nameFormat":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/AssignmentItem;

    invoke-virtual {v5}, Lim/doit/pro/model/AssignmentItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 477
    .restart local v3    # "senderName":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/AssignmentItem;

    invoke-virtual {v5}, Lim/doit/pro/model/AssignmentItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "userId":Ljava/lang/String;
    goto :goto_1
.end method

.method private setSpentTime(I)V
    .locals 1
    .param p1, "spentTime"    # I

    .prologue
    .line 1483
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setSpentTime(I)V

    .line 1484
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->updateTask()Z

    .line 1485
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTimeViewContent()V

    .line 1486
    return-void
.end method

.method private setSpentTimeViewContent()V
    .locals 3

    .prologue
    .line 889
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatSpentTimeForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "timeFormat":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    .line 891
    .local v0, "isEditable":Z
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 892
    const/4 v0, 0x0

    .line 894
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 896
    return-void
.end method

.method private setSpentTimeViewVisible(Ljava/lang/String;)V
    .locals 3
    .param p1, "spentTime"    # Ljava/lang/String;

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "isShowSpentTime":Z
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isArchived()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v1

    if-lez v1, :cond_2

    .line 1060
    const/4 v0, 0x1

    .line 1067
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 1068
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1072
    :goto_1
    return-void

    .line 1061
    :cond_2
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v1

    if-lez v1, :cond_1

    .line 1064
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1070
    :cond_4
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSpentTimeView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setStartTimeViewContent()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    .line 861
    .local v0, "isEditable":Z
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 864
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mStartAtView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v2}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatStartAt(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mStartAtView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 866
    return-void
.end method

.method private setSubTaskSortBtnViewContent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 604
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 606
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskSortBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 612
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskSortBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskSortBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubtaskViewContent()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 585
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 586
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 587
    .local v0, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    invoke-direct {v1, p0, v0}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Ljava/util/List;)V

    iput-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskAdapter:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    .line 589
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskAdapter:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 591
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskWrap:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskWrap:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :cond_1
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setSubTaskSortBtnViewContent()V

    .line 601
    return-void

    .line 595
    :cond_2
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mAddSubtaskWrap:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mSubtaskWrap:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTagsViewContent()V
    .locals 3

    .prologue
    .line 911
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatTagsForDetail(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "tagsFormat":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 914
    return-void
.end method

.method private setTagsViewVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagsFormat"    # Ljava/lang/String;

    .prologue
    .line 1075
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTagsView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTaskContextViewVisible(Ljava/lang/String;)V
    .locals 2
    .param p1, "contextName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 1018
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 1025
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsHideEmptyView:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mContextView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTimeWrap()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTimeBlockView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 979
    return-void
.end method

.method private setTitleNotesViewContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 497
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->isTitleNotesNotEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleNotesWrap:Landroid/widget/RelativeLayout;

    .line 500
    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 501
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 502
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    .line 504
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setVisibility(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 509
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mNotesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    goto :goto_0
.end method

.method private setViewContentAfterStartAtChange(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 1357
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 1358
    .local v0, "oriStartAt":Ljava/util/Calendar;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1, p1}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 1359
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1, p2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 1360
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1, v0}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 1361
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->updateTask()Z

    .line 1362
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setStartTimeViewContent()V

    .line 1363
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setDeadlineViewContent()V

    .line 1364
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setProjectViewContent()V

    .line 1365
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setContextViewContent()V

    .line 1366
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setRepeatViewContent()V

    .line 1367
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setReminderViewContent()V

    .line 1368
    return-void
.end method

.method private updateTask()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mViewLoading:Z

    if-eqz v0, :cond_1

    .line 1713
    :cond_0
    const/4 v0, 0x0

    .line 1715
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->saveTask()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addComment(Lim/doit/pro/model/TaskComment;)V
    .locals 1
    .param p1, "comment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/TaskComment;->setTask(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/TaskComment;->setRepeatNo(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/TaskCommentDao;->createAndSaveLog(Lim/doit/pro/model/TaskComment;)V

    .line 235
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->addComments(Lim/doit/pro/model/TaskComment;)V

    .line 236
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setCommentView()V

    .line 237
    return-void
.end method

.method public changeEstimatedTime(I)V
    .locals 0
    .param p1, "estimatedTime"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->setEstimatedTime(I)V

    .line 223
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAllViewVisiable()V

    .line 224
    return-void
.end method

.method public changeSpentTime(I)V
    .locals 0
    .param p1, "spentTime"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->setSpentTime(I)V

    .line 228
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setAllViewVisiable()V

    .line 229
    return-void
.end method

.method public changeStartAt(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/TaskDetailFragment;->setViewContentAfterStartAtChange(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 219
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 169
    iget-object v6, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    .line 170
    .local v3, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    const-string v6, "evernote_note_guid"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "guid":Ljava/lang/String;
    const-string v6, "evernote_note_title"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "title":Ljava/lang/String;
    const-string v6, "evernote_note_share_url"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "url":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lim/doit/pro/activity/TaskDetailFragment;->getExistMedia(Ljava/lang/String;Ljava/util/ArrayList;)Lim/doit/pro/model/Media;

    move-result-object v0

    .line 174
    .local v0, "existMedia":Lim/doit/pro/model/Media;
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, v4}, Lim/doit/pro/model/Media;->setTitle(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v5}, Lim/doit/pro/model/Media;->setUrl(Ljava/lang/String;)V

    .line 184
    :goto_1
    iget-object v6, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v6, v3}, Lim/doit/pro/model/Task;->setMedias(Ljava/util/ArrayList;)V

    .line 185
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->updateTask()Z

    .line 186
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->setEvernoteViewContent()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v3    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    :cond_2
    invoke-direct {p0, v1, v4, v5}, Lim/doit/pro/activity/TaskDetailFragment;->buildMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Media;

    move-result-object v2

    .line 182
    .local v2, "media":Lim/doit/pro/model/Media;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 157
    :try_start_0
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-object v2, v0

    iput-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTaskChangeListener:Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v4, " must implement TaskChangeListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mViewLoading:Z

    .line 319
    const v1, 0x7f030067

    .line 320
    const/4 v2, 0x0

    .line 319
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "layoutView":Landroid/view/View;
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initData()V

    .line 322
    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment;->initView(Landroid/view/View;)V

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->wireDetail(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 323
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initViewLengthLimit()V

    .line 324
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initListener()V

    .line 325
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->focusOnTitle()V

    .line 328
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 334
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mViewLoading:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->initViewContent()V

    .line 337
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 339
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 343
    :cond_0
    iput-boolean v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mViewLoading:Z

    .line 344
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string v0, "task"

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    return-void
.end method

.method public saveTask()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v1, "task is not changed"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 274
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const-string v0, "task title is null"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v2, 0x7f0c0089

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 259
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->focusOnTitle()V

    move v0, v1

    .line 260
    goto :goto_0

    .line 263
    :cond_1
    const-string v2, "save task"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 264
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    if-eqz v2, :cond_2

    .line 265
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 266
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment;->createSubTasksWhenIsCreate()V

    .line 271
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 272
    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mIsCreate:Z

    .line 273
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTaskChangeListener:Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-interface {v1, v2}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->onTaskChange(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method public sendTask(ZLjava/util/ArrayList;)V
    .locals 2
    .param p1, "isAutoComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0, v1, p2, p1}, Lim/doit/pro/utils/TaskUtils;->sendTask(Landroid/content/Context;Lim/doit/pro/model/Task;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method
