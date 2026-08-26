.class public Lim/doit/pro/activity/SelectContactsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "SelectContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;
    }
.end annotation


# instance fields
.field private autoCompleteBtn:Lim/doit/pro/ui/component/DSwitch;

.field private cancelBtn:Landroid/widget/Button;

.field private contentViewWrap:Landroid/view/View;

.field private deleteSearchBtn:Landroid/widget/ImageButton;

.field private mFilterContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutocomplete:Z

.field private mListAdatper:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

.field private mListView:Landroid/widget/ListView;

.field private mOriSelectedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lim/doit/pro/model/Task;

.field private mUnfilterContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private noResultTV:Landroid/widget/TextView;

.field private okBtn:Landroid/widget/Button;

.field private onAutoCompleteClick:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;

.field private searchInput:Landroid/widget/EditText;

.field private searchWrap:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mIsAutocomplete:Z

    .line 196
    new-instance v0, Lim/doit/pro/activity/SelectContactsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SelectContactsActivity$1;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v0, Lim/doit/pro/activity/SelectContactsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SelectContactsActivity$2;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 299
    new-instance v0, Lim/doit/pro/activity/SelectContactsActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SelectContactsActivity$3;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->onOKClick:Landroid/view/View$OnClickListener;

    .line 323
    new-instance v0, Lim/doit/pro/activity/SelectContactsActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SelectContactsActivity$4;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->onAutoCompleteClick:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mUnfilterContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/SelectContactsActivity;)Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListAdatper:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->noResultTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->contentViewWrap:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mOriSelectedUserIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mSelectedUserIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SelectContactsActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mIsAutocomplete:Z

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mFilterContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->setOkBtnStatus()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->deleteSearchBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9(Lim/doit/pro/activity/SelectContactsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mFilterContacts:Ljava/util/ArrayList;

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lim/doit/pro/activity/SelectContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    iput-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mTask:Lim/doit/pro/model/Task;

    .line 71
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/ContactDao;->findAllPassed()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mUnfilterContacts:Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mUnfilterContacts:Ljava/util/ArrayList;

    iput-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mFilterContacts:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mSelectedUserIds:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mOriSelectedUserIds:Ljava/util/ArrayList;

    .line 75
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Assignment;->isAutocomplete()Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mIsAutocomplete:Z

    .line 81
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mSelectedUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lim/doit/pro/activity/SelectContactsActivity;->mOriSelectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/AssignmentItem;

    .line 77
    .local v0, "item":Lim/doit/pro/model/AssignmentItem;
    iget-object v2, p0, Lim/doit/pro/activity/SelectContactsActivity;->mOriSelectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lim/doit/pro/model/AssignmentItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->initSearchInputListener()V

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->deleteSearchBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/activity/SelectContactsActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SelectContactsActivity$5;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->okBtn:Landroid/widget/Button;

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 131
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->setOkBtnStatus()V

    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->autoCompleteBtn:Lim/doit/pro/ui/component/DSwitch;

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->onAutoCompleteClick:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    return-void
.end method

.method private initSearchInputListener()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/activity/SelectContactsActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SelectContactsActivity$6;-><init>(Lim/doit/pro/activity/SelectContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchWrap:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchInput:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->deleteSearchBtn:Landroid/widget/ImageButton;

    .line 88
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->contentViewWrap:Landroid/view/View;

    .line 89
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListView:Landroid/widget/ListView;

    .line 90
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->okBtn:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->cancelBtn:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DSwitch;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->autoCompleteBtn:Lim/doit/pro/ui/component/DSwitch;

    .line 93
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->noResultTV:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;-><init>(Lim/doit/pro/activity/SelectContactsActivity;Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;)V

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListAdatper:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    .line 98
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mListAdatper:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->isShowSearchView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->autoCompleteBtn:Lim/doit/pro/ui/component/DSwitch;

    iget-boolean v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mIsAutocomplete:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->searchWrap:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isShowSearchView()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mUnfilterContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOkBtnStatus()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mSelectedUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->mSelectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity;->mOriSelectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->initData()V

    .line 64
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->initView()V

    .line 65
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->initViewContent()V

    .line 66
    invoke-direct {p0}, Lim/doit/pro/activity/SelectContactsActivity;->initListener()V

    .line 67
    return-void
.end method
