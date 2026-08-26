.class public Lim/doit/pro/activity/ProjectDetailActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "ProjectDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;,
        Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD_EVERNOTE_CODE:I = 0x2711


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private completeBtn:Landroid/widget/ImageView;

.field private contextTV:Lim/doit/pro/ui/component/LabelTextView;

.field private deadlineTV:Lim/doit/pro/ui/component/LabelTextView;

.field private isCreate:Z

.field private mAddEvernoteBtn:Landroid/widget/Button;

.field private mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

.field private mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mEvernoteWrap:Landroid/view/View;

.field private mProject:Lim/doit/pro/model/Project;

.field private notesET:Lim/doit/pro/ui/component/DEditText;

.field private onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

.field private projectContextWrap:Landroid/widget/RelativeLayout;

.field private saveBtn:Landroid/widget/Button;

.field private startTimeTV:Lim/doit/pro/ui/component/LabelTextView;

.field private timeWrap:Landroid/widget/RelativeLayout;

.field private titleET:Lim/doit/pro/ui/component/NoEnterEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 267
    new-instance v0, Lim/doit/pro/activity/ProjectDetailActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ProjectDetailActivity$1;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectDetailActivity;)Z
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->saveProject()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setEvernoteViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->saveAndFinish()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setCompleteBtn()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setStartTime()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setDeadline()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setContext()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setSaveBtnStatus()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/DEditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    return-object v0
.end method

.method private buildMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Media;
    .locals 2
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 594
    new-instance v0, Lim/doit/pro/model/Media;

    invoke-direct {v0}, Lim/doit/pro/model/Media;-><init>()V

    .line 595
    .local v0, "media":Lim/doit/pro/model/Media;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Media;->setUuid(Ljava/lang/String;)V

    .line 596
    const-string v1, "evernote"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Media;->setType(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p2}, Lim/doit/pro/model/Media;->setTitle(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p3}, Lim/doit/pro/model/Media;->setUrl(Ljava/lang/String;)V

    .line 599
    return-object v0
.end method

.method private focusOnTitle()V
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$6;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 578
    const-wide/16 v2, 0x64

    .line 573
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
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
    .line 582
    .local p2, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 590
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 584
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Media;

    .line 585
    .local v0, "item":Lim/doit/pro/model/Media;
    invoke-virtual {v0}, Lim/doit/pro/model/Media;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initData()V

    .line 124
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initView()V

    .line 125
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initViewLengthLimit()V

    .line 126
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initViewContent()V

    .line 127
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initListener()V

    .line 128
    iget-boolean v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->focusOnTitle()V

    .line 133
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 134
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setSaveBtnStatus()V

    .line 135
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 170
    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 171
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "project"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    .line 141
    new-instance v0, Lim/doit/pro/model/Project;

    invoke-direct {v0}, Lim/doit/pro/model/Project;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    .line 142
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->listenTitleChange()V

    .line 203
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->listenNoteChange()V

    .line 204
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mAddEvernoteBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->startTimeTV:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 206
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->deadlineTV:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 207
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->contextTV:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 208
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$2;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setOnDataChangeListener(Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;)V

    .line 215
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->initActionBar()V

    .line 148
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->cancelBtn:Landroid/widget/Button;

    .line 149
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    .line 150
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->completeBtn:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 152
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DEditText;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    .line 153
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteWrap:Landroid/view/View;

    .line 154
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 155
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mAddEvernoteBtn:Landroid/widget/Button;

    .line 156
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->timeWrap:Landroid/widget/RelativeLayout;

    .line 157
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->startTimeTV:Lim/doit/pro/ui/component/LabelTextView;

    .line 158
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->deadlineTV:Lim/doit/pro/ui/component/LabelTextView;

    .line 159
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->projectContextWrap:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->contextTV:Lim/doit/pro/ui/component/LabelTextView;

    .line 161
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setCompleteBtn()V

    .line 175
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setTitleNotes()V

    .line 176
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setEvernoteViewContent()V

    .line 177
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setStartTime()V

    .line 178
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setDeadline()V

    .line 179
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setContext()V

    .line 180
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setTimeWrap()V

    .line 181
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setProjectContextWrap()V

    .line 182
    return-void
.end method

.method private initViewLengthLimit()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setNoteEditViewLengthLimit()V

    .line 186
    return-void
.end method

.method private listenNoteChange()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$5;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 419
    return-void
.end method

.method private listenTitleChange()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$3;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 382
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$4;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 399
    return-void
.end method

.method private saveAndFinish()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->saveProject()Z

    move-result v0

    .line 536
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->finish()V

    .line 539
    :cond_0
    return-void
.end method

.method private saveProject()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    const-string v1, "project is not changed"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 569
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    const-string v0, "project title is null"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v2, 0x7f0c0089

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 552
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->focusOnTitle()V

    move v0, v1

    .line 553
    goto :goto_0

    .line 555
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-static {p0, v2, v3}, Lim/doit/pro/utils/ToastUtils;->ProjectExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 556
    if-eqz v2, :cond_2

    move v0, v1

    .line 557
    goto :goto_0

    .line 559
    :cond_2
    const-string v2, "save project"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 560
    iget-boolean v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    if-eqz v2, :cond_3

    .line 561
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Project;->setUuid(Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/ProjectDao;->createAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 567
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 568
    iput-boolean v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    goto :goto_0

    .line 564
    :cond_3
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method private setAddEvernoteViewContent()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 279
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteWrap:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "count":I
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    :cond_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 287
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mAddEvernoteBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    .end local v0    # "count":I
    .end local v1    # "visibility":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "count":I
    :cond_2
    move v1, v2

    .line 286
    goto :goto_0

    .line 289
    .end local v0    # "count":I
    :cond_3
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mAddEvernoteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteWrap:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setCompleteBtn()V
    .locals 6

    .prologue
    const v5, 0x7f09004c

    const/4 v4, 0x0

    .line 218
    iget-boolean v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->completeBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 221
    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    .line 222
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v3

    .line 223
    iget-object v4, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v4

    .line 220
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    .line 225
    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    .line 226
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v3

    .line 227
    iget-object v4, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v4

    .line 224
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    .line 235
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->completeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 236
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->completeBtn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 230
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v1

    .line 231
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v3

    .line 230
    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v1

    .line 233
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v3

    .line 232
    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setContext()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->contextTV:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->contextTV:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getContextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->contextTV:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 312
    return-void
.end method

.method private setDeadline()V
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v0

    .line 304
    .local v0, "isEditable":Z
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->deadlineTV:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-static {v2}, Lim/doit/pro/activity/utils/ProjectUIHelper;->formatEndAt(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->deadlineTV:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 306
    return-void
.end method

.method private setEvernoteViewContent()V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setAddEvernoteViewContent()V

    .line 257
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 258
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getEvernoteList()Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    .local v0, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 261
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 260
    iput-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 262
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->setOnRemoveClickListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;)V

    .line 263
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mEvernoteAdapter:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 265
    :cond_0
    return-void
.end method

.method private setNoteEditViewLengthLimit()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 191
    const v3, 0x7f0a0010

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 190
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 194
    const v3, 0x7f0a000f

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 193
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setProjectContextWrap()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->projectContextWrap:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 320
    return-void
.end method

.method private setSaveBtnStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isNotEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->invalidateOptionsMenu()V

    .line 532
    return-void

    .line 524
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->isCreate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 528
    :cond_3
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStartTime()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v0

    .line 298
    .local v0, "isEditable":Z
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->startTimeTV:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-static {v2}, Lim/doit/pro/activity/utils/ProjectUIHelper;->formatStartAtForEditView(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->startTimeTV:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelTextView;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method private setTimeWrap()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->timeWrap:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setDetailChildBackground(Landroid/view/ViewGroup;)V

    .line 316
    return-void
.end method

.method private setTitleNotes()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 241
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isNotEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 244
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    .line 246
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setVisibility(I)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 251
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 81
    iget-object v6, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v6}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    .line 82
    .local v3, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    const-string v6, "evernote_note_guid"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "guid":Ljava/lang/String;
    const-string v6, "evernote_note_title"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "title":Ljava/lang/String;
    const-string v6, "evernote_note_share_url"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "url":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lim/doit/pro/activity/ProjectDetailActivity;->getExistMedia(Ljava/lang/String;Ljava/util/ArrayList;)Lim/doit/pro/model/Media;

    move-result-object v0

    .line 86
    .local v0, "existMedia":Lim/doit/pro/model/Media;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, v4}, Lim/doit/pro/model/Media;->setTitle(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v5}, Lim/doit/pro/model/Media;->setUrl(Ljava/lang/String;)V

    .line 96
    :goto_1
    iget-object v6, p0, Lim/doit/pro/activity/ProjectDetailActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v6, v3}, Lim/doit/pro/model/Project;->setMedias(Ljava/util/ArrayList;)V

    .line 97
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->saveProject()Z

    .line 98
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->setEvernoteViewContent()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v3    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    :cond_2
    invoke-direct {p0, v1, v4, v5}, Lim/doit/pro/activity/ProjectDetailActivity;->buildMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Media;

    move-result-object v2

    .line 94
    .local v2, "media":Lim/doit/pro/model/Media;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectDetailActivity;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->init()V

    .line 113
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity;->init()V

    .line 120
    return-void
.end method
