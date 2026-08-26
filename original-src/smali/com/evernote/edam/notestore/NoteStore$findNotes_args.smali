.class Lcom/evernote/edam/notestore/NoteStore$findNotes_args;
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
    name = "findNotes_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findNotes_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final OFFSET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __MAXNOTES_ISSET_ID:I = 0x1

.field private static final __OFFSET_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private filter:Lcom/evernote/edam/notestore/NoteFilter;

.field private maxNotes:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 11445
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findNotes_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 11447
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 11448
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "filter"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 11449
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "offset"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->OFFSET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 11450
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxNotes"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11461
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    .line 11464
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findNotes_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    .prologue
    const/4 v3, 0x0

    .line 11469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11461
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    .line 11470
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11471
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11472
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    .line 11474
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11475
    new-instance v0, Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>(Lcom/evernote/edam/notestore/NoteFilter;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 11477
    :cond_1
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    .line 11478
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    .line 11479
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 11486
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    .line 11487
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 11488
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setOffsetIsSet(Z)V

    .line 11489
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    .line 11490
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setMaxNotesIsSet(Z)V

    .line 11491
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    .line 11492
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotes_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    .prologue
    .line 11541
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11542
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

    .line 11584
    :cond_0
    :goto_0
    return v0

    .line 11545
    :cond_1
    const/4 v0, 0x0

    .line 11546
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 11548
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findNotes_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 11549
    if-nez v0, :cond_0

    .line 11552
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 11553
    if-nez v0, :cond_0

    .line 11557
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetFilter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetFilter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 11558
    if-nez v0, :cond_0

    .line 11561
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetFilter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 11562
    if-nez v0, :cond_0

    .line 11566
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetOffset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetOffset()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 11567
    if-nez v0, :cond_0

    .line 11570
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 11571
    if-nez v0, :cond_0

    .line 11575
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetMaxNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetMaxNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 11576
    if-nez v0, :cond_0

    .line 11579
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->isSetMaxNotes()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 11580
    if-nez v0, :cond_0

    .line 11584
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11444
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotes_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotes_args;
    .locals 1

    .prologue
    .line 11482
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$findNotes_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 11444
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotes_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 11500
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

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
    .line 11509
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMaxNotes()Z
    .locals 2

    .prologue
    .line 11533
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetOffset()Z
    .locals 2

    .prologue
    .line 11519
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    const/4 v1, 0x0

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

    .line 11589
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 11592
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 11593
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 11633
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 11634
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->validate()V

    .line 11635
    return-void

    .line 11596
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 11629
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 11631
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 11598
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 11599
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 11601
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 11605
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 11606
    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 11607
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteFilter;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 11609
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 11613
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 11614
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    .line 11615
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setOffsetIsSet(Z)V

    goto :goto_1

    .line 11617
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 11621
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 11622
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    .line 11623
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setMaxNotesIsSet(Z)V

    goto :goto_1

    .line 11625
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 11596
    nop

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
    .line 11495
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    .line 11496
    return-void
.end method

.method public setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;

    .prologue
    .line 11504
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 11505
    return-void
.end method

.method public setMaxNotes(I)V
    .locals 1
    .param p1, "maxNotes"    # I

    .prologue
    .line 11527
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    .line 11528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setMaxNotesIsSet(Z)V

    .line 11529
    return-void
.end method

.method public setMaxNotesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 11537
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 11538
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 11513
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    .line 11514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->setOffsetIsSet(Z)V

    .line 11515
    return-void
.end method

.method public setOffsetIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 11523
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 11524
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
    .line 11663
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
    .line 11638
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->validate()V

    .line 11640
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 11641
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11642
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 11643
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 11644
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 11646
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-eqz v0, :cond_1

    .line 11647
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 11648
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteFilter;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 11649
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 11651
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->OFFSET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 11652
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->offset:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 11653
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 11654
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 11655
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotes_args;->maxNotes:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 11656
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 11657
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 11658
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 11659
    return-void
.end method
