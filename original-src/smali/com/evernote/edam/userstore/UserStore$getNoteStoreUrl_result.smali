.class Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;
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
    name = "getNoteStoreUrl_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;",
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
.field private success:Ljava/lang/String;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 4054
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteStoreUrl_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4056
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4057
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4058
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4068
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .prologue
    .line 4073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4074
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4075
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    .line 4077
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4078
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4080
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4081
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4083
    :cond_2
    return-void
.end method

.method static synthetic access$2900(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .prologue
    .line 4053
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .prologue
    .line 4053
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .prologue
    .line 4053
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4090
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    .line 4091
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4092
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4093
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .prologue
    .line 4111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4112
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

    .line 4145
    :cond_0
    :goto_0
    return v0

    .line 4115
    :cond_1
    const/4 v0, 0x0

    .line 4116
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 4118
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4119
    if-nez v0, :cond_0

    .line 4122
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4123
    if-nez v0, :cond_0

    .line 4127
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4128
    if-nez v0, :cond_0

    .line 4131
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4132
    if-nez v0, :cond_0

    .line 4136
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4137
    if-nez v0, :cond_0

    .line 4140
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4141
    if-nez v0, :cond_0

    .line 4145
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4053
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;
    .locals 1

    .prologue
    .line 4086
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4053
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 4097
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

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
    .line 4107
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 4102
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 4150
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4153
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4154
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4186
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4187
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->validate()V

    .line 4188
    return-void

    .line 4157
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4182
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4184
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4159
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 4160
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    goto :goto_1

    .line 4162
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4166
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 4167
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4168
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4170
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4174
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 4175
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4176
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4178
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4157
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
    .line 4212
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
    .line 4191
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4193
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4194
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4195
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->success:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 4196
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4207
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4208
    return-void

    .line 4197
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4198
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4199
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4200
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4201
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4202
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4203
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getNoteStoreUrl_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4204
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
