.class Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;
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
    name = "getFilteredSyncChunk_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __AFTERUSN_ISSET_ID:I = 0x0

.field private static final __MAXENTRIES_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private afterUSN:I

.field private authenticationToken:Ljava/lang/String;

.field private filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

.field private maxEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 4456
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getFilteredSyncChunk_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4458
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4459
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "afterUSN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4460
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxEntries"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4461
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "filter"

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4472
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    .line 4475
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    .prologue
    const/4 v3, 0x0

    .line 4480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4472
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    .line 4481
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4482
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4483
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4485
    :cond_0
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    .line 4486
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    .line 4487
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4488
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunkFilter;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncChunkFilter;-><init>(Lcom/evernote/edam/notestore/SyncChunkFilter;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    .line 4490
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4497
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4498
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 4499
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    .line 4500
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 4501
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    .line 4502
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    .line 4503
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    .prologue
    .line 4552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4553
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

    .line 4595
    :cond_0
    :goto_0
    return v0

    .line 4556
    :cond_1
    const/4 v0, 0x0

    .line 4557
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 4559
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4560
    if-nez v0, :cond_0

    .line 4563
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4564
    if-nez v0, :cond_0

    .line 4568
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAfterUSN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4569
    if-nez v0, :cond_0

    .line 4572
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 4573
    if-nez v0, :cond_0

    .line 4577
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetMaxEntries()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4578
    if-nez v0, :cond_0

    .line 4581
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 4582
    if-nez v0, :cond_0

    .line 4586
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetFilter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetFilter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4587
    if-nez v0, :cond_0

    .line 4590
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->isSetFilter()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4591
    if-nez v0, :cond_0

    .line 4595
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4455
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;
    .locals 1

    .prologue
    .line 4493
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4455
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAfterUSN()Z
    .locals 2

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetFilter()Z
    .locals 1

    .prologue
    .line 4548
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMaxEntries()Z
    .locals 2

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

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

    .line 4600
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4603
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4604
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4644
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4645
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->validate()V

    .line 4646
    return-void

    .line 4607
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4640
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4642
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4609
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 4610
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 4612
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4616
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 4617
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    .line 4618
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAfterUSNIsSet(Z)V

    goto :goto_1

    .line 4620
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4624
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 4625
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    .line 4626
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setMaxEntriesIsSet(Z)V

    goto :goto_1

    .line 4628
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4632
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 4633
    new-instance v1, Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncChunkFilter;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    .line 4634
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4636
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4607
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
    .line 4515
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    .line 4516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 4517
    return-void
.end method

.method public setAfterUSNIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 4526
    return-void
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 4507
    return-void
.end method

.method public setFilter(Lcom/evernote/edam/notestore/SyncChunkFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/evernote/edam/notestore/SyncChunkFilter;

    .prologue
    .line 4543
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    .line 4544
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "maxEntries"    # I

    .prologue
    .line 4529
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    .line 4530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 4531
    return-void
.end method

.method public setMaxEntriesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 4540
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
    .line 4674
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
    .line 4649
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->validate()V

    .line 4651
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4652
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4653
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4654
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 4655
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4657
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4658
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->afterUSN:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 4659
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4660
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4661
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->maxEntries:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 4662
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4663
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    if-eqz v0, :cond_1

    .line 4664
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4665
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_args;->filter:Lcom/evernote/edam/notestore/SyncChunkFilter;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncChunkFilter;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4666
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4668
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4669
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4670
    return-void
.end method
