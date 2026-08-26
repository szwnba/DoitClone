.class Lim/doit/pro/activity/AttachFromEvernoteActivity$11;
.super Lcom/evernote/client/android/OnClientCallback;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;->selectNote(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evernote/client/android/OnClientCallback",
        "<",
        "Lcom/evernote/edam/type/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 150
    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$4(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/Exception;)V

    .line 170
    return-void
.end method

.method public onSuccess(Lcom/evernote/edam/type/User;)V
    .locals 5
    .param p1, "data"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 154
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$27(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    move-result-object v1

    .line 158
    .local v1, "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/evernote/client/android/ClientFactory;->createNoteStoreClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    .line 161
    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$28(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lcom/evernote/client/android/OnClientCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/evernote/client/android/AsyncNoteStoreClient;->shareNote(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lcom/evernote/thrift/transport/TTransportException;
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$4(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/evernote/edam/type/User;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$11;->onSuccess(Lcom/evernote/edam/type/User;)V

    return-void
.end method
