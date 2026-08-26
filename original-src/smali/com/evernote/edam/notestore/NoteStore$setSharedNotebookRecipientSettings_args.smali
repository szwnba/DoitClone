.class Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;
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
    name = "setSharedNotebookRecipientSettings_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOK_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __SHAREDNOTEBOOKID_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

.field private sharedNotebookId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24909
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "setSharedNotebookRecipientSettings_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 24911
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 24912
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sharedNotebookId"

    const/16 v2, 0xa

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->SHARED_NOTEBOOK_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 24913
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recipientSettings"

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24922
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    .line 24925
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    .prologue
    const/4 v3, 0x0

    .line 24930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24922
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    .line 24931
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24932
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24933
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    .line 24935
    :cond_0
    iget-wide v0, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    .line 24936
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24937
    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 24939
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24946
    iput-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    .line 24947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setSharedNotebookIdIsSet(Z)V

    .line 24948
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    .line 24949
    iput-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 24950
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    .prologue
    .line 24985
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24986
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

    .line 25019
    :cond_0
    :goto_0
    return v0

    .line 24989
    :cond_1
    const/4 v0, 0x0

    .line 24990
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 24992
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24993
    if-nez v0, :cond_0

    .line 24996
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24997
    if-nez v0, :cond_0

    .line 25001
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetSharedNotebookId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetSharedNotebookId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25002
    if-nez v0, :cond_0

    .line 25005
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetSharedNotebookId()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 25006
    if-nez v0, :cond_0

    .line 25010
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetRecipientSettings()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetRecipientSettings()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25011
    if-nez v0, :cond_0

    .line 25014
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->isSetRecipientSettings()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25015
    if-nez v0, :cond_0

    .line 25019
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24908
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;
    .locals 1

    .prologue
    .line 24942
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 24908
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 24958
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecipientSettings()Z
    .locals 1

    .prologue
    .line 24981
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSharedNotebookId()Z
    .locals 2

    .prologue
    .line 24968
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
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
    .line 25024
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 25027
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 25028
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 25060
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 25061
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->validate()V

    .line 25062
    return-void

    .line 25031
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 25056
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 25058
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 25033
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 25034
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 25036
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25040
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 25041
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    .line 25042
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setSharedNotebookIdIsSet(Z)V

    goto :goto_1

    .line 25044
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25048
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 25049
    new-instance v1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 25050
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25052
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 24953
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    .line 24954
    return-void
.end method

.method public setRecipientSettings(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 0
    .param p1, "recipientSettings"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .prologue
    .line 24976
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 24977
    return-void
.end method

.method public setSharedNotebookId(J)V
    .locals 1
    .param p1, "sharedNotebookId"    # J

    .prologue
    .line 24962
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    .line 24963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->setSharedNotebookIdIsSet(Z)V

    .line 24964
    return-void
.end method

.method public setSharedNotebookIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 24972
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 24973
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
    .line 25087
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 25065
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->validate()V

    .line 25067
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 25068
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25069
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25070
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 25071
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25073
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->SHARED_NOTEBOOK_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25074
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->sharedNotebookId:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 25075
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25076
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v0, :cond_1

    .line 25077
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25078
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_args;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25079
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25081
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 25082
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 25083
    return-void
.end method
