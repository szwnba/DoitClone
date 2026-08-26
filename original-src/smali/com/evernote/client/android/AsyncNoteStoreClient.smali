.class public Lcom/evernote/client/android/AsyncNoteStoreClient;
.super Ljava/lang/Object;
.source "AsyncNoteStoreClient.java"


# instance fields
.field protected mAuthenticationToken:Ljava/lang/String;

.field protected final mClient:Lcom/evernote/edam/notestore/NoteStore$Client;


# direct methods
.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p3, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-direct {v0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    .line 57
    iput-object p3, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "prot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-direct {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    .line 52
    iput-object p2, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "noteKey"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "authenticateToSharedNote"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method public authenticateToSharedNotebook(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "shareKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "authenticateToSharedNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    return-void
.end method

.method public copyNote(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "noteGuid"    # Ljava/lang/String;
    .param p2, "toNotebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "copyNote"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public createLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/LinkedNotebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createLinkedNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    return-void
.end method

.method public createNote(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Note;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public createNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Notebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public createSearch(Lcom/evernote/edam/type/SavedSearch;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SavedSearch;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/SavedSearch;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createSearch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public createSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SharedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/SharedNotebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createSharedNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public createTag(Lcom/evernote/edam/type/Tag;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Tag;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Tag;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "createTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public deleteNote(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "deleteNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public emailNote(Lcom/evernote/edam/notestore/NoteEmailParameters;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "parameters"    # Lcom/evernote/edam/notestore/NoteEmailParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteEmailParameters;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "emailNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method public expungeInactiveNotes(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeInactiveNotes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public expungeLinkedNotebook(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeLinkedNotebook"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    return-void
.end method

.method public expungeNote(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public expungeNotebook(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public expungeNotes(Ljava/util/List;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeNotes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public expungeSearch(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeSearch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public expungeSharedNotebooks(Ljava/util/List;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeSharedNotebooks"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    return-void
.end method

.method public expungeTag(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "expungeTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public findNoteCounts(Lcom/evernote/edam/notestore/NoteFilter;ZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p2, "withTrash"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "Z",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/NoteCollectionCounts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/NoteCollectionCounts;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "findNoteCounts"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public findNoteOffset(Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "findNoteOffset"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public findNotes(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p2, "offset"    # I
    .param p3, "maxNotes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "II",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/NoteList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/NoteList;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "findNotes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
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
    .line 354
    .local p5, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/NotesMetadataList;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "findNotesMetadata"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v0, p5, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public findRelated(Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "query"    # Lcom/evernote/edam/notestore/RelatedQuery;
    .param p2, "resultSpec"    # Lcom/evernote/edam/notestore/RelatedResultSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/RelatedQuery;",
            "Lcom/evernote/edam/notestore/RelatedResultSpec;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/RelatedResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/RelatedResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "findRelated"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    return-void
.end method

.method getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Lcom/evernote/edam/notestore/NoteStore$Client;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    return-object v0
.end method

.method public getDefaultNotebook(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Notebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getDefaultNotebook"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public getFilteredSyncChunk(IILcom/evernote/edam/notestore/SyncChunkFilter;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "afterUSN"    # I
    .param p2, "maxEntries"    # I
    .param p3, "filter"    # Lcom/evernote/edam/notestore/SyncChunkFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/evernote/edam/notestore/SyncChunkFilter;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncChunk;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getFilteredSyncChunk"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public getLinkedNotebookSyncChunk(Lcom/evernote/edam/type/LinkedNotebook;IIZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .param p2, "afterUSN"    # I
    .param p3, "maxEntries"    # I
    .param p4, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "IIZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p5, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncChunk;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getLinkedNotebookSyncChunk"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p5, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public getLinkedNotebookSyncState(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncState;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getLinkedNotebookSyncState"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public getNote(Ljava/lang/String;ZZZZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "withContent"    # Z
    .param p3, "withResourcesData"    # Z
    .param p4, "withResourcesRecognition"    # Z
    .param p5, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p6, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNote"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p6, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public getNoteApplicationData(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/LazyMap;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteApplicationData"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method public getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteApplicationDataEntry"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public getNoteContent(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteContent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public getNoteSearchText(Ljava/lang/String;ZZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "noteOnly"    # Z
    .param p3, "tokenizeForIndexing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteSearchText"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public getNoteTagNames(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteTagNames"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public getNoteVersion(Ljava/lang/String;IZZZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "noteGuid"    # Ljava/lang/String;
    .param p2, "updateSequenceNum"    # I
    .param p3, "withResourcesData"    # Z
    .param p4, "withResourcesRecognition"    # Z
    .param p5, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p6, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNoteVersion"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p6, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public getNotebook(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Notebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public getPublicNotebook(ILjava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "publicUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Notebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getPublicNotebook"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method public getResource(Ljava/lang/String;ZZZZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "withData"    # Z
    .param p3, "withRecognition"    # Z
    .param p4, "withAttributes"    # Z
    .param p5, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p6, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Resource;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResource"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p6, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method public getResourceAlternateData(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<[B>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceAlternateData"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public getResourceApplicationData(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/LazyMap;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceApplicationData"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceApplicationDataEntry"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method public getResourceAttributes(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/ResourceAttributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/ResourceAttributes;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceAttributes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    return-void
.end method

.method public getResourceByHash(Ljava/lang/String;[BZZZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "noteGuid"    # Ljava/lang/String;
    .param p2, "contentHash"    # [B
    .param p3, "withData"    # Z
    .param p4, "withRecognition"    # Z
    .param p5, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BZZZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p6, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Resource;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceByHash"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p6, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public getResourceData(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<[B>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceData"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method public getResourceRecognition(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<[B>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceRecognition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    return-void
.end method

.method public getResourceSearchText(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getResourceSearchText"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public getSearch(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/SavedSearch;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getSearch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public getSharedNotebookByAuth(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/SharedNotebook;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getSharedNotebookByAuth"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method public getSyncChunk(IIZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "afterUSN"    # I
    .param p2, "maxEntries"    # I
    .param p3, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncChunk;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getSyncChunk"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public getSyncState(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncState;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getSyncState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public getSyncStateWithMetrics(Lcom/evernote/edam/notestore/ClientUsageMetrics;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "clientMetrics"    # Lcom/evernote/edam/notestore/ClientUsageMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/ClientUsageMetrics;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/notestore/SyncState;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getSyncStateWithMetrics"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public getTag(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Tag;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "getTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public listLinkedNotebooks(Lcom/evernote/client/android/OnClientCallback;)V
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
    .line 747
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listLinkedNotebooks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public listNoteVersions(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "noteGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/notestore/NoteVersionId;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listNoteVersions"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method public listNotebooks(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listNotebooks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public listSearches(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listSearches"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public listSharedNotebooks(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/SharedNotebook;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listSharedNotebooks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public listTags(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/Tag;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listTags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public listTagsByNotebook(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "notebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/util/List<Lcom/evernote/edam/type/Tag;>;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "listTagsByNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "notebookGuid"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p3, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "sendMessageToSharedNotebookMembers"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    return-void
.end method

.method setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "setNoteApplicationDataEntry"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "setResourceApplicationDataEntry"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    return-void
.end method

.method public setSharedNotebookRecipientSettings(JLcom/evernote/edam/type/SharedNotebookRecipientSettings;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "sharedNotebookId"    # J
    .param p3, "recipientSettings"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/evernote/edam/type/SharedNotebookRecipientSettings;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 840
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "setSharedNotebookRecipientSettings"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    return-void
.end method

.method public shareNote(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "shareNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    return-void
.end method

.method public stopSharingNote(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "stopSharingNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    return-void
.end method

.method public unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "unsetNoteApplicationDataEntry"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p3, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "unsetResourceApplicationDataEntry"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method public untagAll(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "untagAll"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public updateLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
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
    .line 737
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateLinkedNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    return-void
.end method

.method public updateNote(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Note;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/Note;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateNote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public updateNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public updateResource(Lcom/evernote/edam/type/Resource;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "resource"    # Lcom/evernote/edam/type/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Resource;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateResource"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public updateSearch(Lcom/evernote/edam/type/SavedSearch;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SavedSearch;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateSearch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public updateSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SharedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateSharedNotebook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    return-void
.end method

.method public updateTag(Lcom/evernote/edam/type/Tag;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Tag;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mClient:Lcom/evernote/edam/notestore/NoteStore$Client;

    const-string v1, "updateTag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncNoteStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method
