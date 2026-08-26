.class Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;
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
    name = "refreshAuthentication_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;",
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

    .line 2950
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "refreshAuthentication_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 2952
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2953
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2954
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2964
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .prologue
    .line 2969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2970
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2971
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2973
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2974
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2976
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2977
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2979
    :cond_2
    return-void
.end method

.method static synthetic access$1600(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2986
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2987
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2988
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2989
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .prologue
    .line 3007
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3008
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

    .line 3041
    :cond_0
    :goto_0
    return v0

    .line 3011
    :cond_1
    const/4 v0, 0x0

    .line 3012
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3014
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3015
    if-nez v0, :cond_0

    .line 3018
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3019
    if-nez v0, :cond_0

    .line 3023
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3024
    if-nez v0, :cond_0

    .line 3027
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3028
    if-nez v0, :cond_0

    .line 3032
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3033
    if-nez v0, :cond_0

    .line 3036
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3037
    if-nez v0, :cond_0

    .line 3041
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2949
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;
    .locals 1

    .prologue
    .line 2982
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;-><init>(Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 2949
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

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
    .line 3003
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 2998
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 3046
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3049
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3050
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3083
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3084
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->validate()V

    .line 3085
    return-void

    .line 3053
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3079
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3081
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3055
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 3056
    new-instance v1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 3057
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3059
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3063
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 3064
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3065
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3067
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3071
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 3072
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3073
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3075
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3053
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
    .line 3109
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
    .line 3088
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3090
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3091
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3092
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3093
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3104
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3105
    return-void

    .line 3094
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3095
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3096
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3097
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3098
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3100
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$refreshAuthentication_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3101
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
