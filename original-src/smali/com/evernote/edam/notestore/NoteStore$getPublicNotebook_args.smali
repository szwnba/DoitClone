.class Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "getPublicNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final PUBLIC_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __USERID_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private publicUri:Ljava/lang/String;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23919
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPublicNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 23921
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userId"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 23922
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "publicUri"

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->PUBLIC_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23930
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    .line 23933
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    .prologue
    const/4 v3, 0x0

    .line 23938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23930
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    .line 23939
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23940
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    .line 23941
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetPublicUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23942
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    .line 23944
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23951
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setUserIdIsSet(Z)V

    .line 23952
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    .line 23953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    .line 23954
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    .prologue
    .line 23980
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 23981
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

    .line 24005
    :cond_0
    :goto_0
    return v0

    .line 23984
    :cond_1
    const/4 v0, 0x0

    .line 23985
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 23987
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetUserId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetUserId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 23988
    if-nez v0, :cond_0

    .line 23991
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetUserId()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 23992
    if-nez v0, :cond_0

    .line 23996
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetPublicUri()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetPublicUri()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 23997
    if-nez v0, :cond_0

    .line 24000
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->isSetPublicUri()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24001
    if-nez v0, :cond_0

    .line 24005
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23918
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;
    .locals 1

    .prologue
    .line 23947
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 23918
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetPublicUri()Z
    .locals 1

    .prologue
    .line 23976
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserId()Z
    .locals 2

    .prologue
    .line 23963
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

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
    .line 24010
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 24013
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 24014
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 24038
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 24039
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->validate()V

    .line 24040
    return-void

    .line 24017
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 24034
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 24036
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 24019
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 24020
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    .line 24021
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setUserIdIsSet(Z)V

    goto :goto_1

    .line 24023
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24027
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 24028
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    goto :goto_1

    .line 24030
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPublicUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicUri"    # Ljava/lang/String;

    .prologue
    .line 23971
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    .line 23972
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 23957
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    .line 23958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->setUserIdIsSet(Z)V

    .line 23959
    return-void
.end method

.method public setUserIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 23967
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 23968
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
    .line 24060
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
    .line 24043
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->validate()V

    .line 24045
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 24046
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24047
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->userId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 24048
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 24049
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24050
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->PUBLIC_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24051
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_args;->publicUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 24052
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 24054
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 24055
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 24056
    return-void
.end method
