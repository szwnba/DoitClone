.class Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
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
    name = "getBootstrapInfo_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private success:Lcom/evernote/edam/userstore/BootstrapInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 958
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getBootstrapInfo_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 960
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    .prologue
    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    new-instance v0, Lcom/evernote/edam/userstore/BootstrapInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/BootstrapInfo;-><init>(Lcom/evernote/edam/userstore/BootstrapInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    .line 977
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    .line 985
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    .prologue
    .line 993
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 994
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

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    const/4 v0, 0x0

    .line 998
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 1000
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1001
    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1005
    if-nez v0, :cond_0

    .line 1009
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 957
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;
    .locals 1

    .prologue
    .line 980
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

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
    .line 1014
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1017
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 1018
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1036
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->validate()V

    .line 1037
    return-void

    .line 1021
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1031
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1033
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1023
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1024
    new-instance v1, Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/BootstrapInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    .line 1025
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 1027
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 1053
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
    .line 1040
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1042
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1044
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_result;->success:Lcom/evernote/edam/userstore/BootstrapInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1045
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1047
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1048
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1049
    return-void
.end method
