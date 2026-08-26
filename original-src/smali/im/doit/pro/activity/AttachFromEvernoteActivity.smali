.class public Lim/doit/pro/activity/AttachFromEvernoteActivity;
.super Lim/doit/pro/activity/DSwipeBackFragmentActivity;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;,
        Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;,
        Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;,
        Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;,
        Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;
    }
.end annotation


# static fields
.field private static final mMaxNotes:I = 0xa


# instance fields
.field private currentPosition:I

.field private findNotebooksCallback:Lcom/evernote/client/android/OnClientCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;>;"
        }
    .end annotation
.end field

.field private getEvernoteUserCallback:Lcom/evernote/client/android/OnClientCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/User;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelBtn:Landroid/widget/Button;

.field private mDeleteSearchBtn:Landroid/widget/ImageButton;

.field private mEmptyListView:Landroid/widget/TextView;

.field private mLinkToYourEvernoteBtn:Landroid/widget/Button;

.field private mListAdapter:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

.field private mListView:Lim/doit/pro/ui/component/LoadMoreListView;

.field private mOffset:I

.field private mSearchInput:Lim/doit/pro/ui/component/NoEnterEditText;

.field private mSearchWrap:Landroid/widget/LinearLayout;

.field private mSelectedNotebookId:Ljava/lang/String;

.field private mTopbarTitleView:Landroid/widget/TextView;

.field private mUnlinkWrap:Landroid/view/View;

.field private notebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation
.end field

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

.field private onListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private onLoadMore:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

.field private onSelectNotebookClick:Landroid/view/View$OnClickListener;

.field private onStartSearch:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

.field private searchKey:Ljava/lang/String;

.field private searchKeyChange:Landroid/text/TextWatcher;

.field private shardId:Ljava/lang/String;

.field private shareNoteCallback:Lcom/evernote/client/android/OnClientCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->items:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mOffset:I

    .line 82
    iput-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->searchKey:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->shardId:Ljava/lang/String;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->currentPosition:I

    .line 177
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->shareNoteCallback:Lcom/evernote/client/android/OnClientCallback;

    .line 259
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findNotebooksCallback:Lcom/evernote/client/android/OnClientCallback;

    .line 376
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$3;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$4;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 393
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onLoadMore:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    .line 403
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onSelectNotebookClick:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$7;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$7;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->searchKeyChange:Landroid/text/TextWatcher;

    .line 457
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onStartSearch:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    .line 473
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$9;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$9;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

    .line 502
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getEvernoteUserCallback:Lcom/evernote/client/android/OnClientCallback;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListAdapter:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mOffset:I

    return v0
.end method

.method static synthetic access$12(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1, p2, p3, p4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findNotes(Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V

    return-void
.end method

.method static synthetic access$13(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->setTopbarTitleUnfold()V

    return-void
.end method

.method static synthetic access$15(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    return-void
.end method

.method static synthetic access$16(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->selectNote(I)V

    return-void
.end method

.method static synthetic access$17(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->notebooks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lim/doit/pro/activity/AttachFromEvernoteActivity;Z)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$19(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->shardId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mDeleteSearchBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$21(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->setUnlinkViewContent()V

    return-void
.end method

.method static synthetic access$22(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showEvernoteAuthFailedDialog()V

    return-void
.end method

.method static synthetic access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$24(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/LoadMoreListView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListView:Lim/doit/pro/ui/component/LoadMoreListView;

    return-object v0
.end method

.method static synthetic access$25(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mEmptyListView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$27(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->shardId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lcom/evernote/client/android/OnClientCallback;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->shareNoteCallback:Lcom/evernote/client/android/OnClientCallback;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showAddNoteSuccess()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showAddNoteFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->notebooks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSelectedNotebookId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->searchKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mOffset:I

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSelectedNotebookId:Ljava/lang/String;

    return-object v0
.end method

.method private closeProgress()V
    .locals 0

    .prologue
    .line 642
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 643
    return-void
.end method

.method private findNotebooks()V
    .locals 3

    .prologue
    .line 247
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showProgress(Z)V

    .line 250
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/evernote/client/android/ClientFactory;->createNoteStoreClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    .line 252
    .local v1, "noteStoreClient":Lcom/evernote/client/android/AsyncNoteStoreClient;
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findNotebooksCallback:Lcom/evernote/client/android/OnClientCallback;

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->listNotebooks(Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "noteStoreClient":Lcom/evernote/client/android/AsyncNoteStoreClient;
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-static {p0, v0}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 255
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    goto :goto_0
.end method

.method private findNotes(Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V
    .locals 7
    .param p1, "notebookId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/NotesMetadataList;>;"
    :try_start_0
    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    .line 285
    .local v1, "filter":Lcom/evernote/edam/notestore/NoteFilter;
    sget-object v2, Lcom/evernote/edam/type/NoteSortOrder;->CREATED:Lcom/evernote/edam/type/NoteSortOrder;

    invoke-virtual {v2}, Lcom/evernote/edam/type/NoteSortOrder;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/evernote/edam/notestore/NoteFilter;->setOrder(I)V

    .line 286
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v1, p2}, Lcom/evernote/edam/notestore/NoteFilter;->setWords(Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteFilter;->setNotebookGuid(Ljava/lang/String;)V

    .line 292
    :cond_1
    new-instance v4, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v4}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>()V

    .line 293
    .local v4, "spec":Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitle(Z)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreated(Z)V

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuid(Z)V

    .line 296
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/ClientFactory;->createNoteStoreClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v0

    .line 298
    .local v0, "noteStoreClient":Lcom/evernote/client/android/AsyncNoteStoreClient;
    const/16 v3, 0xa

    move v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/client/android/AsyncNoteStoreClient;->findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "noteStoreClient":Lcom/evernote/client/android/AsyncNoteStoreClient;
    .end local v1    # "filter":Lcom/evernote/edam/notestore/NoteFilter;
    .end local v4    # "spec":Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v6

    .line 301
    .local v6, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-static {p0, v6}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 302
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    goto :goto_0
.end method

.method private getEvernoteUserName()V
    .locals 3

    .prologue
    .line 493
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getEvernoteUserCallback:Lcom/evernote/client/android/OnClientCallback;

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AsyncUserStoreClient;->getUser(Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 498
    .local v0, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->initView()V

    .line 120
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->initViewContent()V

    .line 121
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->initListener()V

    .line 122
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 220
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f020048

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 224
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 226
    const v1, 0x7f03006b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 227
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onSelectNotebookClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->searchKeyChange:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onStartSearch:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 370
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mDeleteSearchBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onDeleteSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mLinkToYourEvernoteBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListView:Lim/doit/pro/ui/component/LoadMoreListView;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onLoadMore:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LoadMoreListView;->setOnLoadMoreListener(Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;)V

    .line 373
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListView:Lim/doit/pro/ui/component/LoadMoreListView;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->onListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LoadMoreListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 374
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->initActionBar()V

    .line 126
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mCancelBtn:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mEmptyListView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchWrap:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mSearchInput:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 133
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mDeleteSearchBtn:Landroid/widget/ImageButton;

    .line 135
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mUnlinkWrap:Landroid/view/View;

    .line 136
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mLinkToYourEvernoteBtn:Landroid/widget/Button;

    .line 137
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LoadMoreListView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListView:Lim/doit/pro/ui/component/LoadMoreListView;

    .line 138
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListAdapter:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListView:Lim/doit/pro/ui/component/LoadMoreListView;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mListAdapter:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->setUnlinkViewContent()V

    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-void
.end method

.method private selectNote(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 147
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showProgress(Z)V

    .line 148
    iput p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->currentPosition:I

    .line 149
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v1

    .line 150
    new-instance v2, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AsyncUserStoreClient;->getUser(Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showAddNoteFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setTopbarTitleUnfold()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mTopbarTitleView:Landroid/widget/TextView;

    .line 361
    const v1, 0x7f02007f

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method private setUnlinkViewContent()V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mUnlinkWrap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->findNotebooks()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity;->mUnlinkWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAddNoteFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 202
    invoke-virtual {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    .line 206
    const v0, 0x7f0c025e

    invoke-static {p0, p1, v0}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private showAddNoteSuccess()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    .line 214
    const v0, 0x7f0c025d

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0
.end method

.method private showEvernoteAuthFailedDialog()V
    .locals 4

    .prologue
    .line 536
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->closeProgress()V

    .line 537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0109

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 541
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-virtual {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_TAG_EVERNOTE_AUTH_FAILED"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private showProgress(Z)V
    .locals 2
    .param p1, "cancelable"    # Z

    .prologue
    .line 626
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    move-result-object v0

    .line 627
    .local v0, "dialog":Lim/doit/pro/ui/component/DProgressDialog;
    if-eqz p1, :cond_0

    .line 628
    new-instance v1, Lim/doit/pro/activity/AttachFromEvernoteActivity$12;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$12;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DProgressDialog;->setOnKeyDownListener(Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;)V

    .line 639
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 97
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showProgress(Z)V

    .line 98
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    .line 100
    .local v0, "authResult":Lcom/evernote/client/android/AuthenticationResult;
    new-instance v1, Lim/doit/pro/model/Evernote;

    invoke-direct {v1}, Lim/doit/pro/model/Evernote;-><init>()V

    .line 101
    .local v1, "evernoteInfo":Lim/doit/pro/model/Evernote;
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setServiceHost(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setUserId(I)V

    .line 104
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setNoteStoreUrl(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getWebApiUrlPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setWebApiUrlPrefix(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/model/User;->setEvernote(Lim/doit/pro/model/Evernote;)V

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getEvernoteUserName()V

    goto :goto_0

    .line 109
    .end local v0    # "authResult":Lcom/evernote/client/android/AuthenticationResult;
    .end local v1    # "evernoteInfo":Lim/doit/pro/model/Evernote;
    :cond_1
    if-nez p2, :cond_0

    .line 110
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x3836
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->init()V

    .line 89
    return-void
.end method
