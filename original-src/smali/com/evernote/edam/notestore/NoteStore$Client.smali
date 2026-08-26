.class public Lcom/evernote/edam/notestore/NoteStore$Client;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lcom/evernote/thrift/TServiceClient;
.implements Lcom/evernote/edam/notestore/NoteStore$Iface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field protected iprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected oprot_:Lcom/evernote/thrift/protocol/TProtocol;

.field protected seqid_:I


# direct methods
.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0
    .param p1, "prot"    # Lcom/evernote/thrift/protocol/TProtocol;

    .prologue
    .line 25
    invoke-direct {p0, p1, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 0
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 31
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 32
    return-void
.end method


# virtual methods
.method public authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "noteKey"    # Ljava/lang/String;
    .param p3, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3399
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_authenticateToSharedNote()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p1, "shareKey"    # Ljava/lang/String;
    .param p2, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3176
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_authenticateToSharedNotebook()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "toNotebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2011
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_copyNote()Lcom/evernote/edam/type/Note;

    move-result-object v0

    return-object v0
.end method

.method public createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2993
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 2994
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object v0

    return-object v0
.end method

.method public createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1739
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V

    .line 1740
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createNote()Lcom/evernote/edam/type/Note;

    move-result-object v0

    return-object v0
.end method

.method public createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V

    .line 452
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    return-object v0
.end method

.method public createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V

    .line 990
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createSearch()Lcom/evernote/edam/type/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2715
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V

    .line 2716
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createSharedNotebook()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    return-object v0
.end method

.method public createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V

    .line 721
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_createTag()Lcom/evernote/edam/type/Tag;

    move-result-object v0

    return-object v0
.end method

.method public deleteNote(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1831
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_deleteNote(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_deleteNote()I

    move-result v0

    return v0
.end method

.method public emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/evernote/edam/notestore/NoteEmailParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3267
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    .line 3268
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_emailNote()V

    .line 3269
    return-void
.end method

.method public expungeInactiveNotes(Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1969
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeInactiveNotes(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeInactiveNotes()I

    move-result v0

    return v0
.end method

.method public expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3130
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeLinkedNotebook()I

    move-result v0

    return v0
.end method

.method public expungeNote(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1877
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNote(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNote()I

    move-result v0

    return v0
.end method

.method public expungeNotebook(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNotebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNotebook()I

    move-result v0

    return v0
.end method

.method public expungeNotes(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1923
    .local p2, "noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeNotes(Ljava/lang/String;Ljava/util/List;)V

    .line 1924
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeNotes()I

    move-result v0

    return v0
.end method

.method public expungeSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeSearch()I

    move-result v0

    return v0
.end method

.method public expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
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
    .line 2947
    .local p2, "sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)V

    .line 2948
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeSharedNotebooks()I

    move-result v0

    return v0
.end method

.method public expungeTag(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_expungeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_expungeTag()I

    move-result v0

    return v0
.end method

.method public findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "withTrash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)V

    .line 1269
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNoteCounts()Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object v0

    return-object v0
.end method

.method public findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNoteOffset()I

    move-result v0

    return v0
.end method

.method public findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "offset"    # I
    .param p4, "maxNotes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)V

    .line 1125
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNotes()Lcom/evernote/edam/notestore/NoteList;

    move-result-object v0

    return-object v0
.end method

.method public findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "offset"    # I
    .param p4, "maxNotes"    # I
    .param p5, "resultSpec"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    .line 1220
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findNotesMetadata()Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v0

    return-object v0
.end method

.method public findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/evernote/edam/notestore/RelatedQuery;
    .param p3, "resultSpec"    # Lcom/evernote/edam/notestore/RelatedResultSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3446
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    .line 3447
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_findRelated()Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getDefaultNotebook(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getDefaultNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "afterUSN"    # I
    .param p3, "maxEntries"    # I
    .param p4, "filter"    # Lcom/evernote/edam/notestore/SyncChunkFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)V

    .line 182
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getFilteredSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v0

    return-object v0
.end method

.method public getInputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object v0
.end method

.method public getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .param p3, "afterUSN"    # I
    .param p4, "maxEntries"    # I
    .param p5, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V

    .line 273
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getLinkedNotebookSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 227
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getLinkedNotebookSyncState()Lcom/evernote/edam/notestore/SyncState;

    move-result-object v0

    return-object v0
.end method

.method public getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "withContent"    # Z
    .param p4, "withResourcesData"    # Z
    .param p5, "withResourcesRecognition"    # Z
    .param p6, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 1316
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNote()Lcom/evernote/edam/type/Note;

    move-result-object v0

    return-object v0
.end method

.method public getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteApplicationData()Lcom/evernote/edam/type/LazyMap;

    move-result-object v0

    return-object v0
.end method

.method public getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteApplicationDataEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "noteOnly"    # Z
    .param p4, "tokenizeForIndexing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1599
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1600
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteSearchText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteTagNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "updateSequenceNum"    # I
    .param p4, "withResourcesData"    # Z
    .param p5, "withResourcesRecognition"    # Z
    .param p6, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2104
    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 2105
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNoteVersion()Lcom/evernote/edam/type/Note;

    move-result-object v0

    return-object v0
.end method

.method public getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getNotebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    return-object v0
.end method

.method public getOutputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object v0
.end method

.method public getPublicNotebook(ILjava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "publicUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2672
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getPublicNotebook(ILjava/lang/String;)V

    .line 2673
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getPublicNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "withData"    # Z
    .param p4, "withRecognition"    # Z
    .param p5, "withAttributes"    # Z
    .param p6, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2154
    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 2155
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResource()Lcom/evernote/edam/type/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2580
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceAlternateData()[B

    move-result-object v0

    return-object v0
.end method

.method public getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2204
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceApplicationData()Lcom/evernote/edam/type/LazyMap;

    move-result-object v0

    return-object v0
.end method

.method public getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2250
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceApplicationDataEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2626
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceAttributes()Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "contentHash"    # [B
    .param p4, "withData"    # Z
    .param p5, "withRecognition"    # Z
    .param p6, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2484
    invoke-virtual/range {p0 .. p6}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)V

    .line 2485
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceByHash()Lcom/evernote/edam/type/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResourceData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2438
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceData()[B

    move-result-object v0

    return-object v0
.end method

.method public getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2534
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceRecognition()[B

    move-result-object v0

    return-object v0
.end method

.method public getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResourceSearchText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearch(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSearch()Lcom/evernote/edam/type/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3222
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSharedNotebookByAuth(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    return-object v0
.end method

.method public getSyncChunk(Ljava/lang/String;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "afterUSN"    # I
    .param p3, "maxEntries"    # I
    .param p4, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncChunk(Ljava/lang/String;IIZ)V

    .line 137
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v0

    return-object v0
.end method

.method public getSyncState(Ljava/lang/String;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncState(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncState()Lcom/evernote/edam/notestore/SyncState;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "clientMetrics"    # Lcom/evernote/edam/notestore/ClientUsageMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)V

    .line 94
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getSyncStateWithMetrics()Lcom/evernote/edam/notestore/SyncState;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_getTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getTag()Lcom/evernote/edam/type/Tag;

    move-result-object v0

    return-object v0
.end method

.method public listLinkedNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
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
    .line 3085
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listLinkedNotebooks(Ljava/lang/String;)V

    .line 3086
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listLinkedNotebooks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listNoteVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2058
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listNoteVersions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listNoteVersions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listNotebooks(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listNotebooks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listSearches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listSearches(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listSearches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listSharedNotebooks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
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
    .line 2902
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listSharedNotebooks(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listSharedNotebooks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listTags(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listTags(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_listTagsByNotebook()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public recv_authenticateToSharedNote()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3417
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3418
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3419
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3420
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3421
    throw v2

    .line 3423
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3424
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "authenticateToSharedNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3426
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;-><init>()V

    .line 3427
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3428
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3429
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3430
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27700(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 3432
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27800(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3433
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27800(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3435
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3436
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$27900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3438
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$28000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3439
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$28000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3441
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "authenticateToSharedNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_authenticateToSharedNotebook()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3193
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3194
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3195
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3196
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3197
    throw v2

    .line 3199
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3200
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "authenticateToSharedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3202
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;-><init>()V

    .line 3203
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3204
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3205
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3206
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$25900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 3208
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3209
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3211
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26100(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3212
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26100(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3214
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26200(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3215
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;->access$26200(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3217
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "authenticateToSharedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_copyNote()Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2029
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2030
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2031
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2032
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2033
    throw v2

    .line 2035
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2036
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "copyNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2038
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;-><init>()V

    .line 2039
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$copyNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2040
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2041
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2042
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16000(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    return-object v3

    .line 2044
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16100(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2045
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16100(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2047
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16200(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2048
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16200(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2050
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16300(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2051
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_result;->access$16300(Lcom/evernote/edam/notestore/NoteStore$copyNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2053
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "copyNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3010
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3011
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3012
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3013
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3014
    throw v2

    .line 3016
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3017
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createLinkedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3019
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;-><init>()V

    .line 3020
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3021
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3022
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3023
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24300(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object v3

    return-object v3

    .line 3025
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24400(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3026
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24400(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3028
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24500(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3029
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24500(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3031
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24600(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3032
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->access$24600(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3034
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createLinkedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createNote()Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1756
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1757
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1758
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1759
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1760
    throw v2

    .line 1762
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1763
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1765
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;-><init>()V

    .line 1766
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1767
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1768
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1769
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13700(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    return-object v3

    .line 1771
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13800(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1772
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13800(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1774
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13900(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1775
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$13900(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1777
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$14000(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1778
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->access$14000(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1780
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 469
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 470
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 471
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 472
    throw v2

    .line 474
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 475
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 477
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;-><init>()V

    .line 478
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 479
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 480
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3000(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object v3

    return-object v3

    .line 483
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3100(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 484
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3100(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 486
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3200(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 487
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;->access$3200(Lcom/evernote/edam/notestore/NoteStore$createNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 489
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createSearch()Lcom/evernote/edam/type/SavedSearch;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1007
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1009
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1010
    throw v2

    .line 1012
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1013
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createSearch failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1015
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;-><init>()V

    .line 1016
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createSearch_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1017
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1018
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7400(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object v3

    return-object v3

    .line 1021
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7500(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1022
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7500(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1024
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7600(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1025
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_result;->access$7600(Lcom/evernote/edam/notestore/NoteStore$createSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1027
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createSearch failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createSharedNotebook()Lcom/evernote/edam/type/SharedNotebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2732
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2733
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2734
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2735
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2736
    throw v2

    .line 2738
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2739
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createSharedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2741
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;-><init>()V

    .line 2742
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2743
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2744
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2745
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$21900(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v3

    return-object v3

    .line 2747
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22000(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2748
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22000(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2750
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22100(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2751
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22100(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2753
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22200(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2754
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->access$22200(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2756
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createSharedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_createTag()Lcom/evernote/edam/type/Tag;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 737
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 738
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 739
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 740
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 741
    throw v2

    .line 743
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 744
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "createTag failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 746
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;-><init>()V

    .line 747
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$createTag_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 748
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 749
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5200(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/type/Tag;

    move-result-object v3

    return-object v3

    .line 752
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5300(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 753
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5300(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 755
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5400(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 756
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5400(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 758
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5500(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 759
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->access$5500(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 761
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "createTag failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_deleteNote()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1848
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1849
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1850
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1851
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1852
    throw v2

    .line 1854
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1855
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "deleteNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1857
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;-><init>()V

    .line 1858
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1859
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1860
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1861
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14500(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)I

    move-result v3

    return v3

    .line 1863
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14600(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1864
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14600(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1866
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14700(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1867
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14700(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1869
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14800(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1870
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;->access$14800(Lcom/evernote/edam/notestore/NoteStore$deleteNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1872
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "deleteNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_emailNote()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3284
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3285
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3286
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3287
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3288
    throw v2

    .line 3290
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3291
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "emailNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3293
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;-><init>()V

    .line 3294
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$emailNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3295
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3296
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26700(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3297
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26700(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3299
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26800(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3300
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26800(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3302
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26900(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3303
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_result;->access$26900(Lcom/evernote/edam/notestore/NoteStore$emailNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3305
    :cond_4
    return-void
.end method

.method public recv_expungeInactiveNotes()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1985
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1986
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1987
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1988
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1989
    throw v2

    .line 1991
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1992
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeInactiveNotes failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1994
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;-><init>()V

    .line 1995
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1996
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1997
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1998
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15700(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)I

    move-result v3

    return v3

    .line 2000
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15800(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2001
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15800(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2003
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15900(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2004
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->access$15900(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2006
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeInactiveNotes failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeLinkedNotebook()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3147
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3148
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3149
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3150
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3151
    throw v2

    .line 3153
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3154
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeLinkedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3156
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;-><init>()V

    .line 3157
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3158
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3159
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3160
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25500(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)I

    move-result v3

    return v3

    .line 3162
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25600(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3163
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25600(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3165
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25700(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3166
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25700(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3168
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25800(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3169
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;->access$25800(Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3171
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeLinkedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeNote()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1894
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1895
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1896
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1897
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1898
    throw v2

    .line 1900
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1901
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1903
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;-><init>()V

    .line 1904
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1905
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1906
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1907
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$14900(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)I

    move-result v3

    return v3

    .line 1909
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15000(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1910
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15000(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1912
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15100(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1913
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15100(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1915
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15200(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1916
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;->access$15200(Lcom/evernote/edam/notestore/NoteStore$expungeNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1918
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeNotebook()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 558
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 559
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 560
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 561
    throw v2

    .line 563
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 564
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 566
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;-><init>()V

    .line 567
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 568
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 569
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3700(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)I

    move-result v3

    return v3

    .line 572
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3800(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 573
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3800(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 575
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3900(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 576
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$3900(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 578
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$4000(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 579
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;->access$4000(Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 581
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeNotes()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1941
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1942
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1943
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1944
    throw v2

    .line 1946
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1947
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeNotes failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1949
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;-><init>()V

    .line 1950
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1951
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1952
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1953
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15300(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)I

    move-result v3

    return v3

    .line 1955
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15400(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1956
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15400(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1958
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15500(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1959
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15500(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1961
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15600(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1962
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;->access$15600(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1964
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeNotes failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeSearch()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1096
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1097
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1098
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1099
    throw v2

    .line 1101
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1102
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeSearch failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1104
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;-><init>()V

    .line 1105
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1106
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1107
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1108
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8100(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)I

    move-result v3

    return v3

    .line 1110
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8200(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1111
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8200(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1113
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8300(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1114
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8300(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1116
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8400(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1117
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$8400(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1119
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeSearch failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeSharedNotebooks()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2964
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2965
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2966
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2967
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2968
    throw v2

    .line 2970
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2971
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeSharedNotebooks failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2973
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;-><init>()V

    .line 2974
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2975
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2976
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2977
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$23900(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)I

    move-result v3

    return v3

    .line 2979
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24000(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2980
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24000(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2982
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24100(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2983
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24100(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2985
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24200(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2986
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;->access$24200(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2988
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeSharedNotebooks failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_expungeTag()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 873
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 874
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 875
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 876
    throw v2

    .line 878
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 879
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "expungeTag failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 881
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;-><init>()V

    .line 882
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 883
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 884
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 885
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6300(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)I

    move-result v3

    return v3

    .line 887
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6400(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 888
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6400(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 890
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6500(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 891
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6500(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 893
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6600(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 894
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;->access$6600(Lcom/evernote/edam/notestore/NoteStore$expungeTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 896
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "expungeTag failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_findNoteCounts()Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1287
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1288
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1289
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1290
    throw v2

    .line 1292
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1293
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "findNoteCounts failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1295
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;-><init>()V

    .line 1296
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1297
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1298
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1299
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9700(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object v3

    return-object v3

    .line 1301
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9800(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1302
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9800(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1304
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9900(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1305
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$9900(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1307
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$10000(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1308
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->access$10000(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1310
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "findNoteCounts failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_findNoteOffset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1191
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1192
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1193
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1194
    throw v2

    .line 1196
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1197
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "findNoteOffset failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1199
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;-><init>()V

    .line 1200
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1201
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1202
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1203
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$8900(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)I

    move-result v3

    return v3

    .line 1205
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9000(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1206
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9000(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1208
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9100(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1209
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9100(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1211
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9200(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1212
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;->access$9200(Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1214
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "findNoteOffset failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_findNotes()Lcom/evernote/edam/notestore/NoteList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1144
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1145
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1146
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1147
    throw v2

    .line 1149
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1150
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "findNotes failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1152
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;-><init>()V

    .line 1153
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$findNotes_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1154
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1155
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1156
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8500(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/notestore/NoteList;

    move-result-object v3

    return-object v3

    .line 1158
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8600(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1159
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8600(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1161
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8700(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1162
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8700(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1164
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8800(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1165
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_result;->access$8800(Lcom/evernote/edam/notestore/NoteStore$findNotes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1167
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "findNotes failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_findNotesMetadata()Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1240
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1241
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1242
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1243
    throw v2

    .line 1245
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1246
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "findNotesMetadata failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1248
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;-><init>()V

    .line 1249
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1250
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1251
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1252
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9300(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v3

    return-object v3

    .line 1254
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9400(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1255
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9400(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1257
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9500(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1258
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9500(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1260
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9600(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1261
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->access$9600(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1263
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "findNotesMetadata failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_findRelated()Lcom/evernote/edam/notestore/RelatedResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3464
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3465
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3466
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3467
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3468
    throw v2

    .line 3470
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3471
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "findRelated failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3473
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;-><init>()V

    .line 3474
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$findRelated_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3475
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3476
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3477
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28100(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object v3

    return-object v3

    .line 3479
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28200(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3480
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28200(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3482
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28300(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3483
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28300(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3485
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28400(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3486
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->access$28400(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3488
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "findRelated failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getDefaultNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 426
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 427
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 428
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 429
    throw v2

    .line 431
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 432
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getDefaultNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 434
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;-><init>()V

    .line 435
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 436
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 437
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2700(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object v3

    return-object v3

    .line 440
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2800(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 441
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2800(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 443
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2900(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 444
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->access$2900(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 446
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getDefaultNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getFilteredSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 201
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 202
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 203
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 204
    throw v2

    .line 206
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 207
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getFilteredSyncChunk failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 209
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;-><init>()V

    .line 210
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 211
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 212
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$900(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v3

    return-object v3

    .line 215
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1000(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 216
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1000(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 218
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1100(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 219
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->access$1100(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 221
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getFilteredSyncChunk failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getLinkedNotebookSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 293
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 294
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 295
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 296
    throw v2

    .line 298
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 299
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getLinkedNotebookSyncChunk failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 301
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;-><init>()V

    .line 302
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 303
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 304
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1600(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v3

    return-object v3

    .line 307
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1700(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 308
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1700(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 310
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1800(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 311
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1800(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 313
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1900(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 314
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;->access$1900(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 316
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getLinkedNotebookSyncChunk failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getLinkedNotebookSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 244
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 245
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 246
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 247
    throw v2

    .line 249
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 250
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getLinkedNotebookSyncState failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 252
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;-><init>()V

    .line 253
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 254
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 255
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1200(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object v3

    return-object v3

    .line 258
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1300(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 259
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1300(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 261
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1400(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 262
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1400(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 264
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1500(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 265
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->access$1500(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 267
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getLinkedNotebookSyncState failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNote()Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1337
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1338
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1339
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1340
    throw v2

    .line 1342
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1343
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1345
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;-><init>()V

    .line 1346
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1347
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1348
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1349
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10100(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    return-object v3

    .line 1351
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10200(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1352
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10200(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1354
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10300(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1355
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10300(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1357
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10400(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1358
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_result;->access$10400(Lcom/evernote/edam/notestore/NoteStore$getNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1360
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1383
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1384
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1385
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1386
    throw v2

    .line 1388
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1389
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteApplicationData failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1391
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;-><init>()V

    .line 1392
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1393
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1394
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1395
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10500(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/type/LazyMap;

    move-result-object v3

    return-object v3

    .line 1397
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10600(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1398
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10600(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1400
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10700(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1401
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10700(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1403
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10800(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1404
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;->access$10800(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1406
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteApplicationData failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteApplicationDataEntry()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1430
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1431
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1432
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1433
    throw v2

    .line 1435
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1436
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1438
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;-><init>()V

    .line 1439
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1440
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1441
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1442
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$10900(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1444
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11000(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1445
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11000(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1447
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11100(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1448
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11100(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1450
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11200(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1451
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;->access$11200(Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1453
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteContent()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1571
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1572
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1573
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1574
    throw v2

    .line 1576
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1577
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteContent failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1579
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;-><init>()V

    .line 1580
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1581
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1582
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1583
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12100(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1585
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12200(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1586
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12200(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1588
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12300(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1589
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12300(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1591
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12400(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1592
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->access$12400(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1594
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteContent failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteSearchText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1618
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1619
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1620
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1621
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1622
    throw v2

    .line 1624
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1625
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteSearchText failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1627
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;-><init>()V

    .line 1628
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1629
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1630
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1631
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12500(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1633
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12600(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1634
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12600(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1636
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12700(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1637
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12700(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1639
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12800(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1640
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;->access$12800(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1642
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteSearchText failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteTagNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1710
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1711
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1712
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1713
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1714
    throw v2

    .line 1716
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1717
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteTagNames failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1719
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;-><init>()V

    .line 1720
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1721
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1722
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1723
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13300(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1725
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13400(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1726
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13400(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1728
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13500(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1729
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13500(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1731
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13600(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1732
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->access$13600(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1734
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteTagNames failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteVersion()Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2125
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2126
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2127
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2128
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2129
    throw v2

    .line 2131
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2132
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteVersion failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2134
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;-><init>()V

    .line 2135
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2136
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2137
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2138
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16800(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    return-object v3

    .line 2140
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16900(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2141
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$16900(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2143
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17000(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2144
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17000(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2146
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17100(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2147
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->access$17100(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2149
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteVersion failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 381
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 382
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 383
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 384
    throw v2

    .line 386
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 387
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 389
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;-><init>()V

    .line 390
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 391
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 392
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2300(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object v3

    return-object v3

    .line 395
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2400(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 396
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2400(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 398
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2500(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 399
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2500(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 401
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2600(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 402
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->access$2600(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 404
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getPublicNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2689
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2690
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2691
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2692
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2693
    throw v2

    .line 2695
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2696
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getPublicNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2698
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;-><init>()V

    .line 2699
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2700
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2701
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2702
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21600(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/type/Notebook;

    move-result-object v3

    return-object v3

    .line 2704
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21700(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2705
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21700(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2707
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21800(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2708
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->access$21800(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2710
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getPublicNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResource()Lcom/evernote/edam/type/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2175
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2176
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2177
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2178
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2179
    throw v2

    .line 2181
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2182
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResource failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2184
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResource_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;-><init>()V

    .line 2185
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResource_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2186
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2187
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2188
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17200(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/type/Resource;

    move-result-object v3

    return-object v3

    .line 2190
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17300(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2191
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17300(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2193
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17400(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2194
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17400(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2196
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17500(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2197
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_result;->access$17500(Lcom/evernote/edam/notestore/NoteStore$getResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2199
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResource failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceAlternateData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2597
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2598
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2599
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2600
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2601
    throw v2

    .line 2603
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2604
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceAlternateData failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2606
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;-><init>()V

    .line 2607
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2608
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2609
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2610
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20800(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)[B

    move-result-object v3

    return-object v3

    .line 2612
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20900(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2613
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$20900(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2615
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21000(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2616
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21000(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2618
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21100(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2619
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;->access$21100(Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2621
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceAlternateData failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2221
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2222
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2223
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2224
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2225
    throw v2

    .line 2227
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2228
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceApplicationData failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2230
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;-><init>()V

    .line 2231
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2232
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2233
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2234
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17600(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/type/LazyMap;

    move-result-object v3

    return-object v3

    .line 2236
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17700(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2237
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17700(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2239
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17800(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2240
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17800(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2242
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17900(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2243
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->access$17900(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2245
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceApplicationData failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceApplicationDataEntry()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2268
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2269
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2270
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2271
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2272
    throw v2

    .line 2274
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2275
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2277
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;-><init>()V

    .line 2278
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2279
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2280
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2281
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18000(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2283
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18100(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2284
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18100(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2286
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18200(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2287
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18200(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2289
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18300(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2290
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;->access$18300(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2292
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceAttributes()Lcom/evernote/edam/type/ResourceAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2643
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2644
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2645
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2646
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2647
    throw v2

    .line 2649
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2650
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceAttributes failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2652
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;-><init>()V

    .line 2653
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2654
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2655
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2656
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21200(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object v3

    return-object v3

    .line 2658
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21300(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2659
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21300(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2661
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21400(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2662
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21400(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2664
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21500(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2665
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;->access$21500(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2667
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceAttributes failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceByHash()Lcom/evernote/edam/type/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2505
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2506
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2507
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2508
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2509
    throw v2

    .line 2511
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2512
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceByHash failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2514
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;-><init>()V

    .line 2515
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2516
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2517
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2518
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20000(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/type/Resource;

    move-result-object v3

    return-object v3

    .line 2520
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20100(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2521
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20100(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2523
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20200(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2524
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20200(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2526
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20300(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2527
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->access$20300(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2529
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceByHash failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2455
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2456
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2457
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2458
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2459
    throw v2

    .line 2461
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2462
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceData failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2464
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;-><init>()V

    .line 2465
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2466
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2467
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2468
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19600(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)[B

    move-result-object v3

    return-object v3

    .line 2470
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19700(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2471
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19700(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2473
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19800(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2474
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19800(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2476
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19900(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2477
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;->access$19900(Lcom/evernote/edam/notestore/NoteStore$getResourceData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2479
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceData failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceRecognition()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2551
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2552
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2553
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2554
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2555
    throw v2

    .line 2557
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2558
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceRecognition failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2560
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;-><init>()V

    .line 2561
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2562
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2563
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2564
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20400(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)[B

    move-result-object v3

    return-object v3

    .line 2566
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20500(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2567
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20500(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2569
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20600(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2570
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20600(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2572
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20700(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2573
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;->access$20700(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2575
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceRecognition failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getResourceSearchText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1664
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1665
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1666
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1667
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1668
    throw v2

    .line 1670
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1671
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getResourceSearchText failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1673
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;-><init>()V

    .line 1674
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1675
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1676
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1677
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$12900(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1679
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13000(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1680
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13000(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1682
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13100(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1683
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13100(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1685
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13200(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1686
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;->access$13200(Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1688
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getResourceSearchText failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getSearch()Lcom/evernote/edam/type/SavedSearch;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 961
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 962
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 963
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 964
    throw v2

    .line 966
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 967
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getSearch failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 969
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;-><init>()V

    .line 970
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getSearch_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 971
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 972
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 973
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7000(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object v3

    return-object v3

    .line 975
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7100(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 976
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7100(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 978
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7200(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 979
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7200(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 981
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7300(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 982
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->access$7300(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 984
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getSearch failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3238
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3239
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3240
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3241
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3242
    throw v2

    .line 3244
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3245
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getSharedNotebookByAuth failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3247
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;-><init>()V

    .line 3248
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3249
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3250
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3251
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26300(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v3

    return-object v3

    .line 3253
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26400(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3254
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26400(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3256
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26500(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3257
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26500(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3259
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26600(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3260
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->access$26600(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3262
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getSharedNotebookByAuth failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getSyncChunk()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 156
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 157
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 158
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 159
    throw v2

    .line 161
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 162
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getSyncChunk failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 164
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;-><init>()V

    .line 165
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 166
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 167
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$600(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v3

    return-object v3

    .line 170
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$700(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 171
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$700(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 173
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$800(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 174
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->access$800(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 176
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getSyncChunk failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 68
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 69
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 70
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 71
    throw v2

    .line 73
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 74
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getSyncState failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 76
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;-><init>()V

    .line 77
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 78
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 79
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$000(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object v3

    return-object v3

    .line 82
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$100(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 83
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$100(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 85
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$200(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 86
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->access$200(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 88
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getSyncState failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getSyncStateWithMetrics()Lcom/evernote/edam/notestore/SyncState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 111
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 112
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 113
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 114
    throw v2

    .line 116
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 117
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getSyncStateWithMetrics failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 119
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;-><init>()V

    .line 120
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 121
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 122
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$300(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object v3

    return-object v3

    .line 125
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$400(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 126
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$400(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 128
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$500(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 129
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->access$500(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 131
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getSyncStateWithMetrics failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getTag()Lcom/evernote/edam/type/Tag;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 692
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 693
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 694
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 695
    throw v2

    .line 697
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 698
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getTag failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 700
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;-><init>()V

    .line 701
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$getTag_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 702
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 703
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4800(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/type/Tag;

    move-result-object v3

    return-object v3

    .line 706
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4900(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 707
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$4900(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 709
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5000(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 710
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5000(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 712
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5100(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 713
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->access$5100(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 715
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getTag failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listLinkedNotebooks()Ljava/util/List;
    .locals 6
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
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3101
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3102
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3103
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3104
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3105
    throw v2

    .line 3107
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3108
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listLinkedNotebooks failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3110
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;-><init>()V

    .line 3111
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3112
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3113
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3114
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25100(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 3116
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25200(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3117
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25200(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3119
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25300(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3120
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25300(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3122
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25400(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3123
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;->access$25400(Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3125
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listLinkedNotebooks failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listNoteVersions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2076
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2077
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2078
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2079
    throw v2

    .line 2081
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2082
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listNoteVersions failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2084
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;-><init>()V

    .line 2085
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2086
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2087
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2088
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16400(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 2090
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16500(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2091
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16500(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2093
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16600(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2094
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16600(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2096
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16700(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2097
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;->access$16700(Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2099
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listNoteVersions failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listNotebooks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 338
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 339
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 340
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 341
    throw v2

    .line 343
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 344
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listNotebooks failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 346
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;-><init>()V

    .line 347
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 348
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 349
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2000(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 352
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2100(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 353
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2100(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 355
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2200(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 356
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;->access$2200(Lcom/evernote/edam/notestore/NoteStore$listNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 358
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listNotebooks failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listSearches()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 918
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 919
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 920
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 921
    throw v2

    .line 923
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 924
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listSearches failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 926
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;-><init>()V

    .line 927
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listSearches_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 928
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 929
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6700(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 932
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6800(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 933
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6800(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 935
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6900(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 936
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->access$6900(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 938
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listSearches failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listSharedNotebooks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
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
    .line 2918
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2919
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2920
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2921
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2922
    throw v2

    .line 2924
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2925
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listSharedNotebooks failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2927
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;-><init>()V

    .line 2928
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2929
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2930
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2931
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23500(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 2933
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23600(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2934
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23600(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2936
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23700(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2937
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23700(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2939
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23800(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2940
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->access$23800(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2942
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listSharedNotebooks failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listTags()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 603
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 604
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 605
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 606
    throw v2

    .line 608
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 609
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listTags failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 611
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;-><init>()V

    .line 612
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listTags_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 613
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 614
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 615
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4100(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 617
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4200(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 618
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4200(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 620
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4300(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 621
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->access$4300(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 623
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listTags failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_listTagsByNotebook()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 646
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 647
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 648
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 649
    throw v2

    .line 651
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 652
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "listTagsByNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 654
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;-><init>()V

    .line 655
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 656
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 657
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4400(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 660
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4500(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 661
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4500(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 663
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4600(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 664
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4600(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 666
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4700(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 667
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;->access$4700(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 669
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "listTagsByNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_sendMessageToSharedNotebookMembers()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2873
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2874
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2875
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2876
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2877
    throw v2

    .line 2879
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2880
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "sendMessageToSharedNotebookMembers failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2882
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;-><init>()V

    .line 2883
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2884
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2885
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2886
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23100(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)I

    move-result v3

    return v3

    .line 2888
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23200(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2889
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23200(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2891
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23300(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2892
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23300(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2894
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23400(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2895
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->access$23400(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2897
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "sendMessageToSharedNotebookMembers failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_setNoteApplicationDataEntry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1478
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1479
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1480
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1481
    throw v2

    .line 1483
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1484
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "setNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1486
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;-><init>()V

    .line 1487
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1488
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1489
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1490
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11300(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)I

    move-result v3

    return v3

    .line 1492
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11400(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1493
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11400(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1495
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11500(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1496
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11500(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1498
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11600(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1499
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;->access$11600(Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1501
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "setNoteApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_setResourceApplicationDataEntry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2316
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2317
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2318
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2319
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2320
    throw v2

    .line 2322
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2323
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "setResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2325
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;-><init>()V

    .line 2326
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2327
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2328
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2329
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18400(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)I

    move-result v3

    return v3

    .line 2331
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18500(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2332
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18500(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2334
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18600(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2335
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18600(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2337
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18700(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2338
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;->access$18700(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2340
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "setResourceApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_setSharedNotebookRecipientSettings()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2825
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2826
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2827
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2828
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2829
    throw v2

    .line 2831
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2832
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "setSharedNotebookRecipientSettings failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2834
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;-><init>()V

    .line 2835
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2836
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2837
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2838
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22700(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)I

    move-result v3

    return v3

    .line 2840
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22800(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2841
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22800(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2843
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22900(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2844
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$22900(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2846
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$23000(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2847
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->access$23000(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2849
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "setSharedNotebookRecipientSettings failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_shareNote()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3327
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3328
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3329
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3330
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3331
    throw v2

    .line 3333
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3334
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "shareNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3336
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;-><init>()V

    .line 3337
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$shareNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3338
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3339
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3340
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27000(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3342
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27100(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3343
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27100(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3345
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27200(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3346
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27200(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3348
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27300(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3349
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->access$27300(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3351
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "shareNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_stopSharingNote()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3373
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3374
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3375
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3376
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3377
    throw v2

    .line 3379
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3380
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "stopSharingNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3382
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;-><init>()V

    .line 3383
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3384
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3385
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27400(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3386
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27400(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3388
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27500(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3389
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27500(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3391
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27600(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3392
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;->access$27600(Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3394
    :cond_4
    return-void
.end method

.method public recv_unsetNoteApplicationDataEntry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1524
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1525
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1526
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1527
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1528
    throw v2

    .line 1530
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1531
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "unsetNoteApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1533
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;-><init>()V

    .line 1534
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1535
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1536
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1537
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11700(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)I

    move-result v3

    return v3

    .line 1539
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11800(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1540
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11800(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1542
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11900(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1543
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$11900(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1545
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$12000(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1546
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;->access$12000(Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1548
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "unsetNoteApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_unsetResourceApplicationDataEntry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2363
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2364
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2365
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2366
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2367
    throw v2

    .line 2369
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2370
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "unsetResourceApplicationDataEntry failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2372
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;-><init>()V

    .line 2373
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2374
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2375
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2376
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18800(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)I

    move-result v3

    return v3

    .line 2378
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18900(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2379
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$18900(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2381
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19000(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2382
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19000(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2384
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19100(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2385
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;->access$19100(Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2387
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "unsetResourceApplicationDataEntry failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_untagAll()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 830
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 831
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 832
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 833
    throw v2

    .line 835
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 836
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "untagAll failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 838
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;-><init>()V

    .line 839
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$untagAll_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 840
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 841
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6000(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 842
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6000(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 844
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6100(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 845
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6100(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 847
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6200(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 848
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_result;->access$6200(Lcom/evernote/edam/notestore/NoteStore$untagAll_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 850
    :cond_4
    return-void
.end method

.method public recv_updateLinkedNotebook()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3056
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 3057
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3058
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 3059
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3060
    throw v2

    .line 3062
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 3063
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateLinkedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 3065
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;-><init>()V

    .line 3066
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3067
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 3068
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3069
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24700(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)I

    move-result v3

    return v3

    .line 3071
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24800(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3072
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24800(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 3074
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24900(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3075
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$24900(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 3077
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$25000(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3078
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;->access$25000(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 3080
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateLinkedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateNote()Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1802
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1803
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1804
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1805
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1806
    throw v2

    .line 1808
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1809
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateNote failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1811
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;-><init>()V

    .line 1812
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateNote_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1813
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1814
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1815
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14100(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    return-object v3

    .line 1817
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14200(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1818
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14200(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1820
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14300(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1821
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14300(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1823
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14400(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1824
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_result;->access$14400(Lcom/evernote/edam/notestore/NoteStore$updateNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1826
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateNote failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateNotebook()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 512
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 513
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 514
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 515
    throw v2

    .line 517
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 518
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 520
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;-><init>()V

    .line 521
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 522
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 523
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3300(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)I

    move-result v3

    return v3

    .line 526
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3400(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 527
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3400(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 529
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3500(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 530
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3500(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 532
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3600(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 533
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;->access$3600(Lcom/evernote/edam/notestore/NoteStore$updateNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 535
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateResource()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2409
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2410
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2411
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2412
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2413
    throw v2

    .line 2415
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2416
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateResource failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2418
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;-><init>()V

    .line 2419
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateResource_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2420
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2421
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2422
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19200(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)I

    move-result v3

    return v3

    .line 2424
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19300(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2425
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19300(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2427
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19400(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2428
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19400(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2430
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19500(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2431
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_result;->access$19500(Lcom/evernote/edam/notestore/NoteStore$updateResource_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2433
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateResource failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateSearch()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 1050
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 1052
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1053
    throw v2

    .line 1055
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 1056
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateSearch failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1058
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;-><init>()V

    .line 1059
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1060
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 1061
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1062
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7700(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)I

    move-result v3

    return v3

    .line 1064
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7800(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1065
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7800(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 1067
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7900(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1068
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$7900(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 1070
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$8000(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1071
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;->access$8000(Lcom/evernote/edam/notestore/NoteStore$updateSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 1073
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateSearch failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateSharedNotebook()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2778
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 2779
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2780
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 2781
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2782
    throw v2

    .line 2784
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 2785
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateSharedNotebook failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2787
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;-><init>()V

    .line 2788
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2789
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 2790
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2791
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22300(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)I

    move-result v3

    return v3

    .line 2793
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22400(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2794
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22400(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 2796
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22500(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2797
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22500(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 2799
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22600(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2800
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;->access$22600(Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 2802
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateSharedNotebook failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_updateTag()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 784
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 785
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 786
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 787
    throw v2

    .line 789
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 790
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "updateTag failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 792
    :cond_1
    new-instance v1, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;-><init>()V

    .line 793
    .local v1, "result":Lcom/evernote/edam/notestore/NoteStore$updateTag_result;
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 794
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 795
    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 796
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5600(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)I

    move-result v3

    return v3

    .line 798
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5700(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 799
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5700(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 801
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5800(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 802
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5800(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 804
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5900(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 805
    invoke-static {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_result;->access$5900(Lcom/evernote/edam/notestore/NoteStore$updateTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 807
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "updateTag failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebookGuid"    # Ljava/lang/String;
    .param p3, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
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
    .line 2854
    .local p4, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2855
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_sendMessageToSharedNotebookMembers()I

    move-result v0

    return v0
.end method

.method public send_authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "noteKey"    # Ljava/lang/String;
    .param p3, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3405
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "authenticateToSharedNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3406
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;-><init>()V

    .line 3407
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setGuid(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setNoteKey(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3410
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3411
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3412
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3413
    return-void
.end method

.method public send_authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "shareKey"    # Ljava/lang/String;
    .param p2, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3182
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "authenticateToSharedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3183
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;-><init>()V

    .line 3184
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->setShareKey(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3186
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3187
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3188
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3189
    return-void
.end method

.method public send_copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "toNotebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "copyNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2018
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;-><init>()V

    .line 2019
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$copyNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setNoteGuid(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->setToNotebookGuid(Ljava/lang/String;)V

    .line 2022
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$copyNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2023
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2024
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2025
    return-void
.end method

.method public send_createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2999
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createLinkedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3000
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;-><init>()V

    .line 3001
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 3003
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3004
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3005
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3006
    return-void
.end method

.method public send_createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1745
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1746
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;-><init>()V

    .line 1747
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->setNote(Lcom/evernote/edam/type/Note;)V

    .line 1749
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1750
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1751
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1752
    return-void
.end method

.method public send_createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 458
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;-><init>()V

    .line 459
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setNotebook(Lcom/evernote/edam/type/Notebook;)V

    .line 461
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 462
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 463
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 464
    return-void
.end method

.method public send_createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 995
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createSearch"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 996
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;-><init>()V

    .line 997
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createSearch_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->setSearch(Lcom/evernote/edam/type/SavedSearch;)V

    .line 999
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1000
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1001
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1002
    return-void
.end method

.method public send_createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2721
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createSharedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2722
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;-><init>()V

    .line 2723
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->setSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)V

    .line 2725
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2726
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2727
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2728
    return-void
.end method

.method public send_createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "createTag"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 727
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;-><init>()V

    .line 728
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$createTag_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->setTag(Lcom/evernote/edam/type/Tag;)V

    .line 730
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 731
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 732
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 733
    return-void
.end method

.method public send_deleteNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "deleteNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1838
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;-><init>()V

    .line 1839
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->setGuid(Ljava/lang/String;)V

    .line 1841
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$deleteNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1842
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1843
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1844
    return-void
.end method

.method public send_emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/evernote/edam/notestore/NoteEmailParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3273
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "emailNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3274
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;-><init>()V

    .line 3275
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$emailNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->setParameters(Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    .line 3277
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$emailNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3278
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3279
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3280
    return-void
.end method

.method public send_expungeInactiveNotes(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1975
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeInactiveNotes"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1976
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;-><init>()V

    .line 1977
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1978
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1979
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1980
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1981
    return-void
.end method

.method public send_expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3136
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeLinkedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3137
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;-><init>()V

    .line 3138
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->setGuid(Ljava/lang/String;)V

    .line 3140
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3141
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3142
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3143
    return-void
.end method

.method public send_expungeNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1884
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;-><init>()V

    .line 1885
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->setGuid(Ljava/lang/String;)V

    .line 1887
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1888
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1889
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1890
    return-void
.end method

.method public send_expungeNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 547
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;-><init>()V

    .line 548
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->setGuid(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 551
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 552
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 553
    return-void
.end method

.method public send_expungeNotes(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1929
    .local p2, "noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeNotes"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1930
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;-><init>()V

    .line 1931
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->setNoteGuids(Ljava/util/List;)V

    .line 1933
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1934
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1935
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1936
    return-void
.end method

.method public send_expungeSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeSearch"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1085
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;-><init>()V

    .line 1086
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->setGuid(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1089
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1090
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1091
    return-void
.end method

.method public send_expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2953
    .local p2, "sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeSharedNotebooks"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2954
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;-><init>()V

    .line 2955
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setSharedNotebookIds(Ljava/util/List;)V

    .line 2957
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2958
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2959
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2960
    return-void
.end method

.method public send_expungeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 861
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "expungeTag"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 862
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;-><init>()V

    .line 863
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->setGuid(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 866
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 867
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 868
    return-void
.end method

.method public send_findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "withTrash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "findNoteCounts"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1275
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;-><init>()V

    .line 1276
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    .line 1278
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->setWithTrash(Z)V

    .line 1279
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1280
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1281
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1282
    return-void
.end method

.method public send_findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "findNoteOffset"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1179
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;-><init>()V

    .line 1180
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    .line 1182
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->setGuid(Ljava/lang/String;)V

    .line 1183
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteOffset_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1184
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1185
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1186
    return-void
.end method

.method public send_findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "offset"    # I
    .param p4, "maxNotes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "findNotes"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1131
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;-><init>()V

    .line 1132
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$findNotes_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    .line 1134
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setOffset(I)V

    .line 1135
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setMaxNotes(I)V

    .line 1136
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1137
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1138
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1139
    return-void
.end method

.method public send_findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;
    .param p3, "offset"    # I
    .param p4, "maxNotes"    # I
    .param p5, "resultSpec"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "findNotesMetadata"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1226
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;-><init>()V

    .line 1227
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V

    .line 1229
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setOffset(I)V

    .line 1230
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setMaxNotes(I)V

    .line 1231
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setResultSpec(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    .line 1232
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1233
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1234
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1235
    return-void
.end method

.method public send_findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/evernote/edam/notestore/RelatedQuery;
    .param p3, "resultSpec"    # Lcom/evernote/edam/notestore/RelatedResultSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3452
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "findRelated"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3453
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;-><init>()V

    .line 3454
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$findRelated_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setQuery(Lcom/evernote/edam/notestore/RelatedQuery;)V

    .line 3456
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->setResultSpec(Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    .line 3457
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3458
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3459
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3460
    return-void
.end method

.method public send_getDefaultNotebook(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getDefaultNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 416
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;-><init>()V

    .line 417
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 419
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 420
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 421
    return-void
.end method

.method public send_getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "afterUSN"    # I
    .param p3, "maxEntries"    # I
    .param p4, "filter"    # Lcom/evernote/edam/notestore/SyncChunkFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getFilteredSyncChunk"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 188
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;-><init>()V

    .line 189
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAfterUSN(I)V

    .line 191
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setMaxEntries(I)V

    .line 192
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setFilter(Lcom/evernote/edam/notestore/SyncChunkFilter;)V

    .line 193
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 194
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 195
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 196
    return-void
.end method

.method public send_getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .param p3, "afterUSN"    # I
    .param p4, "maxEntries"    # I
    .param p5, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getLinkedNotebookSyncChunk"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 279
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;-><init>()V

    .line 280
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 282
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAfterUSN(I)V

    .line 283
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setMaxEntries(I)V

    .line 284
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setFullSyncOnly(Z)V

    .line 285
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 286
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 287
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 288
    return-void
.end method

.method public send_getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getLinkedNotebookSyncState"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 233
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;-><init>()V

    .line 234
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 236
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 237
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 238
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 239
    return-void
.end method

.method public send_getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "withContent"    # Z
    .param p4, "withResourcesData"    # Z
    .param p5, "withResourcesRecognition"    # Z
    .param p6, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1322
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;-><init>()V

    .line 1323
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setGuid(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithContent(Z)V

    .line 1326
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesData(Z)V

    .line 1327
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesRecognition(Z)V

    .line 1328
    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->setWithResourcesAlternateData(Z)V

    .line 1329
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1330
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1331
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1332
    return-void
.end method

.method public send_getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1371
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteApplicationData"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1372
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;-><init>()V

    .line 1373
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->setGuid(Ljava/lang/String;)V

    .line 1375
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1376
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1377
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1378
    return-void
.end method

.method public send_getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1418
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;-><init>()V

    .line 1419
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1423
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1424
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1425
    return-void
.end method

.method public send_getNoteContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteContent"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1560
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;-><init>()V

    .line 1561
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->setGuid(Ljava/lang/String;)V

    .line 1563
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1564
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1565
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1566
    return-void
.end method

.method public send_getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "noteOnly"    # Z
    .param p4, "tokenizeForIndexing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteSearchText"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1606
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;-><init>()V

    .line 1607
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setGuid(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setNoteOnly(Z)V

    .line 1610
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setTokenizeForIndexing(Z)V

    .line 1611
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1612
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1613
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1614
    return-void
.end method

.method public send_getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteTagNames"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1700
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;-><init>()V

    .line 1701
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->setGuid(Ljava/lang/String;)V

    .line 1703
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1704
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1705
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1706
    return-void
.end method

.method public send_getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "updateSequenceNum"    # I
    .param p4, "withResourcesData"    # Z
    .param p5, "withResourcesRecognition"    # Z
    .param p6, "withResourcesAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteVersion"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2111
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;-><init>()V

    .line 2112
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setNoteGuid(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setUpdateSequenceNum(I)V

    .line 2115
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesData(Z)V

    .line 2116
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesRecognition(Z)V

    .line 2117
    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesAlternateData(Z)V

    .line 2118
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2119
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2120
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2121
    return-void
.end method

.method public send_getNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 370
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;-><init>()V

    .line 371
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->setGuid(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 374
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 375
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 376
    return-void
.end method

.method public send_getPublicNotebook(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "publicUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2678
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getPublicNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2679
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;-><init>()V

    .line 2680
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setUserId(I)V

    .line 2681
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setPublicUri(Ljava/lang/String;)V

    .line 2682
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2683
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2684
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2685
    return-void
.end method

.method public send_getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "withData"    # Z
    .param p4, "withRecognition"    # Z
    .param p5, "withAttributes"    # Z
    .param p6, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2160
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResource"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2161
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;-><init>()V

    .line 2162
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResource_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setGuid(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithData(Z)V

    .line 2165
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognition(Z)V

    .line 2166
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributes(Z)V

    .line 2167
    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateData(Z)V

    .line 2168
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2169
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2170
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2171
    return-void
.end method

.method public send_getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2586
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceAlternateData"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2587
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;-><init>()V

    .line 2588
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->setGuid(Ljava/lang/String;)V

    .line 2590
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAlternateData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2591
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2592
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2593
    return-void
.end method

.method public send_getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2210
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceApplicationData"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2211
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;-><init>()V

    .line 2212
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->setGuid(Ljava/lang/String;)V

    .line 2214
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2215
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2216
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2217
    return-void
.end method

.method public send_getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2256
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2257
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;-><init>()V

    .line 2258
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 2261
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2262
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2263
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2264
    return-void
.end method

.method public send_getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2632
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceAttributes"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2633
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;-><init>()V

    .line 2634
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setGuid(Ljava/lang/String;)V

    .line 2636
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2637
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2638
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2639
    return-void
.end method

.method public send_getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .param p3, "contentHash"    # [B
    .param p4, "withData"    # Z
    .param p5, "withRecognition"    # Z
    .param p6, "withAlternateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2490
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceByHash"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2491
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;-><init>()V

    .line 2492
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setNoteGuid(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setContentHash([B)V

    .line 2495
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithData(Z)V

    .line 2496
    invoke-virtual {v0, p5}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithRecognition(Z)V

    .line 2497
    invoke-virtual {v0, p6}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithAlternateData(Z)V

    .line 2498
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2499
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2500
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2501
    return-void
.end method

.method public send_getResourceData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2444
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceData"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2445
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;-><init>()V

    .line 2446
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->setGuid(Ljava/lang/String;)V

    .line 2448
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceData_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2449
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2450
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2451
    return-void
.end method

.method public send_getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2540
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceRecognition"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2541
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;-><init>()V

    .line 2542
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->setGuid(Ljava/lang/String;)V

    .line 2544
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2545
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2546
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2547
    return-void
.end method

.method public send_getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getResourceSearchText"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1654
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;-><init>()V

    .line 1655
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->setGuid(Ljava/lang/String;)V

    .line 1657
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceSearchText_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1658
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1659
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1660
    return-void
.end method

.method public send_getSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getSearch"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 950
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;-><init>()V

    .line 951
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getSearch_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->setGuid(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 954
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 955
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 956
    return-void
.end method

.method public send_getSharedNotebookByAuth(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3228
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getSharedNotebookByAuth"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3229
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;-><init>()V

    .line 3230
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3231
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3232
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3233
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3234
    return-void
.end method

.method public send_getSyncChunk(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "afterUSN"    # I
    .param p3, "maxEntries"    # I
    .param p4, "fullSyncOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getSyncChunk"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 143
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;-><init>()V

    .line 144
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAfterUSN(I)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setMaxEntries(I)V

    .line 147
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setFullSyncOnly(Z)V

    .line 148
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 149
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 150
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 151
    return-void
.end method

.method public send_getSyncState(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getSyncState"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 58
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;-><init>()V

    .line 59
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 61
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 62
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 63
    return-void
.end method

.method public send_getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "clientMetrics"    # Lcom/evernote/edam/notestore/ClientUsageMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getSyncStateWithMetrics"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 100
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;-><init>()V

    .line 101
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->setClientMetrics(Lcom/evernote/edam/notestore/ClientUsageMetrics;)V

    .line 103
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 104
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 105
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 106
    return-void
.end method

.method public send_getTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getTag"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 681
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;-><init>()V

    .line 682
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$getTag_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->setGuid(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 685
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 686
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 687
    return-void
.end method

.method public send_listLinkedNotebooks(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3091
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listLinkedNotebooks"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3092
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;-><init>()V

    .line 3093
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3094
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listLinkedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3095
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3096
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3097
    return-void
.end method

.method public send_listNoteVersions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "noteGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2064
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listNoteVersions"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2065
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;-><init>()V

    .line 2066
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->setNoteGuid(Ljava/lang/String;)V

    .line 2068
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listNoteVersions_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2069
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2070
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2071
    return-void
.end method

.method public send_listNotebooks(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listNotebooks"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 328
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;-><init>()V

    .line 329
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 331
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 332
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 333
    return-void
.end method

.method public send_listSearches(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listSearches"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 908
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;-><init>()V

    .line 909
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listSearches_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 911
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 912
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 913
    return-void
.end method

.method public send_listSharedNotebooks(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2908
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listSharedNotebooks"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2909
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;-><init>()V

    .line 2910
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2911
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2912
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2913
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2914
    return-void
.end method

.method public send_listTags(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listTags"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 593
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTags_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;-><init>()V

    .line 594
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listTags_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 596
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 597
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 598
    return-void
.end method

.method public send_listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebookGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "listTagsByNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 635
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;-><init>()V

    .line 636
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->setNotebookGuid(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 639
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 640
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 641
    return-void
.end method

.method public send_sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebookGuid"    # Ljava/lang/String;
    .param p3, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2860
    .local p4, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "sendMessageToSharedNotebookMembers"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2861
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;-><init>()V

    .line 2862
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setNotebookGuid(Ljava/lang/String;)V

    .line 2864
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setMessageText(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->setRecipients(Ljava/util/List;)V

    .line 2866
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2867
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2868
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2869
    return-void
.end method

.method public send_setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "setNoteApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1465
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;-><init>()V

    .line 1466
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->setValue(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1471
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1472
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1473
    return-void
.end method

.method public send_setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "setResourceApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2304
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;-><init>()V

    .line 2305
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->setValue(Ljava/lang/String;)V

    .line 2309
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2310
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2311
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2312
    return-void
.end method

.method public send_setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebookId"    # J
    .param p4, "recipientSettings"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2813
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "setSharedNotebookRecipientSettings"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2814
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;-><init>()V

    .line 2815
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v0, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setSharedNotebookId(J)V

    .line 2817
    invoke-virtual {v0, p4}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setRecipientSettings(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    .line 2818
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2819
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2820
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2821
    return-void
.end method

.method public send_shareNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3316
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "shareNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3317
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;-><init>()V

    .line 3318
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$shareNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->setGuid(Ljava/lang/String;)V

    .line 3320
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3321
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3322
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3323
    return-void
.end method

.method public send_stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3362
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "stopSharingNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3363
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;-><init>()V

    .line 3364
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->setGuid(Ljava/lang/String;)V

    .line 3366
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$stopSharingNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3367
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3368
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3369
    return-void
.end method

.method public send_unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "unsetNoteApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1513
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;-><init>()V

    .line 1514
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$unsetNoteApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1518
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1519
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1520
    return-void
.end method

.method public send_unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2351
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "unsetResourceApplicationDataEntry"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2352
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;-><init>()V

    .line 2353
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setGuid(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v0, p3}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->setKey(Ljava/lang/String;)V

    .line 2356
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$unsetResourceApplicationDataEntry_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2357
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2358
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2359
    return-void
.end method

.method public send_untagAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "untagAll"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 819
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;-><init>()V

    .line 820
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$untagAll_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->setGuid(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$untagAll_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 823
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 824
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 825
    return-void
.end method

.method public send_updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateLinkedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 3046
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;-><init>()V

    .line 3047
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 3049
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3050
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 3051
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 3052
    return-void
.end method

.method public send_updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateNote"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1792
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;-><init>()V

    .line 1793
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateNote_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->setNote(Lcom/evernote/edam/type/Note;)V

    .line 1795
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateNote_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1796
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1797
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1798
    return-void
.end method

.method public send_updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 501
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;-><init>()V

    .line 502
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->setNotebook(Lcom/evernote/edam/type/Notebook;)V

    .line 504
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 505
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 506
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 507
    return-void
.end method

.method public send_updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "resource"    # Lcom/evernote/edam/type/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2398
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateResource"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2399
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;-><init>()V

    .line 2400
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setResource(Lcom/evernote/edam/type/Resource;)V

    .line 2402
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2403
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2404
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2405
    return-void
.end method

.method public send_updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateSearch"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 1039
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;-><init>()V

    .line 1040
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->setSearch(Lcom/evernote/edam/type/SavedSearch;)V

    .line 1042
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateSearch_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1043
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 1044
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 1045
    return-void
.end method

.method public send_updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2767
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateSharedNotebook"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 2768
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;-><init>()V

    .line 2769
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 2770
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->setSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)V

    .line 2771
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateSharedNotebook_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2772
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 2773
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 2774
    return-void
.end method

.method public send_updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "updateTag"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 773
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;-><init>()V

    .line 774
    .local v0, "args":Lcom/evernote/edam/notestore/NoteStore$updateTag_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->setTag(Lcom/evernote/edam/type/Tag;)V

    .line 776
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 777
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 778
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 779
    return-void
.end method

.method public setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1458
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setNoteApplicationDataEntry()I

    move-result v0

    return v0
.end method

.method public setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2297
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setResourceApplicationDataEntry()I

    move-result v0

    return v0
.end method

.method public setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I
    .locals 2
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebookId"    # J
    .param p4, "recipientSettings"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2807
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    .line 2808
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_setSharedNotebookRecipientSettings()I

    move-result v0

    return v0
.end method

.method public shareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3310
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_shareNote(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_shareNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3356
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_stopSharingNote()V

    .line 3358
    return-void
.end method

.method public unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_unsetNoteApplicationDataEntry()I

    move-result v0

    return v0
.end method

.method public unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2345
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_unsetResourceApplicationDataEntry()I

    move-result v0

    return v0
.end method

.method public untagAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_untagAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_untagAll()V

    .line 814
    return-void
.end method

.method public updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 3039
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)V

    .line 3040
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateLinkedNotebook()I

    move-result v0

    return v0
.end method

.method public updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "note"    # Lcom/evernote/edam/type/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1785
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)V

    .line 1786
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateNote()Lcom/evernote/edam/type/Note;

    move-result-object v0

    return-object v0
.end method

.method public updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "notebook"    # Lcom/evernote/edam/type/Notebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V

    .line 495
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateNotebook()I

    move-result v0

    return v0
.end method

.method public updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "resource"    # Lcom/evernote/edam/type/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2392
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)V

    .line 2393
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateResource()I

    move-result v0

    return v0
.end method

.method public updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "search"    # Lcom/evernote/edam/type/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)V

    .line 1033
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateSearch()I

    move-result v0

    return v0
.end method

.method public updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "sharedNotebook"    # Lcom/evernote/edam/type/SharedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2761
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)V

    .line 2762
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateSharedNotebook()I

    move-result v0

    return v0
.end method

.method public updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)I
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/evernote/edam/type/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->send_updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)V

    .line 767
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_updateTag()I

    move-result v0

    return v0
.end method
