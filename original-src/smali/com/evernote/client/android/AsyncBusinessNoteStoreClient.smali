.class public Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;
.super Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
.source "AsyncBusinessNoteStoreClient.java"


# direct methods
.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;Lcom/evernote/client/android/ClientFactory;)V
    .locals 0
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p3, "authenticationToken"    # Ljava/lang/String;
    .param p4, "clientFactory"    # Lcom/evernote/client/android/ClientFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;Lcom/evernote/client/android/ClientFactory;)V

    .line 62
    return-void
.end method


# virtual methods
.method public createNote(Lcom/evernote/edam/type/Note;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Note;
    .locals 4
    .param p1, "note"    # Lcom/evernote/edam/type/Note;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/evernote/client/android/ClientFactory;->createLinkedNoteStoreClient(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;

    move-result-object v0

    .line 82
    .local v0, "sharedNoteStore":Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v1

    .line 84
    .local v1, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/evernote/edam/type/Note;->setNotebookGuid(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    .line 87
    return-object p1
.end method

.method public createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 1
    .param p1, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object v0

    return-object v0
.end method

.method public deleteNotebook(Lcom/evernote/edam/type/LinkedNotebook;)I
    .locals 6
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/evernote/client/android/ClientFactory;->createLinkedNoteStoreClient(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;

    move-result-object v1

    .line 134
    .local v1, "sharedNoteStore":Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v3

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v2

    .line 136
    .local v2, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/evernote/edam/type/SharedNotebook;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    .line 137
    .local v0, "ids":[Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I

    .line 138
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getCorrespondingNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Notebook;
    .locals 5
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/evernote/client/android/ClientFactory;->createLinkedNoteStoreClient(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;

    move-result-object v0

    .line 152
    .local v0, "sharedNoteStore":Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v1

    .line 154
    .local v1, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object v2

    return-object v2
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "linkedNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;"
    invoke-super {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->listNotebooks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    return-object v0

    .line 103
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/LinkedNotebook;

    .line 104
    .local v1, "notebook":Lcom/evernote/edam/type/LinkedNotebook;
    invoke-virtual {v1}, Lcom/evernote/edam/type/LinkedNotebook;->isSetBusinessId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
