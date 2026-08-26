.class Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
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
    name = "updateResource_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$updateResource_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RESOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private resource:Lcom/evernote/edam/type/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21737
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "updateResource_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 21739
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 21740
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "resource"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->RESOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21749
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    .prologue
    .line 21754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21755
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21756
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 21758
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21759
    new-instance v0, Lcom/evernote/edam/type/Resource;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 21761
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21768
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 21769
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 21770
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    .prologue
    .line 21791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21792
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

    .line 21816
    :cond_0
    :goto_0
    return v0

    .line 21795
    :cond_1
    const/4 v0, 0x0

    .line 21796
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 21798
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21799
    if-nez v0, :cond_0

    .line 21802
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 21803
    if-nez v0, :cond_0

    .line 21807
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21808
    if-nez v0, :cond_0

    .line 21811
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 21812
    if-nez v0, :cond_0

    .line 21816
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21736
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
    .locals 1

    .prologue
    .line 21764
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 21736
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 21778
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResource()Z
    .locals 1

    .prologue
    .line 21787
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

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
    .line 21821
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 21824
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 21825
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 21849
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 21850
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->validate()V

    .line 21851
    return-void

    .line 21828
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 21845
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 21847
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 21830
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 21831
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 21833
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21837
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 21838
    new-instance v1, Lcom/evernote/edam/type/Resource;

    invoke-direct {v1}, Lcom/evernote/edam/type/Resource;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 21839
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Resource;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 21841
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21828
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
    .line 21773
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 21774
    return-void
.end method

.method public setResource(Lcom/evernote/edam/type/Resource;)V
    .locals 0
    .param p1, "resource"    # Lcom/evernote/edam/type/Resource;

    .prologue
    .line 21782
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 21783
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
    .line 21873
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
    .line 21854
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->validate()V

    .line 21856
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 21857
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21858
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21859
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 21860
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21862
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    if-eqz v0, :cond_1

    .line 21863
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->RESOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21864
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Resource;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 21865
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21867
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 21868
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 21869
    return-void
.end method
