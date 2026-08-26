.class Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;
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
    name = "authenticateToSharedNote_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private noteKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 29336
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "authenticateToSharedNote_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 29338
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29339
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteKey"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->NOTE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29340
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29350
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    .prologue
    .line 29355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29356
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29357
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    .line 29359
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetNoteKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29360
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    .line 29362
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29363
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    .line 29365
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29372
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    .line 29373
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    .line 29374
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    .line 29375
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    .prologue
    .line 29405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29406
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

    .line 29439
    :cond_0
    :goto_0
    return v0

    .line 29409
    :cond_1
    const/4 v0, 0x0

    .line 29410
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 29412
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29413
    if-nez v0, :cond_0

    .line 29416
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29417
    if-nez v0, :cond_0

    .line 29421
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetNoteKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetNoteKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29422
    if-nez v0, :cond_0

    .line 29425
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetNoteKey()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29426
    if-nez v0, :cond_0

    .line 29430
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29431
    if-nez v0, :cond_0

    .line 29434
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29435
    if-nez v0, :cond_0

    .line 29439
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29335
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;
    .locals 1

    .prologue
    .line 29368
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 29335
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 29401
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

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
    .line 29383
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNoteKey()Z
    .locals 1

    .prologue
    .line 29392
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

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

    .line 29444
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 29447
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 29448
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 29478
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 29479
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->validate()V

    .line 29480
    return-void

    .line 29451
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 29474
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 29476
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 29453
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 29454
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 29456
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29460
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 29461
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    goto :goto_1

    .line 29463
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29467
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 29468
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 29470
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29451
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
    .line 29396
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    .line 29397
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 29378
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    .line 29379
    return-void
.end method

.method public setNoteKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteKey"    # Ljava/lang/String;

    .prologue
    .line 29387
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    .line 29388
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
    .line 29507
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
    .line 29483
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->validate()V

    .line 29485
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 29486
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29487
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29488
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 29489
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29491
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29492
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->NOTE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29493
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 29494
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29496
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 29497
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29498
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 29499
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29501
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 29502
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 29503
    return-void
.end method
