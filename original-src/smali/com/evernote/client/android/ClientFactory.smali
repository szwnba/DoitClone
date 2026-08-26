.class public Lcom/evernote/client/android/ClientFactory;
.super Ljava/lang/Object;
.source "ClientFactory.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ClientFactory"

.field private static final USER_AGENT_KEY:Ljava/lang/String; = "User-Agent"


# instance fields
.field private mCustomHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTempDir:Ljava/io/File;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "tempDir"    # Ljava/io/File;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    .line 69
    return-void
.end method

.method private getFullUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "serviceUrl"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 248
    const-string v0, ""

    .line 250
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "http://"

    .line 256
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/edam/user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    return-object v0

    .line 253
    :cond_2
    const-string v0, "https://"

    goto :goto_0
.end method


# virtual methods
.method public createBusinessNoteStoreClient()Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    .line 118
    .local v0, "authResult":Lcom/evernote/client/android/AuthenticationResult;
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessAuthToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessAuthTokenExpiration()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/client/android/AsyncUserStoreClient;->getClient()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v4

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/evernote/edam/userstore/UserStore$Client;->authenticateToBusiness(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v1

    .line 123
    .local v1, "businessAuthResult":Lcom/evernote/edam/userstore/AuthenticationResult;
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/evernote/client/android/AuthenticationResult;->setBusinessAuthToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/evernote/client/android/AuthenticationResult;->setBusinessAuthTokenExpiration(J)V

    .line 125
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/evernote/client/android/AuthenticationResult;->setBusinessNoteStoreUrl(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getUser()Lcom/evernote/edam/type/User;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/evernote/client/android/AuthenticationResult;->setBusinessUser(Lcom/evernote/edam/type/User;)V

    .line 130
    .end local v1    # "businessAuthResult":Lcom/evernote/edam/userstore/AuthenticationResult;
    :cond_1
    new-instance v3, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessNoteStoreUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    iget-object v6, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    invoke-direct {v3, v4, v5, v6}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 131
    .local v3, "transport":Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;
    new-instance v2, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    invoke-direct {v2, v3}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    .line 132
    .local v2, "protocol":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    new-instance v4, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getBusinessAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v2, v5, p0}, Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;Lcom/evernote/client/android/ClientFactory;)V

    return-object v4
.end method

.method public createBusinessNoteStoreClientAsync(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/client/android/AsyncBusinessNoteStoreClient;>;"
    const-string v0, "createBusinessNoteStoreClient"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public createLinkedNoteStoreClient(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
    .locals 8
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    .line 156
    .local v0, "authResult":Lcom/evernote/client/android/AuthenticationResult;
    new-instance v4, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    iget-object v7, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    invoke-direct {v4, v5, v6, v7}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 157
    .local v4, "transport":Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;
    new-instance v1, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    invoke-direct {v1, v4}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    .line 159
    .local v1, "protocol":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    new-instance v3, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v1, v5, p0}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;Lcom/evernote/client/android/ClientFactory;)V

    .line 160
    .local v3, "sharedNoteStore":Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;
    invoke-virtual {v3}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->getAsyncClient()Lcom/evernote/client/android/AsyncNoteStoreClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/client/android/AsyncNoteStoreClient;->getClient()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v5

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/evernote/edam/notestore/NoteStore$Client;->authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v2

    .line 161
    .local v2, "sharedAuthKey":Lcom/evernote/edam/userstore/AuthenticationResult;
    invoke-virtual {v2}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;->setAuthToken(Ljava/lang/String;)V

    .line 162
    return-object v3
.end method

.method public createLinkedNoteStoreClientAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 3
    .param p1, "notebook"    # Lcom/evernote/edam/type/LinkedNotebook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/client/android/AsyncLinkedNoteStoreClient;>;"
    const-string v0, "createLinkedNoteStoreClient"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public createNoteStoreClient()Lcom/evernote/client/android/AsyncNoteStoreClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 86
    :cond_1
    new-instance v1, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 87
    .local v1, "transport":Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;
    new-instance v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    .line 88
    .local v0, "protocol":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    new-instance v2, Lcom/evernote/client/android/AsyncNoteStoreClient;

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v0, v3}, Lcom/evernote/client/android/AsyncNoteStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V

    return-object v2
.end method

.method public createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient(Ljava/lang/String;)Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v0

    return-object v0
.end method

.method createUserStoreClient(Ljava/lang/String;)Lcom/evernote/client/android/AsyncUserStoreClient;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient(Ljava/lang/String;I)Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v0

    return-object v0
.end method

.method createUserStoreClient(Ljava/lang/String;I)Lcom/evernote/client/android/AsyncUserStoreClient;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/evernote/client/android/ClientFactory;->getFullUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "serviceUrl":Ljava/lang/String;
    new-instance v4, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    iget-object v5, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    iget-object v6, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    invoke-direct {v4, v3, v5, v6}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 230
    .local v4, "transport":Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;
    iget-object v5, p0, Lcom/evernote/client/android/ClientFactory;->mCustomHeaders:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/evernote/client/android/ClientFactory;->mCustomHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 235
    :cond_0
    iget-object v5, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 236
    const-string v5, "User-Agent"

    iget-object v6, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    new-instance v2, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    invoke-direct {v2, v4}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    .line 239
    .local v2, "protocol":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    const/4 v0, 0x0

    .line 240
    .local v0, "authToken":Ljava/lang/String;
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_2
    new-instance v5, Lcom/evernote/client/android/AsyncUserStoreClient;

    invoke-direct {v5, v2, v2, v0}, Lcom/evernote/client/android/AsyncUserStoreClient;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V

    return-object v5

    .line 231
    .end local v0    # "authToken":Ljava/lang/String;
    .end local v2    # "protocol":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCustomHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/evernote/client/android/ClientFactory;->mCustomHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getTempDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "mCustomHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/client/android/ClientFactory;->mCustomHeaders:Ljava/util/Map;

    .line 293
    return-void
.end method

.method public setTempDir(Ljava/io/File;)V
    .locals 0
    .param p1, "mTempDir"    # Ljava/io/File;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/evernote/client/android/ClientFactory;->mTempDir:Ljava/io/File;

    .line 311
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserAgent"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/evernote/client/android/ClientFactory;->mUserAgent:Ljava/lang/String;

    .line 276
    return-void
.end method
