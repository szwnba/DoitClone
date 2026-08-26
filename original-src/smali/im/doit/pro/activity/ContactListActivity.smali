.class public Lim/doit/pro/activity/ContactListActivity;
.super Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.source "ContactListActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ContactListActivity$ListAdatper;
    }
.end annotation


# instance fields
.field private mAdatper:Lim/doit/pro/activity/ContactListActivity$ListAdatper;

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPos:I

.field private mIsCreated:Z

.field private mListView:Landroid/widget/ListView;

.field private mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

.field private menuDialog:Landroid/app/AlertDialog;

.field private onContactItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ContactListActivity;->mIsCreated:Z

    .line 235
    new-instance v0, Lim/doit/pro/activity/ContactListActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ContactListActivity$1;-><init>(Lim/doit/pro/activity/ContactListActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->onContactItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ContactListActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->menuDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ContactListActivity;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ContactListActivity;)Lim/doit/pro/activity/ContactListActivity$ListAdatper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mAdatper:Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->onSendTaskClick()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->onViewTasksClick()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->onContactInfoClick()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->onDeleteClick()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/ContactListActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lim/doit/pro/activity/ContactListActivity;->menuDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lim/doit/pro/activity/ContactListActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    return v0
.end method

.method private finishPullToRefresh()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshComplete()V

    .line 358
    :cond_0
    return-void
.end method

.method private getSubTitleText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 140
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 143
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    .local v0, "count":I
    if-le v0, v2, :cond_1

    .line 145
    const v1, 0x7f0c0227

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    const v1, 0x7f0c0228

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initData()V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initView()V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initViewContent()V

    .line 100
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initListener()V

    .line 101
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 126
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 131
    return-void
.end method

.method private initContacts()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/ContactDao;->findAll()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initContacts()V

    .line 105
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity;->onContactItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 118
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 119
    invoke-static {p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 120
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initActionBar()V

    .line 113
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initPullToRefreshView()V

    .line 114
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mListView:Landroid/widget/ListView;

    .line 115
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;-><init>(Lim/doit/pro/activity/ContactListActivity;Lim/doit/pro/activity/ContactListActivity$ListAdatper;)V

    iput-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mAdatper:Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity;->mAdatper:Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->setActionBarSubTitleViewContent()V

    .line 156
    return-void
.end method

.method private onAddClick()V
    .locals 2

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/AddContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactListActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private onContactInfoClick()V
    .locals 4

    .prologue
    .line 302
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 303
    .local v0, "contact":Lim/doit/pro/model/Contact;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/activity/ContactDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "uuid"

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactListActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private onDeleteClick()V
    .locals 8

    .prologue
    .line 309
    iget-object v3, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    iget v4, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Contact;

    .line 310
    .local v1, "contact":Lim/doit/pro/model/Contact;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message_str"

    .line 313
    const v4, 0x7f0c008a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 314
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 313
    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c0027

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 318
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/activity/ContactListActivity$2;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/ContactListActivity$2;-><init>(Lim/doit/pro/activity/ContactListActivity;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v3

    .line 323
    new-instance v4, Lim/doit/pro/activity/ContactListActivity$3;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/ContactListActivity$3;-><init>(Lim/doit/pro/activity/ContactListActivity;)V

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 334
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private onSendTaskClick()V
    .locals 4

    .prologue
    .line 288
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 289
    .local v0, "contact":Lim/doit/pro/model/Contact;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/activity/SendTaskActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "uuid"

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactListActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method private onViewTasksClick()V
    .locals 4

    .prologue
    .line 295
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity;->mContacts:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/ContactListActivity;->mCurrentPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 296
    .local v0, "contact":Lim/doit/pro/model/Contact;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "uuid"

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactListActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method private reloadDataAndRefresh()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->initContacts()V

    .line 350
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity;->mAdatper:Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    invoke-virtual {v0}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->notifyDataSetChanged()V

    .line 351
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->setActionBarSubTitleViewContent()V

    .line 352
    return-void
.end method

.method private setActionBarSubTitleViewContent()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 135
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->getSubTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->invalidateOptionsMenu()V

    .line 137
    return-void
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 339
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->finishPullToRefresh()V

    .line 340
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->reloadDataAndRefresh()V

    .line 341
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactListActivity;->setContentView(I)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ContactListActivity;->mIsCreated:Z

    .line 84
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->init()V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 56
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->finish()V

    .line 63
    :goto_0
    return v1

    .line 59
    :cond_0
    const v2, 0x7f0b020c

    if-ne v0, v2, :cond_1

    .line 60
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->onAddClick()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 75
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 345
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    .line 346
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onResume()V

    .line 90
    iget-boolean v0, p0, Lim/doit/pro/activity/ContactListActivity;->mIsCreated:Z

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lim/doit/pro/activity/ContactListActivity;->reloadDataAndRefresh()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ContactListActivity;->mIsCreated:Z

    .line 94
    return-void
.end method
