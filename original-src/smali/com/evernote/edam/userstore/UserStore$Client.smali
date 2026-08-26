.class public Lcom/evernote/edam/userstore/UserStore$Client;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lcom/evernote/thrift/TServiceClient;
.implements Lcom/evernote/edam/userstore/UserStore$Iface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
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
    invoke-direct {p0, p1, p1}, Lcom/evernote/edam/userstore/UserStore$Client;-><init>(Lcom/evernote/thrift/protocol/TProtocol;Lcom/evernote/thrift/protocol/TProtocol;)V

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
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 31
    iput-object p2, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    .line 32
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p5}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticate()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "deviceIdentifier"    # Ljava/lang/String;
    .param p6, "deviceDescription"    # Ljava/lang/String;
    .param p7, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p7}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticateLongSession()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public authenticateToBusiness(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
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
    .line 303
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_authenticateToBusiness(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public checkVersion(Ljava/lang/String;SS)Z
    .locals 1
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "edamVersionMajor"    # S
    .param p3, "edamVersionMinor"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/evernote/edam/userstore/UserStore$Client;->send_checkVersion(Ljava/lang/String;SS)V

    .line 52
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_checkVersion()Z

    move-result v0

    return v0
.end method

.method public completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "oneTimeCode"    # Ljava/lang/String;
    .param p3, "deviceIdentifier"    # Ljava/lang/String;
    .param p4, "deviceDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evernote/edam/userstore/UserStore$Client;->send_completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_completeTwoFactorAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getBootstrapInfo(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object v0
.end method

.method public getNoteStoreUrl(Ljava/lang/String;)Ljava/lang/String;
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
    .line 516
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getNoteStoreUrl(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputProtocol()Lcom/evernote/thrift/protocol/TProtocol;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    return-object v0
.end method

.method public getPremiumInfo(Ljava/lang/String;)Lcom/evernote/edam/type/PremiumInfo;
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
    .line 474
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getPremiumInfo(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPublicUserInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getPublicUserInfo(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lcom/evernote/edam/type/User;
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
    .line 387
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_getUser(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_getUser()Lcom/evernote/edam/type/User;

    move-result-object v0

    return-object v0
.end method

.method public recv_authenticate()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 146
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 147
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 148
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 149
    throw v2

    .line 151
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 152
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "authenticate failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 154
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$authenticate_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;-><init>()V

    .line 155
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$authenticate_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 156
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 157
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$200(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 160
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$300(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 161
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$300(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 163
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$400(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 164
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_result;->access$400(Lcom/evernote/edam/userstore/UserStore$authenticate_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 166
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "authenticate failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_authenticateLongSession()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 194
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 195
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 196
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 197
    throw v2

    .line 199
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 200
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "authenticateLongSession failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 202
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;-><init>()V

    .line 203
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 204
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 205
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$500(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 208
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$600(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 209
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$600(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 211
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$700(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 212
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;->access$700(Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 214
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "authenticateLongSession failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 320
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 321
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 322
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 323
    throw v2

    .line 325
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 326
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "authenticateToBusiness failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 328
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;-><init>()V

    .line 329
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 330
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 331
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1300(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 334
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1400(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 335
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1400(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 337
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1500(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 338
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->access$1500(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 340
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "authenticateToBusiness failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_checkVersion()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 70
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 71
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 72
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 73
    throw v2

    .line 75
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 76
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "checkVersion failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;-><init>()V

    .line 79
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 80
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 81
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->access$000(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z

    move-result v3

    return v3

    .line 84
    :cond_2
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "checkVersion failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_completeTwoFactorAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 239
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 240
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 241
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 242
    throw v2

    .line 244
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 245
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "completeTwoFactorAuthentication failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 247
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;-><init>()V

    .line 248
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 249
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 250
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$800(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 253
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$900(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 254
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$900(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 256
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$1000(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 257
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->access$1000(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 259
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "completeTwoFactorAuthentication failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 106
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 107
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 108
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 109
    throw v2

    .line 111
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 112
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getBootstrapInfo failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 114
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;-><init>()V

    .line 115
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 116
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 117
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->access$100(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object v3

    return-object v3

    .line 120
    :cond_2
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getBootstrapInfo failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getNoteStoreUrl()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 533
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 534
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 535
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 536
    throw v2

    .line 538
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 539
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getNoteStoreUrl failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 541
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;-><init>()V

    .line 542
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 543
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 544
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$2900(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 547
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3000(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 548
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3000(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 550
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3100(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 551
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->access$3100(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 553
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getNoteStoreUrl failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getPremiumInfo()Lcom/evernote/edam/type/PremiumInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 491
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 492
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 493
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 494
    throw v2

    .line 496
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 497
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getPremiumInfo failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 499
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;-><init>()V

    .line 500
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 501
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 502
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2600(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/type/PremiumInfo;

    move-result-object v3

    return-object v3

    .line 505
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2700(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 506
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2700(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 508
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2800(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 509
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;->access$2800(Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 511
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getPremiumInfo failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 446
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 447
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 448
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 449
    throw v2

    .line 451
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 452
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getPublicUserInfo failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 454
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;-><init>()V

    .line 455
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 456
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 457
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2200(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object v3

    return-object v3

    .line 460
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 461
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v3

    throw v3

    .line 463
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2400(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 464
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2400(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 466
    :cond_4
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2500(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 467
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->access$2500(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 469
    :cond_5
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getPublicUserInfo failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_getUser()Lcom/evernote/edam/type/User;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 404
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 405
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 406
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 407
    throw v2

    .line 409
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 410
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "getUser failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 412
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$getUser_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;-><init>()V

    .line 413
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$getUser_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 414
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 415
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$1900(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/type/User;

    move-result-object v3

    return-object v3

    .line 418
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2000(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 419
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2000(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 421
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2100(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 422
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$getUser_result;->access$2100(Lcom/evernote/edam/userstore/UserStore$getUser_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 424
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "getUser failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 362
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 363
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 364
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 365
    throw v2

    .line 367
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 368
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "refreshAuthentication failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 370
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;-><init>()V

    .line 371
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 372
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 373
    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1600(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v3

    return-object v3

    .line 376
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1700(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 377
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1700(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 379
    :cond_3
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1800(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 380
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->access$1800(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 382
    :cond_4
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x5

    const-string v5, "refreshAuthentication failed: unknown result"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public recv_revokeLongSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageBegin()Lcom/evernote/thrift/protocol/TMessage;

    move-result-object v0

    .line 281
    .local v0, "msg":Lcom/evernote/thrift/protocol/TMessage;
    iget-byte v3, v0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 282
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-static {v3}, Lcom/evernote/thrift/TApplicationException;->read(Lcom/evernote/thrift/protocol/TProtocol;)Lcom/evernote/thrift/TApplicationException;

    move-result-object v2

    .line 283
    .local v2, "x":Lcom/evernote/thrift/TApplicationException;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 284
    throw v2

    .line 286
    .end local v2    # "x":Lcom/evernote/thrift/TApplicationException;
    :cond_0
    iget v3, v0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget v4, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    if-eq v3, v4, :cond_1

    .line 287
    new-instance v3, Lcom/evernote/thrift/TApplicationException;

    const/4 v4, 0x4

    const-string v5, "revokeLongSession failed: out of sequence response"

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 289
    :cond_1
    new-instance v1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;-><init>()V

    .line 290
    .local v1, "result":Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1, v3}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 291
    iget-object v3, p0, Lcom/evernote/edam/userstore/UserStore$Client;->iprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v3}, Lcom/evernote/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 292
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1100(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 293
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1100(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v3

    throw v3

    .line 295
    :cond_2
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1200(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 296
    invoke-static {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->access$1200(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v3

    throw v3

    .line 298
    :cond_3
    return-void
.end method

.method public refreshAuthentication(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
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
    .line 345
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_refreshAuthentication(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_refreshAuthentication()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public revokeLongSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$Client;->send_revokeLongSession(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$Client;->recv_revokeLongSession()V

    .line 266
    return-void
.end method

.method public send_authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "authenticate"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 132
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticate_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;-><init>()V

    .line 133
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$authenticate_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setUsername(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setPassword(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setConsumerKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setConsumerSecret(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p5}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->setSupportsTwoFactor(Z)V

    .line 138
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticate_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 139
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 140
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 141
    return-void
.end method

.method public send_authenticateLongSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;
    .param p5, "deviceIdentifier"    # Ljava/lang/String;
    .param p6, "deviceDescription"    # Ljava/lang/String;
    .param p7, "supportsTwoFactor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "authenticateLongSession"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 178
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;-><init>()V

    .line 179
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setUsername(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setPassword(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setConsumerKey(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setConsumerSecret(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p5}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p6}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setDeviceDescription(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p7}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->setSupportsTwoFactor(Z)V

    .line 186
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateLongSession_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 187
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 188
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 189
    return-void
.end method

.method public send_authenticateToBusiness(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "authenticateToBusiness"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 310
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;-><init>()V

    .line 311
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 313
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 314
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 315
    return-void
.end method

.method public send_checkVersion(Ljava/lang/String;SS)V
    .locals 6
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "edamVersionMajor"    # S
    .param p3, "edamVersionMinor"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "checkVersion"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 58
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;-><init>()V

    .line 59
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setClientName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajor(S)V

    .line 61
    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinor(S)V

    .line 62
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 63
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 64
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 65
    return-void
.end method

.method public send_completeTwoFactorAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .param p2, "oneTimeCode"    # Ljava/lang/String;
    .param p3, "deviceIdentifier"    # Ljava/lang/String;
    .param p4, "deviceDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "completeTwoFactorAuthentication"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 226
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;-><init>()V

    .line 227
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setOneTimeCode(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p3}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p4}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->setDeviceDescription(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 232
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 233
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 234
    return-void
.end method

.method public send_getBootstrapInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getBootstrapInfo"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 96
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;-><init>()V

    .line 97
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->setLocale(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 99
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 100
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 101
    return-void
.end method

.method public send_getNoteStoreUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getNoteStoreUrl"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 523
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;-><init>()V

    .line 524
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 526
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 527
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 528
    return-void
.end method

.method public send_getPremiumInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getPremiumInfo"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 481
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;-><init>()V

    .line 482
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getPremiumInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 484
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 485
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 486
    return-void
.end method

.method public send_getPublicUserInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getPublicUserInfo"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 436
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;-><init>()V

    .line 437
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->setUsername(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 439
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 440
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 441
    return-void
.end method

.method public send_getUser(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "getUser"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 394
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getUser_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$getUser_args;-><init>()V

    .line 395
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$getUser_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$getUser_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$getUser_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 397
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 398
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 399
    return-void
.end method

.method public send_refreshAuthentication(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "refreshAuthentication"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 352
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;-><init>()V

    .line 353
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 355
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 356
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 357
    return-void
.end method

.method public send_revokeLongSession(Ljava/lang/String;)V
    .locals 6
    .param p1, "authenticationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v2, Lcom/evernote/thrift/protocol/TMessage;

    const-string v3, "revokeLongSession"

    const/4 v4, 0x1

    iget v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/evernote/edam/userstore/UserStore$Client;->seqid_:I

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageBegin(Lcom/evernote/thrift/protocol/TMessage;)V

    .line 271
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;-><init>()V

    .line 272
    .local v0, "args":Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_args;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 274
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 275
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$Client;->oprot_:Lcom/evernote/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lcom/evernote/thrift/protocol/TProtocol;->getTransport()Lcom/evernote/thrift/transport/TTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/thrift/transport/TTransport;->flush()V

    .line 276
    return-void
.end method
