.class public Lim/doit/pro/activity/SearchActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SearchActivity$ListAdapter;,
        Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;,
        Lim/doit/pro/activity/SearchActivity$LoadingTask;
    }
.end annotation


# instance fields
.field private emptyMsgTV:Landroid/widget/TextView;

.field private isCreated:Z

.field private listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field private listView:Lcom/mobeta/android/dslv/DragSortListView;

.field private loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

.field protected mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

.field private searchBtn:Landroid/widget/TextView;

.field private searchDeleteBtn:Landroid/widget/ImageButton;

.field private searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

.field private searchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SearchActivity;)Lim/doit/pro/activity/listview/ListViewAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->emptyMsgTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SearchActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity;->searchKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->setDeleteBtnStatus()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->performSearch()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->focusOnSearchInput()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->loadingTaskNotShowProgress()V

    return-void
.end method

.method private focusOnSearchInput()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$1;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    .line 91
    const-wide/16 v2, 0x64

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->initView()V

    .line 96
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->initListener()V

    .line 97
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lim/doit/pro/activity/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 118
    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 119
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$2;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$3;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 147
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 148
    new-instance v1, Lim/doit/pro/activity/SearchActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$4;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchDeleteBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$5;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchBtn:Landroid/widget/TextView;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$6;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/SearchActivity$7;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SearchActivity$7;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 183
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->initActionBar()V

    .line 101
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 102
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchDeleteBtn:Landroid/widget/ImageButton;

    .line 103
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchBtn:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->emptyMsgTV:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->listView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 106
    new-instance v0, Lim/doit/pro/activity/SearchActivity$ListAdapter;

    iget-object v1, p0, Lim/doit/pro/activity/SearchActivity;->listView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v0, p0, p0, v1}, Lim/doit/pro/activity/SearchActivity$ListAdapter;-><init>(Lim/doit/pro/activity/SearchActivity;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->listView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lim/doit/pro/activity/SearchActivity;->listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->setDeleteBtnStatus()V

    .line 109
    return-void
.end method

.method private loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;-><init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    .line 207
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private performSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchKey:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->cancel(Z)Z

    .line 198
    :cond_0
    new-instance v0, Lim/doit/pro/activity/SearchActivity$LoadingTask;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/SearchActivity$LoadingTask;-><init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    .line 199
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 200
    return-void
.end method

.method private setDeleteBtnStatus()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchKey:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchDeleteBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->searchDeleteBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v1, p0, Lim/doit/pro/activity/SearchActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v1, p0, Lim/doit/pro/activity/SearchActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 290
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SearchActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->box:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v1, v2, p1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    .line 292
    .local v0, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 293
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/SearchActivity;->isCreated:Z

    .line 64
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SearchActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->init()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity;->loadingTask:Lim/doit/pro/activity/SearchActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->cancel(Z)Z

    .line 82
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 71
    iget-boolean v0, p0, Lim/doit/pro/activity/SearchActivity;->isCreated:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity;->performSearch()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/SearchActivity;->isCreated:Z

    .line 75
    return-void
.end method
