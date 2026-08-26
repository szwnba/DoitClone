.class Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
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
    name = "checkVersion_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$checkVersion_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __SUCCESS_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 748
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "checkVersion_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 750
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    .line 760
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .prologue
    const/4 v3, 0x0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    .line 766
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 768
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    .line 776
    iput-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 777
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .prologue
    .line 789
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
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

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    const/4 v0, 0x0

    .line 794
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 796
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 797
    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    iget-boolean v3, v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 805
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 747
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
    .locals 1

    .prologue
    .line 771
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;-><init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
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
    .line 810
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 813
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 814
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 831
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 832
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->validate()V

    .line 833
    return-void

    .line 817
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 827
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 829
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 819
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 820
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 821
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 823
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setSuccessIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 785
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 786
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 849
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
    .line 836
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 838
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 840
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 841
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 844
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 845
    return-void
.end method
