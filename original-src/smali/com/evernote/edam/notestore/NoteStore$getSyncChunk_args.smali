.class Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;
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
    name = "getSyncChunk_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __AFTERUSN_ISSET_ID:I = 0x0

.field private static final __FULLSYNCONLY_ISSET_ID:I = 0x2

.field private static final __MAXENTRIES_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private afterUSN:I

.field private authenticationToken:Ljava/lang/String;

.field private fullSyncOnly:Z

.field private maxEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 4066
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSyncChunk_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4068
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4069
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "afterUSN"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4070
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxEntries"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4071
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "fullSyncOnly"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4083
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    .line 4086
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    .prologue
    const/4 v3, 0x0

    .line 4091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4083
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    .line 4092
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4093
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4094
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4096
    :cond_0
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    .line 4097
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    .line 4098
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    .line 4099
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4107
    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 4108
    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    .line 4109
    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 4110
    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    .line 4111
    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    .line 4112
    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    .line 4113
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    .prologue
    .line 4167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4168
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

    .line 4210
    :cond_0
    :goto_0
    return v0

    .line 4171
    :cond_1
    const/4 v0, 0x0

    .line 4172
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 4174
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4175
    if-nez v0, :cond_0

    .line 4178
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4179
    if-nez v0, :cond_0

    .line 4183
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAfterUSN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4184
    if-nez v0, :cond_0

    .line 4187
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 4188
    if-nez v0, :cond_0

    .line 4192
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetMaxEntries()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4193
    if-nez v0, :cond_0

    .line 4196
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 4197
    if-nez v0, :cond_0

    .line 4201
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4202
    if-nez v0, :cond_0

    .line 4205
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 4206
    if-nez v0, :cond_0

    .line 4210
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4065
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;
    .locals 1

    .prologue
    .line 4102
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4065
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAfterUSN()Z
    .locals 2

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetFullSyncOnly()Z
    .locals 2

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetMaxEntries()Z
    .locals 2

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 4215
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4218
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4219
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4259
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4260
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->validate()V

    .line 4261
    return-void

    .line 4222
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4255
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4257
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4224
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 4225
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 4227
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4231
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 4232
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    .line 4233
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAfterUSNIsSet(Z)V

    goto :goto_1

    .line 4235
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4239
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 4240
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    .line 4241
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setMaxEntriesIsSet(Z)V

    goto :goto_1

    .line 4243
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4247
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 4248
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    .line 4249
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    goto :goto_1

    .line 4251
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAfterUSN(I)V
    .locals 1
    .param p1, "afterUSN"    # I

    .prologue
    .line 4125
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    .line 4126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 4127
    return-void
.end method

.method public setAfterUSNIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 4136
    return-void
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 4116
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4117
    return-void
.end method

.method public setFullSyncOnly(Z)V
    .locals 1
    .param p1, "fullSyncOnly"    # Z

    .prologue
    .line 4153
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    .line 4154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    .line 4155
    return-void
.end method

.method public setFullSyncOnlyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4163
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 4164
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "maxEntries"    # I

    .prologue
    .line 4139
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    .line 4140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 4141
    return-void
.end method

.method public setMaxEntriesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 4150
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
    .line 4287
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
    .line 4264
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->validate()V

    .line 4266
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4267
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4268
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4269
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 4270
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4272
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4273
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->afterUSN:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 4274
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4275
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4276
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->maxEntries:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 4277
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4278
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4279
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_args;->fullSyncOnly:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 4280
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4281
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4282
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4283
    return-void
.end method
