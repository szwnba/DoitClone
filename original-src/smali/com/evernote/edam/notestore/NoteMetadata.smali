.class public Lcom/evernote/edam/notestore/NoteMetadata;
.super Ljava/lang/Object;
.source "NoteMetadata.java"

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
        "Lcom/evernote/edam/notestore/NoteMetadata;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CONTENTLENGTH_ISSET_ID:I = 0x0

.field private static final __CREATED_ISSET_ID:I = 0x1

.field private static final __DELETED_ISSET_ID:I = 0x3

.field private static final __LARGESTRESOURCESIZE_ISSET_ID:I = 0x5

.field private static final __UPDATED_ISSET_ID:I = 0x2

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I = 0x4


# instance fields
.field private __isset_vector:[Z

.field private attributes:Lcom/evernote/edam/type/NoteAttributes;

.field private contentLength:I

.field private created:J

.field private deleted:J

.field private guid:Ljava/lang/String;

.field private largestResourceMime:Ljava/lang/String;

.field private largestResourceSize:I

.field private notebookGuid:Ljava/lang/String;

.field private tagGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private updateSequenceNum:I

.field private updated:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/16 v3, 0xb

    .line 42
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteMetadata"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 44
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 45
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "title"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 46
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "contentLength"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 47
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "created"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 48
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 49
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 50
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 51
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookGuid"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 52
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tagGuids"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 53
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attributes"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 54
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "largestResourceMime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 55
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "largestResourceSize"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteMetadata;)V
    .locals 7
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteMetadata;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v3, 0x6

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    .line 94
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 101
    :cond_1
    iget v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    iput v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    .line 102
    iget-wide v4, p1, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    .line 103
    iget-wide v4, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    .line 104
    iget-wide v4, p1, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    .line 105
    iget v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iput v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    .line 106
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "__this__tagGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "other_element":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v2    # "other_element":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 116
    .end local v0    # "__this__tagGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    new-instance v3, Lcom/evernote/edam/type/NoteAttributes;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v3, v4}, Lcom/evernote/edam/type/NoteAttributes;-><init>(Lcom/evernote/edam/type/NoteAttributes;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 122
    :cond_6
    iget v3, p1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    iput v3, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public addToTagGuids(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    .line 133
    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    .line 134
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    .line 135
    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    .line 136
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    .line 137
    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    .line 138
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    .line 139
    iput-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    .line 140
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    .line 141
    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    .line 142
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 144
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 145
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    .line 147
    iput v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    .line 148
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteMetadata;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteMetadata;

    .prologue
    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
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

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    const/4 v0, 0x0

    .line 570
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 572
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteMetadata;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 573
    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 577
    if-nez v0, :cond_0

    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 582
    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 586
    if-nez v0, :cond_0

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 591
    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 595
    if-nez v0, :cond_0

    .line 599
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 600
    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 604
    if-nez v0, :cond_0

    .line 608
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 609
    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 613
    if-nez v0, :cond_0

    .line 617
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 622
    if-nez v0, :cond_0

    .line 626
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 627
    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 631
    if-nez v0, :cond_0

    .line 635
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 636
    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 640
    if-nez v0, :cond_0

    .line 644
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 645
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 649
    if-nez v0, :cond_0

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 654
    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 658
    if-nez v0, :cond_0

    .line 662
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 663
    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 667
    if-nez v0, :cond_0

    .line 671
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 672
    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 676
    if-nez v0, :cond_0

    .line 680
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lcom/evernote/edam/notestore/NoteMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->compareTo(Lcom/evernote/edam/notestore/NoteMetadata;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteMetadata;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>(Lcom/evernote/edam/notestore/NoteMetadata;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->deepCopy()Lcom/evernote/edam/notestore/NoteMetadata;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteMetadata;)Z
    .locals 30
    .param p1, "that"    # Lcom/evernote/edam/notestore/NoteMetadata;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    const/16 v26, 0x0

    .line 556
    :goto_0
    return v26

    .line 448
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v18

    .line 449
    .local v18, "this_present_guid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v6

    .line 450
    .local v6, "that_present_guid":Z
    if-nez v18, :cond_1

    if-eqz v6, :cond_4

    .line 451
    :cond_1
    if-eqz v18, :cond_2

    if-nez v6, :cond_3

    .line 452
    :cond_2
    const/16 v26, 0x0

    goto :goto_0

    .line 453
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 454
    const/16 v26, 0x0

    goto :goto_0

    .line 457
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v23

    .line 458
    .local v23, "this_present_title":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v11

    .line 459
    .local v11, "that_present_title":Z
    if-nez v23, :cond_5

    if-eqz v11, :cond_8

    .line 460
    :cond_5
    if-eqz v23, :cond_6

    if-nez v11, :cond_7

    .line 461
    :cond_6
    const/16 v26, 0x0

    goto :goto_0

    .line 462
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 463
    const/16 v26, 0x0

    goto :goto_0

    .line 466
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v15

    .line 467
    .local v15, "this_present_contentLength":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v3

    .line 468
    .local v3, "that_present_contentLength":Z
    if-nez v15, :cond_9

    if-eqz v3, :cond_c

    .line 469
    :cond_9
    if-eqz v15, :cond_a

    if-nez v3, :cond_b

    .line 470
    :cond_a
    const/16 v26, 0x0

    goto :goto_0

    .line 471
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    .line 472
    const/16 v26, 0x0

    goto :goto_0

    .line 475
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v16

    .line 476
    .local v16, "this_present_created":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v4

    .line 477
    .local v4, "that_present_created":Z
    if-nez v16, :cond_d

    if-eqz v4, :cond_10

    .line 478
    :cond_d
    if-eqz v16, :cond_e

    if-nez v4, :cond_f

    .line 479
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 480
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_10

    .line 481
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 484
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v25

    .line 485
    .local v25, "this_present_updated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v13

    .line 486
    .local v13, "that_present_updated":Z
    if-nez v25, :cond_11

    if-eqz v13, :cond_14

    .line 487
    :cond_11
    if-eqz v25, :cond_12

    if-nez v13, :cond_13

    .line 488
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 489
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_14

    .line 490
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 493
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v17

    .line 494
    .local v17, "this_present_deleted":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v5

    .line 495
    .local v5, "that_present_deleted":Z
    if-nez v17, :cond_15

    if-eqz v5, :cond_18

    .line 496
    :cond_15
    if-eqz v17, :cond_16

    if-nez v5, :cond_17

    .line 497
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 498
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_18

    .line 499
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 502
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v24

    .line 503
    .local v24, "this_present_updateSequenceNum":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v12

    .line 504
    .local v12, "that_present_updateSequenceNum":Z
    if-nez v24, :cond_19

    if-eqz v12, :cond_1c

    .line 505
    :cond_19
    if-eqz v24, :cond_1a

    if-nez v12, :cond_1b

    .line 506
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 507
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 508
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 511
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v21

    .line 512
    .local v21, "this_present_notebookGuid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v9

    .line 513
    .local v9, "that_present_notebookGuid":Z
    if-nez v21, :cond_1d

    if-eqz v9, :cond_20

    .line 514
    :cond_1d
    if-eqz v21, :cond_1e

    if-nez v9, :cond_1f

    .line 515
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 516
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_20

    .line 517
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 520
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v22

    .line 521
    .local v22, "this_present_tagGuids":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v10

    .line 522
    .local v10, "that_present_tagGuids":Z
    if-nez v22, :cond_21

    if-eqz v10, :cond_24

    .line 523
    :cond_21
    if-eqz v22, :cond_22

    if-nez v10, :cond_23

    .line 524
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 525
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    .line 526
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 529
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v14

    .line 530
    .local v14, "this_present_attributes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    .line 531
    .local v2, "that_present_attributes":Z
    if-nez v14, :cond_25

    if-eqz v2, :cond_28

    .line 532
    :cond_25
    if-eqz v14, :cond_26

    if-nez v2, :cond_27

    .line 533
    :cond_26
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 534
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/evernote/edam/type/NoteAttributes;->equals(Lcom/evernote/edam/type/NoteAttributes;)Z

    move-result v26

    if-nez v26, :cond_28

    .line 535
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 538
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v19

    .line 539
    .local v19, "this_present_largestResourceMime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v7

    .line 540
    .local v7, "that_present_largestResourceMime":Z
    if-nez v19, :cond_29

    if-eqz v7, :cond_2c

    .line 541
    :cond_29
    if-eqz v19, :cond_2a

    if-nez v7, :cond_2b

    .line 542
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 543
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2c

    .line 544
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 547
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v20

    .line 548
    .local v20, "this_present_largestResourceSize":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v8

    .line 549
    .local v8, "that_present_largestResourceSize":Z
    if-nez v20, :cond_2d

    if-eqz v8, :cond_30

    .line 550
    :cond_2d
    if-eqz v20, :cond_2e

    if-nez v8, :cond_2f

    .line 551
    :cond_2e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 552
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_30

    .line 553
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 556
    :cond_30
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 437
    if-nez p1, :cond_1

    .line 441
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 439
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteMetadata;

    if-eqz v1, :cond_0

    .line 440
    check-cast p1, Lcom/evernote/edam/notestore/NoteMetadata;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->equals(Lcom/evernote/edam/notestore/NoteMetadata;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes()Lcom/evernote/edam/type/NoteAttributes;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    return-wide v0
.end method

.method public getDeleted()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getLargestResourceMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    return-object v0
.end method

.method public getLargestResourceSize()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    return v0
.end method

.method public getNotebookGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getTagGuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    return-object v0
.end method

.method public getTagGuidsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagGuidsSize()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateSequenceNum()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    return v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAttributes()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetContentLength()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetCreated()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetDeleted()Z
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLargestResourceMime()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLargestResourceSize()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetNotebookGuid()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTagGuids()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTitle()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUpdateSequenceNum()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUpdated()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 10
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x1

    .line 685
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 688
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 689
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 799
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 800
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->validate()V

    .line 801
    return-void

    .line 692
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 795
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 797
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 694
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_1

    .line 695
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    goto :goto_1

    .line 697
    :cond_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 701
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_2

    .line 702
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    goto :goto_1

    .line 704
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 708
    :pswitch_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_3

    .line 709
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    iput v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    .line 710
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    goto :goto_1

    .line 712
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 716
    :pswitch_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v9, :cond_4

    .line 717
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    .line 718
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    goto :goto_1

    .line 720
    :cond_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 724
    :pswitch_5
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v9, :cond_5

    .line 725
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    .line 726
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    goto :goto_1

    .line 728
    :cond_5
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 732
    :pswitch_6
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v9, :cond_6

    .line 733
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    .line 734
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    goto :goto_1

    .line 736
    :cond_6
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 740
    :pswitch_7
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_7

    .line 741
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    iput v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    .line 742
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    goto/16 :goto_1

    .line 744
    :cond_7
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 748
    :pswitch_8
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_8

    .line 749
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    goto/16 :goto_1

    .line 751
    :cond_8
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 755
    :pswitch_9
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_a

    .line 757
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 758
    .local v2, "_list60":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 759
    const/4 v1, 0x0

    .local v1, "_i61":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_9

    .line 762
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "_elem62":Ljava/lang/String;
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 765
    .end local v0    # "_elem62":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 768
    .end local v1    # "_i61":I
    .end local v2    # "_list60":Lcom/evernote/thrift/protocol/TList;
    :cond_a
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 772
    :pswitch_a
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xc

    if-ne v4, v5, :cond_b

    .line 773
    new-instance v4, Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v4}, Lcom/evernote/edam/type/NoteAttributes;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 774
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/type/NoteAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 776
    :cond_b
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 780
    :pswitch_b
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_c

    .line 781
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    goto/16 :goto_1

    .line 783
    :cond_c
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 787
    :pswitch_c
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_d

    .line 788
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    iput v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    .line 789
    invoke-virtual {p0, v6}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    goto/16 :goto_1

    .line 791
    :cond_d
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setAttributes(Lcom/evernote/edam/type/NoteAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lcom/evernote/edam/type/NoteAttributes;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 373
    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 388
    :cond_0
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setContentLengthIsSet(Z)V

    .line 203
    return-void
.end method

.method public setContentLengthIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 216
    return-void
.end method

.method public setCreated(J)V
    .locals 1
    .param p1, "created"    # J

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setCreatedIsSet(Z)V

    .line 225
    return-void
.end method

.method public setCreatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 238
    return-void
.end method

.method public setDeleted(J)V
    .locals 1
    .param p1, "deleted"    # J

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setDeletedIsSet(Z)V

    .line 269
    return-void
.end method

.method public setDeletedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 282
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method public setLargestResourceMime(Ljava/lang/String;)V
    .locals 0
    .param p1, "largestResourceMime"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setLargestResourceMimeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 411
    :cond_0
    return-void
.end method

.method public setLargestResourceSize(I)V
    .locals 1
    .param p1, "largestResourceSize"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setLargestResourceSizeIsSet(Z)V

    .line 420
    return-void
.end method

.method public setLargestResourceSizeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 433
    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "notebookGuid"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setNotebookGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 327
    :cond_0
    return-void
.end method

.method public setTagGuids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "tagGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 350
    return-void
.end method

.method public setTagGuidsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 365
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTitleIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 194
    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 1
    .param p1, "updateSequenceNum"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdateSequenceNumIsSet(Z)V

    .line 291
    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 304
    return-void
.end method

.method public setUpdated(J)V
    .locals 1
    .param p1, "updated"    # J

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteMetadata;->setUpdatedIsSet(Z)V

    .line 247
    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoteMetadata("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 891
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 893
    .local v0, "first":Z
    const-string v2, "guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 895
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :goto_0
    const/4 v0, 0x0

    .line 900
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_0
    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 904
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :goto_1
    const/4 v0, 0x0

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 911
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_2
    const-string v2, "contentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    const/4 v0, 0x0

    .line 916
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :cond_4
    const-string v2, "created:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 920
    const/4 v0, 0x0

    .line 922
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 923
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_6
    const-string v2, "updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 926
    const/4 v0, 0x0

    .line 928
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 929
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_8
    const-string v2, "deleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 932
    const/4 v0, 0x0

    .line 934
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 935
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :cond_a
    const-string v2, "updateSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    const/4 v0, 0x0

    .line 940
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 941
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_c
    const-string v2, "notebookGuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 944
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :goto_2
    const/4 v0, 0x0

    .line 950
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 951
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_e
    const-string v2, "tagGuids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-nez v2, :cond_19

    .line 954
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :goto_3
    const/4 v0, 0x0

    .line 960
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 961
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_10
    const-string v2, "attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-nez v2, :cond_1a

    .line 964
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :goto_4
    const/4 v0, 0x0

    .line 970
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 971
    if-nez v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :cond_12
    const-string v2, "largestResourceMime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 974
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :goto_5
    const/4 v0, 0x0

    .line 980
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 981
    if-nez v0, :cond_14

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_14
    const-string v2, "largestResourceSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 984
    const/4 v0, 0x0

    .line 986
    :cond_15
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 897
    :cond_16
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 906
    :cond_17
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 946
    :cond_18
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 956
    :cond_19
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 966
    :cond_1a
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 976
    :cond_1b
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public unsetAttributes()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    .line 377
    return-void
.end method

.method public unsetContentLength()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 207
    return-void
.end method

.method public unsetCreated()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 229
    return-void
.end method

.method public unsetDeleted()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 273
    return-void
.end method

.method public unsetGuid()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public unsetLargestResourceMime()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public unsetLargestResourceSize()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 424
    return-void
.end method

.method public unsetNotebookGuid()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public unsetTagGuids()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    .line 354
    return-void
.end method

.method public unsetTitle()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 295
    return-void
.end method

.method public unsetUpdated()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteMetadata;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 251
    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetGuid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_0
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->validate()V

    .line 806
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 807
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 808
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 809
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->guid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->TITLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 815
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetContentLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->CONTENT_LENGTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 821
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->contentLength:I

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 822
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetCreated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 826
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->created:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 827
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 829
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 830
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 831
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updated:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 832
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 834
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetDeleted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 835
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->DELETED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 836
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->deleted:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 837
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 839
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 840
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 841
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->updateSequenceNum:I

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 842
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 844
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 845
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 846
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 847
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 851
    :cond_7
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 852
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetTagGuids()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 853
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->TAG_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 855
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 856
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->tagGuids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    .local v0, "_iter63":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v0    # "_iter63":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 862
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 865
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    if-eqz v2, :cond_a

    .line 866
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 867
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 868
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->attributes:Lcom/evernote/edam/type/NoteAttributes;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/NoteAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 869
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 872
    :cond_a
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 873
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceMime()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 874
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 875
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceMime:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 879
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteMetadata;->isSetLargestResourceSize()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 880
    sget-object v2, Lcom/evernote/edam/notestore/NoteMetadata;->LARGEST_RESOURCE_SIZE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 881
    iget v2, p0, Lcom/evernote/edam/notestore/NoteMetadata;->largestResourceSize:I

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 882
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 884
    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 885
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 886
    return-void
.end method
