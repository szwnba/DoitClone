.class Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;
.super Lcom/evernote/client/android/OnClientCallback;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMoreNotesCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evernote/client/android/OnClientCallback",
        "<",
        "Lcom/evernote/edam/notestore/NotesMetadataList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 347
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$15(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 348
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p1}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 350
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$24(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LoadMoreListView;->onLoadMoreComplete()V

    .line 351
    return-void
.end method

.method public onSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V
    .locals 10
    .param p1, "data"    # Lcom/evernote/edam/notestore/NotesMetadataList;

    .prologue
    const/4 v9, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->getNotes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->notifyDataSetChanged()V

    .line 334
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$25(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_1
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$15(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 340
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$24(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/LoadMoreListView;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/ui/component/LoadMoreListView;->onLoadMoreComplete()V

    .line 342
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$26(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    return-void

    .line 327
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evernote/edam/notestore/NoteMetadata;

    .line 328
    .local v7, "note":Lcom/evernote/edam/notestore/NoteMetadata;
    new-instance v0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v7}, Lcom/evernote/edam/notestore/NoteMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v7}, Lcom/evernote/edam/notestore/NoteMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/evernote/edam/notestore/NoteMetadata;->getCreated()J

    move-result-wide v4

    .line 330
    invoke-virtual {v7}, Lcom/evernote/edam/notestore/NoteMetadata;->getNotebookGuid()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-direct/range {v0 .. v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 331
    .local v0, "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    .end local v7    # "note":Lcom/evernote/edam/notestore/NoteMetadata;
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$25(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->onSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    return-void
.end method
