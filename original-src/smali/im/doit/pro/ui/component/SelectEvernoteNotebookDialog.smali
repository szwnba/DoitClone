.class public Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectEvernoteNotebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;,
        Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;
    }
.end annotation


# static fields
.field private static final KEY_NOTEBOOKS:Ljava/lang/String; = "notebooks"

.field private static final KEY_SELECTED_NOTEBOOK_ID:Ljava/lang/String; = "selected_notebook_id"


# instance fields
.field private listView:Landroid/widget/ListView;

.field private listViewWrap:Landroid/view/View;

.field private mAdapter:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

.field private mNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedId:Ljava/lang/String;

.field private mSelectedName:Ljava/lang/String;

.field private onNotebookFinishListner:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;

.field private topbarTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mNotebooks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->selectNotebookDone(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static convertToParcelable(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    const/4 v3, 0x0

    .line 68
    if-nez p0, :cond_0

    move-object v2, v3

    .line 79
    :goto_0
    return-object v2

    .line 71
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    new-instance v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    .line 77
    const v4, 0x7f0c0260

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-direct {v0, v3, v4}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "allNotebook":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "allNotebook":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/Notebook;

    .line 73
    .local v1, "item":Lcom/evernote/edam/type/Notebook;
    new-instance v5, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    invoke-virtual {v1}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->dismissAllowingStateLoss()V

    .line 233
    return-void
.end method

.method private initActionbarViewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    const v0, 0x7f0b014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    const v1, 0x7f020048

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->topbarTitleView:Landroid/widget/TextView;

    new-instance v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$1;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listViewWrap:Landroid/view/View;

    new-instance v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$3;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initActionbarViewContent(Landroid/view/View;)V

    .line 171
    const v0, 0x7f0b014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->topbarTitleView:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0b0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listViewWrap:Landroid/view/View;

    .line 173
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listView:Landroid/widget/ListView;

    .line 174
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 175
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedName:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->topbarTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mAdapter:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    .line 182
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mAdapter:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/List;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
    .locals 4
    .param p0, "selectedNotebookdId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    new-instance v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-direct {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;-><init>()V

    .line 58
    .local v1, "f":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "selected_notebook_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "notebooks"

    .line 61
    invoke-static {p1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->convertToParcelable(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private selectNotebookDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->onNotebookFinishListner:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->onNotebookFinishListner:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;

    invoke-interface {v0, p1, p2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;->finish(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->dismissDialog()V

    .line 229
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 164
    const v2, 0x7f0d00fd

    .line 163
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 165
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 166
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "selected_notebook_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedId:Ljava/lang/String;

    .line 143
    const-string v3, "notebooks"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mNotebooks:Ljava/util/List;

    .line 144
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedId:Ljava/lang/String;

    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mNotebooks:Ljava/util/List;

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mNotebooks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    :cond_1
    :goto_0
    const v3, 0x7f030055

    .line 154
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initView(Landroid/view/View;)V

    .line 156
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initViewContent()V

    .line 157
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initListener()V

    .line 158
    return-object v2

    .line 146
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    .line 147
    .local v1, "item":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    iget-object v4, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->mSelectedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 129
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 130
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 131
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 133
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 136
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public setOnNotebookFinishListner(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->onNotebookFinishListner:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;

    .line 53
    return-void
.end method
