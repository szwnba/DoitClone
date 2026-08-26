.class Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;
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
    name = "setResourceApplicationDataEntry_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final VALUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 20945
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "setResourceApplicationDataEntry_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 20947
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20948
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20949
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "key"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20950
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "value"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->VALUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20961
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    .prologue
    .line 20966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20967
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20968
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    .line 20970
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20971
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    .line 20973
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20974
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    .line 20976
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20977
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    .line 20979
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20986
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    .line 20987
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    .line 20988
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    .line 20989
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    .line 20990
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    .prologue
    .line 21029
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21030
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

    .line 21072
    :cond_0
    :goto_0
    return v0

    .line 21033
    :cond_1
    const/4 v0, 0x0

    .line 21034
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 21036
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21037
    if-nez v0, :cond_0

    .line 21040
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 21041
    if-nez v0, :cond_0

    .line 21045
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21046
    if-nez v0, :cond_0

    .line 21049
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 21050
    if-nez v0, :cond_0

    .line 21054
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21055
    if-nez v0, :cond_0

    .line 21058
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetKey()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 21059
    if-nez v0, :cond_0

    .line 21063
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 21064
    if-nez v0, :cond_0

    .line 21067
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->isSetValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 21068
    if-nez v0, :cond_0

    .line 21072
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20944
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;
    .locals 1

    .prologue
    .line 20982
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 20944
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 20998
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

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
    .line 21007
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetKey()Z
    .locals 1

    .prologue
    .line 21016
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetValue()Z
    .locals 1

    .prologue
    .line 21025
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

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

    .line 21077
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 21080
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 21081
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 21118
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 21119
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->validate()V

    .line 21120
    return-void

    .line 21084
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 21114
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 21116
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 21086
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 21087
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 21089
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21093
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 21094
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 21096
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21100
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 21101
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    goto :goto_1

    .line 21103
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21107
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 21108
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    goto :goto_1

    .line 21110
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 21084
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 20993
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    .line 20994
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 21002
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    .line 21003
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 21011
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    .line 21012
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21020
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    .line 21021
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
    .line 21152
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
    .line 21123
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->validate()V

    .line 21125
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 21126
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21127
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21128
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 21129
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21131
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 21132
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21133
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 21134
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21136
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 21137
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21138
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 21139
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21141
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21142
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->VALUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 21143
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setResourceApplicationDataEntry_args;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 21144
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 21146
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 21147
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 21148
    return-void
.end method
