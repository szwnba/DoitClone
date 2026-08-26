.class Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "completeTwoFactorAuthentication_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private success:Lcom/evernote/edam/userstore/AuthenticationResult;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 2178
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "completeTwoFactorAuthentication_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 2180
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2181
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2182
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2192
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .prologue
    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2201
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2202
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2204
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2205
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2207
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$800(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-object v0
.end method

.method static synthetic access$900(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2214
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2215
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2216
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2217
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .prologue
    .line 2235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 2269
    :cond_0
    :goto_0
    return v0

    .line 2239
    :cond_1
    const/4 v0, 0x0

    .line 2240
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 2242
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2243
    if-nez v0, :cond_0

    .line 2246
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2247
    if-nez v0, :cond_0

    .line 2251
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2252
    if-nez v0, :cond_0

    .line 2255
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2256
    if-nez v0, :cond_0

    .line 2260
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2261
    if-nez v0, :cond_0

    .line 2264
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2265
    if-nez v0, :cond_0

    .line 2269
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2177
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;
    .locals 1

    .prologue
    .line 2210
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;-><init>(Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 2177
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 2274
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 2277
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 2278
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 2311
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 2312
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->validate()V

    .line 2313
    return-void

    .line 2281
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 2307
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 2309
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 2283
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 2284
    new-instance v1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2285
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2287
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2291
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 2292
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2293
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2295
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2299
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 2300
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2301
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2303
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2337
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2316
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 2318
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2320
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2321
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2331
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 2332
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 2333
    return-void

    .line 2322
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2323
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2324
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2325
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 2326
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2327
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2328
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$completeTwoFactorAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2329
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
