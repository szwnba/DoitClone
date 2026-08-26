.class public Lcom/evernote/client/android/AsyncUserStoreClient;
.super Ljava/lang/Object;
.source "AsyncUserStoreClient.java"


# instance fields
.field private final mAuthenticationToken:Ljava/lang/String;

.field private final mClient:Lcom/evernote/edam/userstore/UserStore$Client;


# direct methods
.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p3, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-direct {v0, p1, p2}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    .line 58
    iput-object p3, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/evernote/thrift/protocol/TProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "prot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .param p2, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$Client;

    invoke-direct {v0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;)V

    iput-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    .line 53
    iput-object p2, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p6, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "authenticate"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p6, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "deviceIdentifier"    # Ljava/lang/String;
    .param p6, "deviceDescription"    # Ljava/lang/String;
    .param p7, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p8, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "authenticateLongSession"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p8, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public authenticateToBusiness(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "authenticationToken"    # Ljava/lang/String;
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
    .line 143
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "authenticateToBusiness"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public checkVersion(Ljava/lang/String;SSLcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "edamVersionMajor"    # S
    .param p3, "edamVersionMinor"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "SS",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "checkVersion"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .param p1, "oneTimeCode"    # Ljava/lang/String;
    .param p2, "deviceIdentifier"    # Ljava/lang/String;
    .param p3, "deviceDescription"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 215
    .local p4, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "completeTwoFactorAuthentication"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p4, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBootstrapInfo(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/BootstrapInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/BootstrapInfo;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "getBootstrapInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public getClient()Lcom/evernote/edam/userstore/UserStore$Client;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    return-object v0
.end method

.method public getNoteStoreUrl(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "getNoteStoreUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public getPremiumInfo(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/PremiumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/PremiumInfo;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "getPremiumInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public getPublicUserInfo(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/userstore/PublicUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/PublicUserInfo;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "getPublicUserInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public getUser(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Lcom/evernote/edam/type/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/type/User;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "getUser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public isBusinessUser()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncUserStoreClient;->getClient()Lcom/evernote/edam/userstore/UserStore$Client;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/client/android/AsyncUserStoreClient;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$Client;->getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/edam/type/User;->getAccounting()Lcom/evernote/edam/type/Accounting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v0

    return v0
.end method

.method public isBusinessUserAsync(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Boolean;>;"
    const-string v0, "isBusinessUser"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public refreshAuthentication(Ljava/lang/String;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 4
    .param p1, "authenticationToken"    # Ljava/lang/String;
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
    .line 153
    .local p2, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Lcom/evernote/edam/userstore/AuthenticationResult;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "refreshAuthentication"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public revokeLongSession(Lcom/evernote/client/android/OnClientCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/OnClientCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
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
    .line 203
    .local p1, "callback":Lcom/evernote/client/android/OnClientCallback;, "Lcom/evernote/client/android/OnClientCallback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mClient:Lcom/evernote/edam/userstore/UserStore$Client;

    const-string v1, "revokeLongSession"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evernote/client/android/AsyncUserStoreClient;->mAuthenticationToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method
