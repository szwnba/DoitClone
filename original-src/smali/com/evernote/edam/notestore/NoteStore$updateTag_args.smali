.class Lcom/evernote/edam/notestore/NoteStore$updateTag_args;
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
    name = "updateTag_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$updateTag_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private tag:Lcom/evernote/edam/type/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8841
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "updateTag_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 8843
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8844
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tag"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8853
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$updateTag_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    .prologue
    .line 8858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8859
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8860
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    .line 8862
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8863
    new-instance v0, Lcom/evernote/edam/type/Tag;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    .line 8865
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8872
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    .line 8873
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    .line 8874
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$updateTag_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    .prologue
    .line 8895
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8896
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

    .line 8920
    :cond_0
    :goto_0
    return v0

    .line 8899
    :cond_1
    const/4 v0, 0x0

    .line 8900
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 8902
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$updateTag_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8903
    if-nez v0, :cond_0

    .line 8906
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 8907
    if-nez v0, :cond_0

    .line 8911
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetTag()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetTag()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8912
    if-nez v0, :cond_0

    .line 8915
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->isSetTag()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8916
    if-nez v0, :cond_0

    .line 8920
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8840
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$updateTag_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateTag_args;
    .locals 1

    .prologue
    .line 8868
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$updateTag_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 8840
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateTag_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 8882
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTag()Z
    .locals 1

    .prologue
    .line 8891
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

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
    .line 8925
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 8928
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 8929
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 8953
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 8954
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->validate()V

    .line 8955
    return-void

    .line 8932
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 8949
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 8951
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 8934
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 8935
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 8937
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8941
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 8942
    new-instance v1, Lcom/evernote/edam/type/Tag;

    invoke-direct {v1}, Lcom/evernote/edam/type/Tag;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    .line 8943
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8945
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 8877
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    .line 8878
    return-void
.end method

.method public setTag(Lcom/evernote/edam/type/Tag;)V
    .locals 0
    .param p1, "tag"    # Lcom/evernote/edam/type/Tag;

    .prologue
    .line 8886
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    .line 8887
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
    .line 8977
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
    .line 8958
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->validate()V

    .line 8960
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 8961
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8962
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8963
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 8964
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 8966
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    if-eqz v0, :cond_1

    .line 8967
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->TAG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8968
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateTag_args;->tag:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8969
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 8971
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 8972
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 8973
    return-void
.end method
