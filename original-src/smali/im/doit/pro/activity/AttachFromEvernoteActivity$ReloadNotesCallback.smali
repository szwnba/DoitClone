.class Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;
.super Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadNotesCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {p0, p1, v0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->onException(Ljava/lang/Exception;)V

    .line 318
    return-void
.end method

.method public onSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V
    .locals 2
    .param p1, "data"    # Lcom/evernote/edam/notestore/NotesMetadataList;

    .prologue
    .line 310
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$23(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    invoke-super {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;->onSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    .line 312
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$24(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/LoadMoreListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LoadMoreListView;->smoothScrollToPosition(I)V

    .line 313
    return-void
.end method
