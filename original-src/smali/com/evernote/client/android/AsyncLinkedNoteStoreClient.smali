.class public Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
.super Ljava/lang/Object;
.source "AsyncLinkedNoteStoreClient.java"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mClientFactory:Lcom/evernote/client/android/ClientFactory;

.field private mLinkedStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;

.field private mMainNoteStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;


# direct methods
.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;Lcom/evernote/client/android/ClientFactory;)V
    .locals 1
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/evernote/client/android/AsyncNoteStoreClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/evernote/client/android/AsyncNoteStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mLinkedStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;

    .line 68
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/ClientFactory;->createNoteStoreClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mMainNoteStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;

    .line 69
    iput-object p3, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mAuthToken:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    .line 71
    return-void
.end method


# virtual methods
.method public createNote(Lcom/evernote/edam/type/Note;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Note;
    .locals 3
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
    .line 124
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    .line 125
    .local v0, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evernote/edam/type/Note;->setNotebookGuid(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object v1

    return-object v1
.end method

.method public createNoteAsync(Lcom/evernote/edam/type/Note;Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "note"    # Lcom/evernote/edam/type/Note;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Note;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    const-string v0, "createNote"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, p3, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 5
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
    .line 171
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object v1

    .line 173
    .local v1, "originalNotebook":Lcom/evernote/edam/type/Notebook;
    invoke-virtual {v1}, Lcom/evernote/edam/type/Notebook;->getSharedNotebooks()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SharedNotebook;

    .line 174
    .local v2, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    new-instance v0, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v0}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    .line 175
    .local v0, "linkedNotebook":Lcom/evernote/edam/type/LinkedNotebook;
    invoke-virtual {v2}, Lcom/evernote/edam/type/SharedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/evernote/edam/type/LinkedNotebook;->setShareKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/evernote/edam/type/LinkedNotebook;->setShareName(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessUser()Lcom/evernote/edam/type/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/evernote/edam/type/LinkedNotebook;->setUsername(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessUser()Lcom/evernote/edam/type/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/edam/type/User;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/evernote/edam/type/LinkedNotebook;->setShardId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/evernote/edam/notestore/NoteStore$Client;->createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object v3

    return-object v3
.end method

.method public createNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/LinkedNotebook;>;"
    const-string v0, "createNotebook"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
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
    .line 202
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v1

    .line 204
    .local v1, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 205
    .local v0, "ids":[Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I

    .line 206
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteNotebookAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    const-string v0, "deleteNotebook"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 6
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p2, "offset"    # I
    .param p3, "maxNotes"    # I
    .param p4, "resultSpec"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v0

    return-object v0
.end method

.method public findNotesMetadataAsync(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p2, "offset"    # I
    .param p3, "maxNotes"    # I
    .param p4, "resultSpec"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "II",
            "Lcom/evernote/edam/notestore/NotesMetadataResultSpec;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p5, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/NotesMetadataList;>;"
    const-string v0, "findNotesMetadata"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, p5, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mLinkedStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;

    return-object v0
.end method

.method getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mMainNoteStoreClient:Lcom/evernote/client/android/AsyncNoteStoreClient;

    return-object v0
.end method

.method getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method getClientFactory()Lcom/evernote/client/android/ClientFactory;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mClientFactory:Lcom/evernote/client/android/ClientFactory;

    return-object v0
.end method

.method public getCorrespondingNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Notebook;
    .locals 4
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
    .line 229
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    .line 230
    .local v0, "sharedNotebook":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object v1

    return-object v1
.end method

.method public getCorrespondingNotebookAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Notebook;>;"
    const-string v0, "getCorrespondingNotebook"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public isNotebookWritable(Lcom/evernote/edam/type/LinkedNotebook;)Z
    .locals 2
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getCorrespondingNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    .line 253
    .local v0, "notebook":Lcom/evernote/edam/type/Notebook;
    invoke-virtual {v0}, Lcom/evernote/edam/type/Notebook;->getRestrictions()Lcom/evernote/edam/type/NotebookRestrictions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/edam/type/NotebookRestrictions;->isNoCreateNotes()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNotebookWritableAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Boolean;>;"
    const-string v0, "isLinkedNotebookWritable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 2
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
    .line 148
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$Client;->listLinkedNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listNotebooksAsync(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;>;"
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncPersonalClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v0

    const-string v1, "listNotebooks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->mAuthToken:Ljava/lang/String;

    .line 91
    return-void
.end method
