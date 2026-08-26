.class Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;
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
    name = "getNoteSearchText_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TOKENIZE_FOR_INDEXING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __NOTEONLY_ISSET_ID:I = 0x0

.field private static final __TOKENIZEFORINDEXING_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private noteOnly:Z

.field private tokenizeForIndexing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    .line 15410
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteSearchText_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 15412
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15413
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15414
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteOnly"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->NOTE_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15415
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tokenizeForIndexing"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->TOKENIZE_FOR_INDEXING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15426
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    .line 15429
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    .prologue
    const/4 v3, 0x0

    .line 15434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15426
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    .line 15435
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15436
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15437
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    .line 15439
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15440
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    .line 15442
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    .line 15443
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    .line 15444
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15451
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    .line 15452
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    .line 15453
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setNoteOnlyIsSet(Z)V

    .line 15454
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    .line 15455
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setTokenizeForIndexingIsSet(Z)V

    .line 15456
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    .line 15457
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    .prologue
    .line 15506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15507
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

    .line 15549
    :cond_0
    :goto_0
    return v0

    .line 15510
    :cond_1
    const/4 v0, 0x0

    .line 15511
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 15513
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15514
    if-nez v0, :cond_0

    .line 15517
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15518
    if-nez v0, :cond_0

    .line 15522
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15523
    if-nez v0, :cond_0

    .line 15526
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15527
    if-nez v0, :cond_0

    .line 15531
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetNoteOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetNoteOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15532
    if-nez v0, :cond_0

    .line 15535
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetNoteOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 15536
    if-nez v0, :cond_0

    .line 15540
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetTokenizeForIndexing()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetTokenizeForIndexing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15541
    if-nez v0, :cond_0

    .line 15544
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->isSetTokenizeForIndexing()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 15545
    if-nez v0, :cond_0

    .line 15549
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15409
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;
    .locals 1

    .prologue
    .line 15447
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 15409
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 15465
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

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
    .line 15474
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNoteOnly()Z
    .locals 2

    .prologue
    .line 15484
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetTokenizeForIndexing()Z
    .locals 2

    .prologue
    .line 15498
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

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
    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 15554
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 15557
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 15558
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 15597
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 15598
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->validate()V

    .line 15599
    return-void

    .line 15561
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 15593
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 15595
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 15563
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 15564
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 15566
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15570
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 15571
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 15573
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15577
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 15578
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    .line 15579
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setNoteOnlyIsSet(Z)V

    goto :goto_1

    .line 15581
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15585
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 15586
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    .line 15587
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setTokenizeForIndexingIsSet(Z)V

    goto :goto_1

    .line 15589
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15561
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
    .line 15460
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    .line 15461
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 15469
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    .line 15470
    return-void
.end method

.method public setNoteOnly(Z)V
    .locals 1
    .param p1, "noteOnly"    # Z

    .prologue
    .line 15478
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    .line 15479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setNoteOnlyIsSet(Z)V

    .line 15480
    return-void
.end method

.method public setNoteOnlyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 15488
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 15489
    return-void
.end method

.method public setTokenizeForIndexing(Z)V
    .locals 1
    .param p1, "tokenizeForIndexing"    # Z

    .prologue
    .line 15492
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    .line 15493
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->setTokenizeForIndexingIsSet(Z)V

    .line 15494
    return-void
.end method

.method public setTokenizeForIndexingIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 15502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 15503
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
    .line 15627
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
    .line 15602
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->validate()V

    .line 15604
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 15605
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 15606
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15607
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 15608
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 15610
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 15611
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15612
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 15613
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 15615
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->NOTE_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15616
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->noteOnly:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 15617
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 15618
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->TOKENIZE_FOR_INDEXING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15619
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteSearchText_args;->tokenizeForIndexing:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 15620
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 15621
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 15622
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 15623
    return-void
.end method
