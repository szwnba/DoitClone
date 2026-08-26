.class Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;
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
    name = "getResourceRecognition_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 22911
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getResourceRecognition_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 22913
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22914
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22923
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    .prologue
    .line 22928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22929
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22930
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    .line 22932
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22933
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    .line 22935
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22942
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    .line 22943
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    .line 22944
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    .prologue
    .line 22965
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22966
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

    .line 22990
    :cond_0
    :goto_0
    return v0

    .line 22969
    :cond_1
    const/4 v0, 0x0

    .line 22970
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 22972
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22973
    if-nez v0, :cond_0

    .line 22976
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22977
    if-nez v0, :cond_0

    .line 22981
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22982
    if-nez v0, :cond_0

    .line 22985
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22986
    if-nez v0, :cond_0

    .line 22990
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22910
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;
    .locals 1

    .prologue
    .line 22938
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 22910
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 22952
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 22961
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

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
    const/16 v2, 0xb

    .line 22995
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 22998
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 22999
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 23022
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 23023
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->validate()V

    .line 23024
    return-void

    .line 23002
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 23018
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 23020
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 23004
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 23005
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 23007
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 23011
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 23012
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 23014
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 23002
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
    .line 22947
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    .line 22948
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 22956
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    .line 22957
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
    .line 23046
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
    .line 23027
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->validate()V

    .line 23029
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 23030
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23031
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 23032
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 23033
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 23035
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 23036
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 23037
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceRecognition_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 23038
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 23040
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 23041
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 23042
    return-void
.end method
