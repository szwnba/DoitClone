.class public Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
.super Ljava/lang/Object;
.source "NotesMetadataResultSpec.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NotesMetadataResultSpec;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __INCLUDEATTRIBUTES_ISSET_ID:I = 0x8

.field private static final __INCLUDECONTENTLENGTH_ISSET_ID:I = 0x1

.field private static final __INCLUDECREATED_ISSET_ID:I = 0x2

.field private static final __INCLUDEDELETED_ISSET_ID:I = 0x4

.field private static final __INCLUDELARGESTRESOURCEMIME_ISSET_ID:I = 0x9

.field private static final __INCLUDELARGESTRESOURCESIZE_ISSET_ID:I = 0xa

.field private static final __INCLUDENOTEBOOKGUID_ISSET_ID:I = 0x6

.field private static final __INCLUDETAGGUIDS_ISSET_ID:I = 0x7

.field private static final __INCLUDETITLE_ISSET_ID:I = 0x0

.field private static final __INCLUDEUPDATED_ISSET_ID:I = 0x3

.field private static final __INCLUDEUPDATESEQUENCENUM_ISSET_ID:I = 0x5


# instance fields
.field private __isset_vector:[Z

.field private includeAttributes:Z

.field private includeContentLength:Z

.field private includeCreated:Z

.field private includeDeleted:Z

.field private includeLargestResourceMime:Z

.field private includeLargestResourceSize:Z

.field private includeNotebookGuid:Z

.field private includeTagGuids:Z

.field private includeTitle:Z

.field private includeUpdateSequenceNum:Z

.field private includeUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 32
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NotesMetadataResultSpec"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 34
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeTitle"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 35
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeContentLength"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 36
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeCreated"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 37
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeUpdated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 38
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeDeleted"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 39
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeUpdateSequenceNum"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 40
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeNotebookGuid"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 41
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeTagGuids"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 42
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeAttributes"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 43
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeLargestResourceMime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 44
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeLargestResourceSize"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    .line 80
    iget-object v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    .line 82
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    .line 83
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    .line 84
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    .line 85
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    .line 86
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    .line 87
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    .line 88
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    .line 89
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    .line 90
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    .line 91
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    .line 92
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    .line 100
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    .line 102
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    .line 103
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    .line 104
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    .line 105
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    .line 106
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    .line 107
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    .line 108
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    .line 109
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    .line 110
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    .line 111
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    .line 112
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    .line 113
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    .line 114
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    .line 115
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    .line 116
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    .line 117
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    .line 118
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    .line 119
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    .line 120
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    .line 121
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 487
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

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    const/4 v0, 0x0

    .line 491
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 493
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 494
    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 498
    if-nez v0, :cond_0

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 503
    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 507
    if-nez v0, :cond_0

    .line 511
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 512
    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 516
    if-nez v0, :cond_0

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 521
    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 525
    if-nez v0, :cond_0

    .line 529
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 530
    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 534
    if-nez v0, :cond_0

    .line 538
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 539
    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 543
    if-nez v0, :cond_0

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 548
    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 552
    if-nez v0, :cond_0

    .line 556
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 557
    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 561
    if-nez v0, :cond_0

    .line 565
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 566
    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 570
    if-nez v0, :cond_0

    .line 574
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 575
    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 579
    if-nez v0, :cond_0

    .line 583
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 584
    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 592
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->compareTo(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->deepCopy()Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)Z
    .locals 26
    .param p1, "that"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    const/16 v24, 0x0

    .line 477
    :goto_0
    return v24

    .line 378
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v21

    .line 379
    .local v21, "this_present_includeTitle":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v10

    .line 380
    .local v10, "that_present_includeTitle":Z
    if-nez v21, :cond_1

    if-eqz v10, :cond_4

    .line 381
    :cond_1
    if-eqz v21, :cond_2

    if-nez v10, :cond_3

    .line 382
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 383
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 384
    const/16 v24, 0x0

    goto :goto_0

    .line 387
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v14

    .line 388
    .local v14, "this_present_includeContentLength":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v3

    .line 389
    .local v3, "that_present_includeContentLength":Z
    if-nez v14, :cond_5

    if-eqz v3, :cond_8

    .line 390
    :cond_5
    if-eqz v14, :cond_6

    if-nez v3, :cond_7

    .line 391
    :cond_6
    const/16 v24, 0x0

    goto :goto_0

    .line 392
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 393
    const/16 v24, 0x0

    goto :goto_0

    .line 396
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v15

    .line 397
    .local v15, "this_present_includeCreated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v4

    .line 398
    .local v4, "that_present_includeCreated":Z
    if-nez v15, :cond_9

    if-eqz v4, :cond_c

    .line 399
    :cond_9
    if-eqz v15, :cond_a

    if-nez v4, :cond_b

    .line 400
    :cond_a
    const/16 v24, 0x0

    goto :goto_0

    .line 401
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 402
    const/16 v24, 0x0

    goto :goto_0

    .line 405
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v23

    .line 406
    .local v23, "this_present_includeUpdated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v12

    .line 407
    .local v12, "that_present_includeUpdated":Z
    if-nez v23, :cond_d

    if-eqz v12, :cond_10

    .line 408
    :cond_d
    if-eqz v23, :cond_e

    if-nez v12, :cond_f

    .line 409
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 410
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 411
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 414
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v16

    .line 415
    .local v16, "this_present_includeDeleted":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v5

    .line 416
    .local v5, "that_present_includeDeleted":Z
    if-nez v16, :cond_11

    if-eqz v5, :cond_14

    .line 417
    :cond_11
    if-eqz v16, :cond_12

    if-nez v5, :cond_13

    .line 418
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 419
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 420
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 423
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v22

    .line 424
    .local v22, "this_present_includeUpdateSequenceNum":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v11

    .line 425
    .local v11, "that_present_includeUpdateSequenceNum":Z
    if-nez v22, :cond_15

    if-eqz v11, :cond_18

    .line 426
    :cond_15
    if-eqz v22, :cond_16

    if-nez v11, :cond_17

    .line 427
    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 428
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 429
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 432
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v19

    .line 433
    .local v19, "this_present_includeNotebookGuid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v8

    .line 434
    .local v8, "that_present_includeNotebookGuid":Z
    if-nez v19, :cond_19

    if-eqz v8, :cond_1c

    .line 435
    :cond_19
    if-eqz v19, :cond_1a

    if-nez v8, :cond_1b

    .line 436
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 437
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    .line 438
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 441
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v20

    .line 442
    .local v20, "this_present_includeTagGuids":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v9

    .line 443
    .local v9, "that_present_includeTagGuids":Z
    if-nez v20, :cond_1d

    if-eqz v9, :cond_20

    .line 444
    :cond_1d
    if-eqz v20, :cond_1e

    if-nez v9, :cond_1f

    .line 445
    :cond_1e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 446
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_20

    .line 447
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 450
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v13

    .line 451
    .local v13, "this_present_includeAttributes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v2

    .line 452
    .local v2, "that_present_includeAttributes":Z
    if-nez v13, :cond_21

    if-eqz v2, :cond_24

    .line 453
    :cond_21
    if-eqz v13, :cond_22

    if-nez v2, :cond_23

    .line 454
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 455
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_24

    .line 456
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 459
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v17

    .line 460
    .local v17, "this_present_includeLargestResourceMime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v6

    .line 461
    .local v6, "that_present_includeLargestResourceMime":Z
    if-nez v17, :cond_25

    if-eqz v6, :cond_28

    .line 462
    :cond_25
    if-eqz v17, :cond_26

    if-nez v6, :cond_27

    .line 463
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 464
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_28

    .line 465
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 468
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v18

    .line 469
    .local v18, "this_present_includeLargestResourceSize":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v7

    .line 470
    .local v7, "that_present_includeLargestResourceSize":Z
    if-nez v18, :cond_29

    if-eqz v7, :cond_2c

    .line 471
    :cond_29
    if-eqz v18, :cond_2a

    if-nez v7, :cond_2b

    .line 472
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 473
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2c

    .line 474
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 477
    :cond_2c
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 367
    if-nez p1, :cond_1

    .line 371
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 369
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    if-eqz v1, :cond_0

    .line 370
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->equals(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public isIncludeAttributes()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    return v0
.end method

.method public isIncludeContentLength()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    return v0
.end method

.method public isIncludeCreated()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    return v0
.end method

.method public isIncludeDeleted()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    return v0
.end method

.method public isIncludeLargestResourceMime()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    return v0
.end method

.method public isIncludeLargestResourceSize()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    return v0
.end method

.method public isIncludeNotebookGuid()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    return v0
.end method

.method public isIncludeTagGuids()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    return v0
.end method

.method public isIncludeTitle()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    return v0
.end method

.method public isIncludeUpdateSequenceNum()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    return v0
.end method

.method public isIncludeUpdated()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    return v0
.end method

.method public isSetIncludeAttributes()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeContentLength()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeCreated()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeDeleted()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeLargestResourceMime()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeLargestResourceSize()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeNotebookGuid()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeTagGuids()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeTitle()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeUpdateSequenceNum()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncludeUpdated()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 597
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 600
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 601
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 699
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->validate()V

    .line 700
    return-void

    .line 604
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 694
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 696
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 606
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 607
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    .line 608
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    goto :goto_1

    .line 610
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 614
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 615
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    .line 616
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    goto :goto_1

    .line 618
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 622
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 623
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    .line 624
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    goto :goto_1

    .line 626
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 630
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 631
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    .line 632
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    goto :goto_1

    .line 634
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 638
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 639
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    .line 640
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    goto :goto_1

    .line 642
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 646
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 647
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    .line 648
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    goto :goto_1

    .line 650
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 654
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_7

    .line 655
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    .line 656
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    goto/16 :goto_1

    .line 658
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 662
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_8

    .line 663
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    .line 664
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    goto/16 :goto_1

    .line 666
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 670
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_9

    .line 671
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    .line 672
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    goto/16 :goto_1

    .line 674
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 678
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_a

    .line 679
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    .line 680
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    goto/16 :goto_1

    .line 682
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 686
    :pswitch_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_b

    .line 687
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    .line 688
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    goto/16 :goto_1

    .line 690
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 604
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setIncludeAttributes(Z)V
    .locals 1
    .param p1, "includeAttributes"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeAttributesIsSet(Z)V

    .line 306
    return-void
.end method

.method public setIncludeAttributesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x8

    aput-boolean p1, v0, v1

    .line 319
    return-void
.end method

.method public setIncludeContentLength(Z)V
    .locals 1
    .param p1, "includeContentLength"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeContentLengthIsSet(Z)V

    .line 152
    return-void
.end method

.method public setIncludeContentLengthIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 165
    return-void
.end method

.method public setIncludeCreated(Z)V
    .locals 1
    .param p1, "includeCreated"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeCreatedIsSet(Z)V

    .line 174
    return-void
.end method

.method public setIncludeCreatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 187
    return-void
.end method

.method public setIncludeDeleted(Z)V
    .locals 1
    .param p1, "includeDeleted"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeDeletedIsSet(Z)V

    .line 218
    return-void
.end method

.method public setIncludeDeletedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 231
    return-void
.end method

.method public setIncludeLargestResourceMime(Z)V
    .locals 1
    .param p1, "includeLargestResourceMime"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceMimeIsSet(Z)V

    .line 328
    return-void
.end method

.method public setIncludeLargestResourceMimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x9

    aput-boolean p1, v0, v1

    .line 341
    return-void
.end method

.method public setIncludeLargestResourceSize(Z)V
    .locals 1
    .param p1, "includeLargestResourceSize"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeLargestResourceSizeIsSet(Z)V

    .line 350
    return-void
.end method

.method public setIncludeLargestResourceSizeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0xa

    aput-boolean p1, v0, v1

    .line 363
    return-void
.end method

.method public setIncludeNotebookGuid(Z)V
    .locals 1
    .param p1, "includeNotebookGuid"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeNotebookGuidIsSet(Z)V

    .line 262
    return-void
.end method

.method public setIncludeNotebookGuidIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 275
    return-void
.end method

.method public setIncludeTagGuids(Z)V
    .locals 1
    .param p1, "includeTagGuids"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTagGuidsIsSet(Z)V

    .line 284
    return-void
.end method

.method public setIncludeTagGuidsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x7

    aput-boolean p1, v0, v1

    .line 297
    return-void
.end method

.method public setIncludeTitle(Z)V
    .locals 1
    .param p1, "includeTitle"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeTitleIsSet(Z)V

    .line 130
    return-void
.end method

.method public setIncludeTitleIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 143
    return-void
.end method

.method public setIncludeUpdateSequenceNum(Z)V
    .locals 1
    .param p1, "includeUpdateSequenceNum"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdateSequenceNumIsSet(Z)V

    .line 240
    return-void
.end method

.method public setIncludeUpdateSequenceNumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 253
    return-void
.end method

.method public setIncludeUpdated(Z)V
    .locals 1
    .param p1, "includeUpdated"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->setIncludeUpdatedIsSet(Z)V

    .line 196
    return-void
.end method

.method public setIncludeUpdatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotesMetadataResultSpec("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 770
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    const-string v2, "includeTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 773
    const/4 v0, 0x0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 776
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_1
    const-string v2, "includeContentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 779
    const/4 v0, 0x0

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 782
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_3
    const-string v2, "includeCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 785
    const/4 v0, 0x0

    .line 787
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 788
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_5
    const-string v2, "includeUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 791
    const/4 v0, 0x0

    .line 793
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 794
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_7
    const-string v2, "includeDeleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 797
    const/4 v0, 0x0

    .line 799
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 800
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_9
    const-string v2, "includeUpdateSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 803
    const/4 v0, 0x0

    .line 805
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 806
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_b
    const-string v2, "includeNotebookGuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 809
    const/4 v0, 0x0

    .line 811
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 812
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_d
    const-string v2, "includeTagGuids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 815
    const/4 v0, 0x0

    .line 817
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 818
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_f
    const-string v2, "includeAttributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 821
    const/4 v0, 0x0

    .line 823
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 824
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_11
    const-string v2, "includeLargestResourceMime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 827
    const/4 v0, 0x0

    .line 829
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 830
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_13
    const-string v2, "includeLargestResourceSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 833
    const/4 v0, 0x0

    .line 835
    :cond_14
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unsetIncludeAttributes()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 310
    return-void
.end method

.method public unsetIncludeContentLength()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 156
    return-void
.end method

.method public unsetIncludeCreated()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 178
    return-void
.end method

.method public unsetIncludeDeleted()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 222
    return-void
.end method

.method public unsetIncludeLargestResourceMime()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 332
    return-void
.end method

.method public unsetIncludeLargestResourceSize()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 354
    return-void
.end method

.method public unsetIncludeNotebookGuid()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 266
    return-void
.end method

.method public unsetIncludeTagGuids()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 288
    return-void
.end method

.method public unsetIncludeTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 134
    return-void
.end method

.method public unsetIncludeUpdateSequenceNum()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 244
    return-void
.end method

.method public unsetIncludeUpdated()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 200
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
    .line 841
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
    .line 703
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->validate()V

    .line 705
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 706
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 708
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTitle:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 709
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeContentLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 713
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeContentLength:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 714
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 718
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeCreated:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 719
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 723
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdated:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 724
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 726
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeDeleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 728
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeDeleted:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 729
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 731
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 732
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 733
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeUpdateSequenceNum:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 734
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 736
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 737
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 738
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeNotebookGuid:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 739
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 741
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeTagGuids()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 742
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 743
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeTagGuids:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 744
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 746
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeAttributes()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 748
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeAttributes:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 749
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 751
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceMime()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 752
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 753
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceMime:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 754
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 756
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->isSetIncludeLargestResourceSize()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 757
    sget-object v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 758
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->includeLargestResourceSize:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 759
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 761
    :cond_a
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 762
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 763
    return-void
.end method
