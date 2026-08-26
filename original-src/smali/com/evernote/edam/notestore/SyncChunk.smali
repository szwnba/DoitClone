.class public Lcom/evernote/edam/notestore/SyncChunk;
.super Ljava/lang/Object;
.source "SyncChunk.java"

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
        "Lcom/evernote/edam/notestore/SyncChunk;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CHUNKHIGHUSN_ISSET_ID:I = 0x1

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __UPDATECOUNT_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private chunkHighUSN:I

.field private currentTime:J

.field private expungedLinkedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedSearches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expungedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkedNotebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation
.end field

.field private notebooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private searches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private updateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x8

    const/16 v3, 0xf

    .line 126
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SyncChunk"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 128
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "currentTime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 129
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "chunkHighUSN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 130
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateCount"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 131
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notes"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 132
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebooks"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 133
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "tags"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 134
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "searches"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 135
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "resources"

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 136
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedNotes"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 137
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedNotebooks"

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 138
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedTags"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 139
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedSearches"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 140
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "linkedNotebooks"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 141
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expungedLinkedNotebooks"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    .line 166
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "updateCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-direct {p0}, Lcom/evernote/edam/notestore/SyncChunk;-><init>()V

    .line 173
    iput-wide p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 174
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    .line 175
    iput p3, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 176
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/SyncChunk;)V
    .locals 22
    .param p1, "other"    # Lcom/evernote/edam/notestore/SyncChunk;

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    .line 183
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 185
    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    .line 186
    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 188
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v11, "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/Note;

    .line 190
    .local v16, "other_element":Lcom/evernote/edam/type/Note;
    new-instance v17, Lcom/evernote/edam/type/Note;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v16    # "other_element":Lcom/evernote/edam/type/Note;
    :cond_0
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 194
    .end local v11    # "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 195
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v10, "__this__notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/Notebook;

    .line 197
    .local v16, "other_element":Lcom/evernote/edam/type/Notebook;
    new-instance v17, Lcom/evernote/edam/type/Notebook;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v16    # "other_element":Lcom/evernote/edam/type/Notebook;
    :cond_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 201
    .end local v10    # "__this__notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 202
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v14, "__this__tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/Tag;

    .line 204
    .local v16, "other_element":Lcom/evernote/edam/type/Tag;
    new-instance v17, Lcom/evernote/edam/type/Tag;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    .end local v16    # "other_element":Lcom/evernote/edam/type/Tag;
    :cond_4
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 208
    .end local v14    # "__this__tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 209
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v13, "__this__searches":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/SavedSearch;

    .line 211
    .local v16, "other_element":Lcom/evernote/edam/type/SavedSearch;
    new-instance v17, Lcom/evernote/edam/type/SavedSearch;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 213
    .end local v16    # "other_element":Lcom/evernote/edam/type/SavedSearch;
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 215
    .end local v13    # "__this__searches":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 216
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v12, "__this__resources":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Resource;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/Resource;

    .line 218
    .local v16, "other_element":Lcom/evernote/edam/type/Resource;
    new-instance v17, Lcom/evernote/edam/type/Resource;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 220
    .end local v16    # "other_element":Lcom/evernote/edam/type/Resource;
    :cond_8
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 222
    .end local v12    # "__this__resources":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Resource;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, "__this__expungedNotes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 225
    .local v16, "other_element":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 227
    .end local v16    # "other_element":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 229
    .end local v6    # "__this__expungedNotes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "__this__expungedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 232
    .restart local v16    # "other_element":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 234
    .end local v16    # "other_element":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 236
    .end local v5    # "__this__expungedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v8, "__this__expungedTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 239
    .restart local v16    # "other_element":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 241
    .end local v16    # "other_element":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 243
    .end local v8    # "__this__expungedTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 244
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v7, "__this__expungedSearches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 246
    .restart local v16    # "other_element":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 248
    .end local v16    # "other_element":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 250
    .end local v7    # "__this__expungedSearches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 251
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v9, "__this__linkedNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/evernote/edam/type/LinkedNotebook;

    .line 253
    .local v16, "other_element":Lcom/evernote/edam/type/LinkedNotebook;
    new-instance v17, Lcom/evernote/edam/type/LinkedNotebook;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 255
    .end local v16    # "other_element":Lcom/evernote/edam/type/LinkedNotebook;
    :cond_12
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 257
    .end local v9    # "__this__linkedNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 258
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v4, "__this__expungedLinkedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 260
    .local v16, "other_element":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 262
    .end local v16    # "other_element":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 264
    .end local v4    # "__this__expungedLinkedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_15
    return-void
.end method


# virtual methods
.method public addToExpungedLinkedNotebooks(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method

.method public addToExpungedNotebooks(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public addToExpungedNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public addToExpungedSearches(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    return-void
.end method

.method public addToExpungedTags(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public addToLinkedNotebooks(Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/LinkedNotebook;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method public addToNotebooks(Lcom/evernote/edam/type/Notebook;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Notebook;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public addToNotes(Lcom/evernote/edam/type/Note;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Note;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public addToResources(Lcom/evernote/edam/type/Resource;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Resource;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public addToSearches(Lcom/evernote/edam/type/SavedSearch;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method public addToTags(Lcom/evernote/edam/type/Tag;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Tag;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 273
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    .line 274
    iput v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    .line 275
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    .line 276
    iput v3, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 277
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 278
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 279
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 280
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 281
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 282
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 283
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 284
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 285
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 286
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 287
    iput-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 288
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/SyncChunk;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/notestore/SyncChunk;

    .prologue
    .line 922
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 923
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

    .line 1055
    :cond_0
    :goto_0
    return v0

    .line 926
    :cond_1
    const/4 v0, 0x0

    .line 927
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 929
    .local v1, "typedOther":Lcom/evernote/edam/notestore/SyncChunk;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 930
    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 934
    if-nez v0, :cond_0

    .line 938
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 939
    if-nez v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    iget v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 943
    if-nez v0, :cond_0

    .line 947
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 948
    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    iget v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 952
    if-nez v0, :cond_0

    .line 956
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 957
    if-nez v0, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 961
    if-nez v0, :cond_0

    .line 965
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 966
    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 970
    if-nez v0, :cond_0

    .line 974
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 975
    if-nez v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 979
    if-nez v0, :cond_0

    .line 983
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 984
    if-nez v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 988
    if-nez v0, :cond_0

    .line 992
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 993
    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 997
    if-nez v0, :cond_0

    .line 1001
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1006
    if-nez v0, :cond_0

    .line 1010
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1011
    if-nez v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1015
    if-nez v0, :cond_0

    .line 1019
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1020
    if-nez v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1024
    if-nez v0, :cond_0

    .line 1028
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1029
    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1033
    if-nez v0, :cond_0

    .line 1037
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1038
    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1042
    if-nez v0, :cond_0

    .line 1046
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1047
    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1051
    if-nez v0, :cond_0

    .line 1055
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunk;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->compareTo(Lcom/evernote/edam/notestore/SyncChunk;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/SyncChunk;-><init>(Lcom/evernote/edam/notestore/SyncChunk;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->deepCopy()Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/SyncChunk;)Z
    .locals 34
    .param p1, "that"    # Lcom/evernote/edam/notestore/SyncChunk;

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 785
    const/16 v30, 0x0

    .line 913
    :goto_0
    return v30

    .line 787
    :cond_0
    const/16 v17, 0x1

    .line 788
    .local v17, "this_present_currentTime":Z
    const/4 v3, 0x1

    .line 789
    .local v3, "that_present_currentTime":Z
    if-nez v17, :cond_1

    if-eqz v3, :cond_4

    .line 790
    :cond_1
    if-eqz v17, :cond_2

    if-nez v3, :cond_3

    .line 791
    :cond_2
    const/16 v30, 0x0

    goto :goto_0

    .line 792
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_4

    .line 793
    const/16 v30, 0x0

    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v16

    .line 797
    .local v16, "this_present_chunkHighUSN":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v2

    .line 798
    .local v2, "that_present_chunkHighUSN":Z
    if-nez v16, :cond_5

    if-eqz v2, :cond_8

    .line 799
    :cond_5
    if-eqz v16, :cond_6

    if-nez v2, :cond_7

    .line 800
    :cond_6
    const/16 v30, 0x0

    goto :goto_0

    .line 801
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 802
    const/16 v30, 0x0

    goto :goto_0

    .line 805
    :cond_8
    const/16 v29, 0x1

    .line 806
    .local v29, "this_present_updateCount":Z
    const/4 v15, 0x1

    .line 807
    .local v15, "that_present_updateCount":Z
    if-nez v29, :cond_9

    if-eqz v15, :cond_c

    .line 808
    :cond_9
    if-eqz v29, :cond_a

    if-nez v15, :cond_b

    .line 809
    :cond_a
    const/16 v30, 0x0

    goto :goto_0

    .line 810
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 811
    const/16 v30, 0x0

    goto :goto_0

    .line 814
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v25

    .line 815
    .local v25, "this_present_notes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v11

    .line 816
    .local v11, "that_present_notes":Z
    if-nez v25, :cond_d

    if-eqz v11, :cond_10

    .line 817
    :cond_d
    if-eqz v25, :cond_e

    if-nez v11, :cond_f

    .line 818
    :cond_e
    const/16 v30, 0x0

    goto :goto_0

    .line 819
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_10

    .line 820
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 823
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v24

    .line 824
    .local v24, "this_present_notebooks":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v10

    .line 825
    .local v10, "that_present_notebooks":Z
    if-nez v24, :cond_11

    if-eqz v10, :cond_14

    .line 826
    :cond_11
    if-eqz v24, :cond_12

    if-nez v10, :cond_13

    .line 827
    :cond_12
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 828
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_14

    .line 829
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 832
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v28

    .line 833
    .local v28, "this_present_tags":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v14

    .line 834
    .local v14, "that_present_tags":Z
    if-nez v28, :cond_15

    if-eqz v14, :cond_18

    .line 835
    :cond_15
    if-eqz v28, :cond_16

    if-nez v14, :cond_17

    .line 836
    :cond_16
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 837
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_18

    .line 838
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 841
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v27

    .line 842
    .local v27, "this_present_searches":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v13

    .line 843
    .local v13, "that_present_searches":Z
    if-nez v27, :cond_19

    if-eqz v13, :cond_1c

    .line 844
    :cond_19
    if-eqz v27, :cond_1a

    if-nez v13, :cond_1b

    .line 845
    :cond_1a
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 846
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1c

    .line 847
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 850
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v26

    .line 851
    .local v26, "this_present_resources":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v12

    .line 852
    .local v12, "that_present_resources":Z
    if-nez v26, :cond_1d

    if-eqz v12, :cond_20

    .line 853
    :cond_1d
    if-eqz v26, :cond_1e

    if-nez v12, :cond_1f

    .line 854
    :cond_1e
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 855
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_20

    .line 856
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 859
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v20

    .line 860
    .local v20, "this_present_expungedNotes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v6

    .line 861
    .local v6, "that_present_expungedNotes":Z
    if-nez v20, :cond_21

    if-eqz v6, :cond_24

    .line 862
    :cond_21
    if-eqz v20, :cond_22

    if-nez v6, :cond_23

    .line 863
    :cond_22
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 864
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 865
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 868
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v19

    .line 869
    .local v19, "this_present_expungedNotebooks":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v5

    .line 870
    .local v5, "that_present_expungedNotebooks":Z
    if-nez v19, :cond_25

    if-eqz v5, :cond_28

    .line 871
    :cond_25
    if-eqz v19, :cond_26

    if-nez v5, :cond_27

    .line 872
    :cond_26
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 873
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_28

    .line 874
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 877
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v22

    .line 878
    .local v22, "this_present_expungedTags":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v8

    .line 879
    .local v8, "that_present_expungedTags":Z
    if-nez v22, :cond_29

    if-eqz v8, :cond_2c

    .line 880
    :cond_29
    if-eqz v22, :cond_2a

    if-nez v8, :cond_2b

    .line 881
    :cond_2a
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 882
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    .line 883
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 886
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v21

    .line 887
    .local v21, "this_present_expungedSearches":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v7

    .line 888
    .local v7, "that_present_expungedSearches":Z
    if-nez v21, :cond_2d

    if-eqz v7, :cond_30

    .line 889
    :cond_2d
    if-eqz v21, :cond_2e

    if-nez v7, :cond_2f

    .line 890
    :cond_2e
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 891
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_30

    .line 892
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 895
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v23

    .line 896
    .local v23, "this_present_linkedNotebooks":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v9

    .line 897
    .local v9, "that_present_linkedNotebooks":Z
    if-nez v23, :cond_31

    if-eqz v9, :cond_34

    .line 898
    :cond_31
    if-eqz v23, :cond_32

    if-nez v9, :cond_33

    .line 899
    :cond_32
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 900
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_34

    .line 901
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 904
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v18

    .line 905
    .local v18, "this_present_expungedLinkedNotebooks":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v4

    .line 906
    .local v4, "that_present_expungedLinkedNotebooks":Z
    if-nez v18, :cond_35

    if-eqz v4, :cond_38

    .line 907
    :cond_35
    if-eqz v18, :cond_36

    if-nez v4, :cond_37

    .line 908
    :cond_36
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 909
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_38

    .line 910
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 913
    :cond_38
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 776
    if-nez p1, :cond_1

    .line 780
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 778
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/SyncChunk;

    if-eqz v1, :cond_0

    .line 779
    check-cast p1, Lcom/evernote/edam/notestore/SyncChunk;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->equals(Lcom/evernote/edam/notestore/SyncChunk;)Z

    move-result v0

    goto :goto_0
.end method

.method public getChunkHighUSN()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    return-wide v0
.end method

.method public getExpungedLinkedNotebooks()Ljava/util/List;
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
    .line 752
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    return-object v0
.end method

.method public getExpungedLinkedNotebooksIterator()Ljava/util/Iterator;
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
    .line 741
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpungedLinkedNotebooksSize()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExpungedNotebooks()Ljava/util/List;
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
    .line 600
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    return-object v0
.end method

.method public getExpungedNotebooksIterator()Ljava/util/Iterator;
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
    .line 589
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpungedNotebooksSize()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExpungedNotes()Ljava/util/List;
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
    .line 562
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    return-object v0
.end method

.method public getExpungedNotesIterator()Ljava/util/Iterator;
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
    .line 551
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpungedNotesSize()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExpungedSearches()Ljava/util/List;
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
    .line 676
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    return-object v0
.end method

.method public getExpungedSearchesIterator()Ljava/util/Iterator;
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
    .line 665
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpungedSearchesSize()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExpungedTags()Ljava/util/List;
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
    .line 638
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    return-object v0
.end method

.method public getExpungedTagsIterator()Ljava/util/Iterator;
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
    .line 627
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpungedTagsSize()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getLinkedNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    return-object v0
.end method

.method public getLinkedNotebooksIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getLinkedNotebooksSize()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    return-object v0
.end method

.method public getNotebooksIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotebooksSize()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getNotesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotesSize()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getResourcesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcesSize()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSearches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    return-object v0
.end method

.method public getSearchesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchesSize()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTagsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagsSize()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public isSetChunkHighUSN()Z
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetCurrentTime()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetExpungedLinkedNotebooks()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExpungedNotebooks()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExpungedNotes()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExpungedSearches()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExpungedTags()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLinkedNotebooks()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebooks()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotes()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResources()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSearches()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTags()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUpdateCount()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 40
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1063
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v37

    .line 1064
    .local v37, "field":Lcom/evernote/thrift/protocol/TField;
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    if-nez v38, :cond_0

    .line 1290
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->validate()V

    .line 1292
    return-void

    .line 1067
    :cond_0
    move-object/from16 v0, v37

    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 1286
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1288
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1069
    :pswitch_0
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xa

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 1071
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    goto :goto_1

    .line 1073
    :cond_1
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1077
    :pswitch_1
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    .line 1079
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    goto :goto_1

    .line 1081
    :cond_2
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1085
    :pswitch_2
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 1086
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 1087
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    goto/16 :goto_1

    .line 1089
    :cond_3
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1093
    :pswitch_3
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_5

    .line 1095
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v26

    .line 1096
    .local v26, "_list0":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 1097
    const/4 v15, 0x0

    .local v15, "_i1":I
    :goto_2
    move-object/from16 v0, v26

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v15, v0, :cond_4

    .line 1100
    new-instance v7, Lcom/evernote/edam/type/Note;

    invoke-direct {v7}, Lcom/evernote/edam/type/Note;-><init>()V

    .line 1101
    .local v7, "_elem2":Lcom/evernote/edam/type/Note;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1104
    .end local v7    # "_elem2":Lcom/evernote/edam/type/Note;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1107
    .end local v15    # "_i1":I
    .end local v26    # "_list0":Lcom/evernote/thrift/protocol/TList;
    :cond_5
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1111
    :pswitch_4
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 1113
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v33

    .line 1114
    .local v33, "_list3":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 1115
    const/16 v24, 0x0

    .local v24, "_i4":I
    :goto_3
    move-object/from16 v0, v33

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_6

    .line 1118
    new-instance v13, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v13}, Lcom/evernote/edam/type/Notebook;-><init>()V

    .line 1119
    .local v13, "_elem5":Lcom/evernote/edam/type/Notebook;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1122
    .end local v13    # "_elem5":Lcom/evernote/edam/type/Notebook;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1125
    .end local v24    # "_i4":I
    .end local v33    # "_list3":Lcom/evernote/thrift/protocol/TList;
    :cond_7
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1129
    :pswitch_5
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 1131
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v35

    .line 1132
    .local v35, "_list6":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 1133
    const/16 v25, 0x0

    .local v25, "_i7":I
    :goto_4
    move-object/from16 v0, v35

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    .line 1136
    new-instance v14, Lcom/evernote/edam/type/Tag;

    invoke-direct {v14}, Lcom/evernote/edam/type/Tag;-><init>()V

    .line 1137
    .local v14, "_elem8":Lcom/evernote/edam/type/Tag;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 1140
    .end local v14    # "_elem8":Lcom/evernote/edam/type/Tag;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1143
    .end local v25    # "_i7":I
    .end local v35    # "_list6":Lcom/evernote/thrift/protocol/TList;
    :cond_9
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1147
    :pswitch_6
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_b

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v36

    .line 1150
    .local v36, "_list9":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 1151
    const/16 v16, 0x0

    .local v16, "_i10":I
    :goto_5
    move-object/from16 v0, v36

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 1154
    new-instance v4, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v4}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    .line 1155
    .local v4, "_elem11":Lcom/evernote/edam/type/SavedSearch;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1158
    .end local v4    # "_elem11":Lcom/evernote/edam/type/SavedSearch;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1161
    .end local v16    # "_i10":I
    .end local v36    # "_list9":Lcom/evernote/thrift/protocol/TList;
    :cond_b
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1165
    :pswitch_7
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v27

    .line 1168
    .local v27, "_list12":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 1169
    const/16 v17, 0x0

    .local v17, "_i13":I
    :goto_6
    move-object/from16 v0, v27

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    .line 1172
    new-instance v5, Lcom/evernote/edam/type/Resource;

    invoke-direct {v5}, Lcom/evernote/edam/type/Resource;-><init>()V

    .line 1173
    .local v5, "_elem14":Lcom/evernote/edam/type/Resource;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/evernote/edam/type/Resource;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1176
    .end local v5    # "_elem14":Lcom/evernote/edam/type/Resource;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1179
    .end local v17    # "_i13":I
    .end local v27    # "_list12":Lcom/evernote/thrift/protocol/TList;
    :cond_d
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1183
    :pswitch_8
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v28

    .line 1186
    .local v28, "_list15":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 1187
    const/16 v18, 0x0

    .local v18, "_i16":I
    :goto_7
    move-object/from16 v0, v28

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_e

    .line 1190
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, "_elem17":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1193
    .end local v6    # "_elem17":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1196
    .end local v18    # "_i16":I
    .end local v28    # "_list15":Lcom/evernote/thrift/protocol/TList;
    :cond_f
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1200
    :pswitch_9
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 1202
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v29

    .line 1203
    .local v29, "_list18":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 1204
    const/16 v19, 0x0

    .local v19, "_i19":I
    :goto_8
    move-object/from16 v0, v29

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 1207
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1208
    .local v8, "_elem20":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 1210
    .end local v8    # "_elem20":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1213
    .end local v19    # "_i19":I
    .end local v29    # "_list18":Lcom/evernote/thrift/protocol/TList;
    :cond_11
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1217
    :pswitch_a
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    .line 1219
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v30

    .line 1220
    .local v30, "_list21":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 1221
    const/16 v20, 0x0

    .local v20, "_i22":I
    :goto_9
    move-object/from16 v0, v30

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v20

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 1224
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1225
    .local v9, "_elem23":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 1227
    .end local v9    # "_elem23":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1230
    .end local v20    # "_i22":I
    .end local v30    # "_list21":Lcom/evernote/thrift/protocol/TList;
    :cond_13
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1234
    :pswitch_b
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_15

    .line 1236
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v31

    .line 1237
    .local v31, "_list24":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 1238
    const/16 v21, 0x0

    .local v21, "_i25":I
    :goto_a
    move-object/from16 v0, v31

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v21

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 1241
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1242
    .local v10, "_elem26":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1244
    .end local v10    # "_elem26":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1247
    .end local v21    # "_i25":I
    .end local v31    # "_list24":Lcom/evernote/thrift/protocol/TList;
    :cond_15
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1251
    :pswitch_c
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    .line 1253
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v32

    .line 1254
    .local v32, "_list27":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 1255
    const/16 v22, 0x0

    .local v22, "_i28":I
    :goto_b
    move-object/from16 v0, v32

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v22

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    .line 1258
    new-instance v11, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v11}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    .line 1259
    .local v11, "_elem29":Lcom/evernote/edam/type/LinkedNotebook;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 1262
    .end local v11    # "_elem29":Lcom/evernote/edam/type/LinkedNotebook;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1265
    .end local v22    # "_i28":I
    .end local v32    # "_list27":Lcom/evernote/thrift/protocol/TList;
    :cond_17
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1269
    :pswitch_d
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    const/16 v39, 0xf

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    .line 1271
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v34

    .line 1272
    .local v34, "_list30":Lcom/evernote/thrift/protocol/TList;
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 1273
    const/16 v23, 0x0

    .local v23, "_i31":I
    :goto_c
    move-object/from16 v0, v34

    iget v0, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    move/from16 v38, v0

    move/from16 v0, v23

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1276
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1277
    .local v12, "_elem32":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 1279
    .end local v12    # "_elem32":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1282
    .end local v23    # "_i31":I
    .end local v34    # "_list30":Lcom/evernote/thrift/protocol/TList;
    :cond_19
    move-object/from16 v0, v37

    iget-byte v0, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    move/from16 v38, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setChunkHighUSN(I)V
    .locals 1
    .param p1, "chunkHighUSN"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setChunkHighUSNIsSet(Z)V

    .line 319
    return-void
.end method

.method public setChunkHighUSNIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 332
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setCurrentTimeIsSet(Z)V

    .line 297
    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 310
    return-void
.end method

.method public setExpungedLinkedNotebooks(Ljava/util/List;)V
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
    .line 756
    .local p1, "expungedLinkedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 757
    return-void
.end method

.method public setExpungedLinkedNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 772
    :cond_0
    return-void
.end method

.method public setExpungedNotebooks(Ljava/util/List;)V
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
    .line 604
    .local p1, "expungedNotebooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 605
    return-void
.end method

.method public setExpungedNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 620
    :cond_0
    return-void
.end method

.method public setExpungedNotes(Ljava/util/List;)V
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
    .line 566
    .local p1, "expungedNotes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 567
    return-void
.end method

.method public setExpungedNotesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 582
    :cond_0
    return-void
.end method

.method public setExpungedSearches(Ljava/util/List;)V
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
    .line 680
    .local p1, "expungedSearches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 681
    return-void
.end method

.method public setExpungedSearchesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 696
    :cond_0
    return-void
.end method

.method public setExpungedTags(Ljava/util/List;)V
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
    .line 642
    .local p1, "expungedTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 643
    return-void
.end method

.method public setExpungedTagsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 658
    :cond_0
    return-void
.end method

.method public setLinkedNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "linkedNotebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/LinkedNotebook;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 719
    return-void
.end method

.method public setLinkedNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 734
    :cond_0
    return-void
.end method

.method public setNotebooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "notebooks":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 415
    return-void
.end method

.method public setNotebooksIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 430
    :cond_0
    return-void
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 377
    return-void
.end method

.method public setNotesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 392
    :cond_0
    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Resource;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 529
    return-void
.end method

.method public setResourcesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 544
    :cond_0
    return-void
.end method

.method public setSearches(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "searches":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 491
    return-void
.end method

.method public setSearchesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 506
    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 453
    return-void
.end method

.method public setTagsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 468
    :cond_0
    return-void
.end method

.method public setUpdateCount(I)V
    .locals 1
    .param p1, "updateCount"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/SyncChunk;->setUpdateCountIsSet(Z)V

    .line 341
    return-void
.end method

.method public setUpdateCountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 354
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SyncChunk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1472
    .local v0, "first":Z
    const-string v2, "currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    iget-wide v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1474
    const/4 v0, 0x0

    .line 1475
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1476
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    :cond_0
    const-string v2, "chunkHighUSN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    iget v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1479
    const/4 v0, 0x0

    .line 1481
    :cond_1
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :cond_2
    const-string v2, "updateCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    iget v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1484
    const/4 v0, 0x0

    .line 1485
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1486
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :cond_3
    const-string v2, "notes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-nez v2, :cond_19

    .line 1489
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :goto_0
    const/4 v0, 0x0

    .line 1495
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1496
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    :cond_5
    const-string v2, "notebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-nez v2, :cond_1a

    .line 1499
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    :goto_1
    const/4 v0, 0x0

    .line 1505
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1506
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    :cond_7
    const-string v2, "tags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-nez v2, :cond_1b

    .line 1509
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    :goto_2
    const/4 v0, 0x0

    .line 1515
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1516
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    :cond_9
    const-string v2, "searches:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-nez v2, :cond_1c

    .line 1519
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :goto_3
    const/4 v0, 0x0

    .line 1525
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1526
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    :cond_b
    const-string v2, "resources:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-nez v2, :cond_1d

    .line 1529
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    :goto_4
    const/4 v0, 0x0

    .line 1535
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1536
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    :cond_d
    const-string v2, "expungedNotes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-nez v2, :cond_1e

    .line 1539
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :goto_5
    const/4 v0, 0x0

    .line 1545
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1546
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    :cond_f
    const-string v2, "expungedNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-nez v2, :cond_1f

    .line 1549
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    :goto_6
    const/4 v0, 0x0

    .line 1555
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1556
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_11
    const-string v2, "expungedTags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-nez v2, :cond_20

    .line 1559
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    :goto_7
    const/4 v0, 0x0

    .line 1565
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1566
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :cond_13
    const-string v2, "expungedSearches:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-nez v2, :cond_21

    .line 1569
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :goto_8
    const/4 v0, 0x0

    .line 1575
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1576
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    :cond_15
    const-string v2, "linkedNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-nez v2, :cond_22

    .line 1579
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :goto_9
    const/4 v0, 0x0

    .line 1585
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1586
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    :cond_17
    const-string v2, "expungedLinkedNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-nez v2, :cond_23

    .line 1589
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    :goto_a
    const/4 v0, 0x0

    .line 1595
    :cond_18
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1491
    :cond_19
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1501
    :cond_1a
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1511
    :cond_1b
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1521
    :cond_1c
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1531
    :cond_1d
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1541
    :cond_1e
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1551
    :cond_1f
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1561
    :cond_20
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1571
    :cond_21
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1581
    :cond_22
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1591
    :cond_23
    iget-object v2, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public unsetChunkHighUSN()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 323
    return-void
.end method

.method public unsetCurrentTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 301
    return-void
.end method

.method public unsetExpungedLinkedNotebooks()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    .line 761
    return-void
.end method

.method public unsetExpungedNotebooks()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    .line 609
    return-void
.end method

.method public unsetExpungedNotes()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    .line 571
    return-void
.end method

.method public unsetExpungedSearches()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    .line 685
    return-void
.end method

.method public unsetExpungedTags()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    .line 647
    return-void
.end method

.method public unsetLinkedNotebooks()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    .line 723
    return-void
.end method

.method public unsetNotebooks()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    .line 419
    return-void
.end method

.method public unsetNotes()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    .line 381
    return-void
.end method

.method public unsetResources()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    .line 533
    return-void
.end method

.method public unsetSearches()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    .line 495
    return-void
.end method

.method public unsetTags()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    .line 457
    return-void
.end method

.method public unsetUpdateCount()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/evernote/edam/notestore/SyncChunk;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 345
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
    .line 1601
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetCurrentTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetUpdateCount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1606
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'updateCount\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/SyncChunk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_1
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 17
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->validate()V

    .line 1297
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1298
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1299
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->currentTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetChunkHighUSN()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1302
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->CHUNK_HIGH_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1303
    move-object/from16 v0, p0

    iget v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->chunkHighUSN:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1304
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1306
    :cond_0
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1307
    move-object/from16 v0, p0

    iget v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->updateCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    if-eqz v14, :cond_2

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotes()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1311
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1313
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->notes:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Note;

    .line 1316
    .local v2, "_iter33":Lcom/evernote/edam/type/Note;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 1318
    .end local v2    # "_iter33":Lcom/evernote/edam/type/Note;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1320
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1323
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    if-eqz v14, :cond_4

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetNotebooks()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1325
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1327
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->notebooks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/edam/type/Notebook;

    .line 1330
    .local v3, "_iter34":Lcom/evernote/edam/type/Notebook;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 1332
    .end local v3    # "_iter34":Lcom/evernote/edam/type/Notebook;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1334
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1337
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    if-eqz v14, :cond_6

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetTags()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1339
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1341
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->tags:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/edam/type/Tag;

    .line 1344
    .local v4, "_iter35":Lcom/evernote/edam/type/Tag;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_2

    .line 1346
    .end local v4    # "_iter35":Lcom/evernote/edam/type/Tag;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1348
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1351
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    if-eqz v14, :cond_8

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetSearches()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1353
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1355
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->searches:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evernote/edam/type/SavedSearch;

    .line 1358
    .local v5, "_iter36":Lcom/evernote/edam/type/SavedSearch;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_3

    .line 1360
    .end local v5    # "_iter36":Lcom/evernote/edam/type/SavedSearch;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1365
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    if-eqz v14, :cond_a

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetResources()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1367
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->RESOURCES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1369
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->resources:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evernote/edam/type/Resource;

    .line 1372
    .local v6, "_iter37":Lcom/evernote/edam/type/Resource;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/evernote/edam/type/Resource;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_4

    .line 1374
    .end local v6    # "_iter37":Lcom/evernote/edam/type/Resource;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1376
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1379
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    if-eqz v14, :cond_c

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotes()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1381
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1383
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotes:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1386
    .local v7, "_iter38":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 1388
    .end local v7    # "_iter38":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1390
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1393
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    if-eqz v14, :cond_e

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedNotebooks()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1395
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1397
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedNotebooks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1400
    .local v8, "_iter39":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 1402
    .end local v8    # "_iter39":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1404
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1407
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    if-eqz v14, :cond_10

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedTags()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1409
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1411
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedTags:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1414
    .local v9, "_iter40":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_7

    .line 1416
    .end local v9    # "_iter40":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1418
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1421
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    if-eqz v14, :cond_12

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedSearches()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1423
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_SEARCHES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1425
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedSearches:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1428
    .local v10, "_iter41":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 1430
    .end local v10    # "_iter41":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1432
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1435
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    if-eqz v14, :cond_14

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetLinkedNotebooks()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1437
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1439
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->linkedNotebooks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/evernote/edam/type/LinkedNotebook;

    .line 1442
    .local v11, "_iter42":Lcom/evernote/edam/type/LinkedNotebook;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_9

    .line 1444
    .end local v11    # "_iter42":Lcom/evernote/edam/type/LinkedNotebook;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1449
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    if-eqz v14, :cond_16

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/notestore/SyncChunk;->isSetExpungedLinkedNotebooks()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1451
    sget-object v14, Lcom/evernote/edam/notestore/SyncChunk;->EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1453
    new-instance v14, Lcom/evernote/thrift/protocol/TList;

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/evernote/edam/notestore/SyncChunk;->expungedLinkedNotebooks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1456
    .local v12, "_iter43":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 1458
    .end local v12    # "_iter43":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 1460
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1463
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1465
    return-void
.end method
