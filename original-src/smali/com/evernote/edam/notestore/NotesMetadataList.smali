.class public Lcom/evernote/edam/notestore/NotesMetadataList;
.super Ljava/lang/Object;
.source "NotesMetadataList.java"

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
        "Lcom/evernote/edam/notestore/NotesMetadataList;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SEARCHED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final START_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STOPPED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TOTAL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __STARTINDEX_ISSET_ID:I = 0x0

.field private static final __TOTALNOTES_ISSET_ID:I = 0x1

.field private static final __UPDATECOUNT_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private searchedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startIndex:I

.field private stoppedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalNotes:I

.field private updateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0x8

    .line 73
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NotesMetadataList"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 75
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "startIndex"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->START_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 76
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "totalNotes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->TOTAL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 77
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 78
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "stoppedWords"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->STOPPED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 79
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "searchedWords"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->SEARCHED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 80
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateCount"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NotesMetadataList;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    .line 97
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "totalNotes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/notestore/NoteMetadata;>;"
    const/4 v0, 0x1

    .line 104
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>()V

    .line 105
    iput p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    .line 106
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setStartIndexIsSet(Z)V

    .line 107
    iput p2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    .line 108
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setTotalNotesIsSet(Z)V

    .line 109
    iput-object p3, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NotesMetadataList;)V
    .locals 9
    .param p1, "other"    # Lcom/evernote/edam/notestore/NotesMetadataList;

    .prologue
    const/4 v8, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v5, 0x3

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    .line 116
    iget-object v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    iget-object v6, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    iget-object v7, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    iput v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    .line 118
    iget v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    iput v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    .line 119
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/notestore/NoteMetadata;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/edam/notestore/NoteMetadata;

    .line 122
    .local v4, "other_element":Lcom/evernote/edam/notestore/NoteMetadata;
    new-instance v5, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-direct {v5, v4}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>(Lcom/evernote/edam/notestore/NoteMetadata;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v4    # "other_element":Lcom/evernote/edam/notestore/NoteMetadata;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 126
    .end local v0    # "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/notestore/NoteMetadata;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "__this__stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    .local v4, "other_element":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v4    # "other_element":Ljava/lang/String;
    :cond_2
    iput-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 133
    .end local v2    # "__this__stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "__this__searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    .restart local v4    # "other_element":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v4    # "other_element":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 140
    .end local v1    # "__this__searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v5, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    iput v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    .line 141
    return-void
.end method


# virtual methods
.method public addToNotes(Lcom/evernote/edam/notestore/NoteMetadata;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/notestore/NoteMetadata;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public addToSearchedWords(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public addToStoppedWords(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setStartIndexIsSet(Z)V

    .line 149
    iput v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    .line 150
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setTotalNotesIsSet(Z)V

    .line 151
    iput v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    .line 152
    iput-object v1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 153
    iput-object v1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 154
    iput-object v1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 155
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setUpdateCountIsSet(Z)V

    .line 156
    iput v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    .line 157
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NotesMetadataList;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NotesMetadataList;

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
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

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    const/4 v0, 0x0

    .line 420
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 422
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NotesMetadataList;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStartIndex()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStartIndex()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 423
    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStartIndex()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    iget v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 427
    if-nez v0, :cond_0

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetTotalNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetTotalNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 432
    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetTotalNotes()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    iget v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 436
    if-nez v0, :cond_0

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 445
    if-nez v0, :cond_0

    .line 449
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 450
    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 454
    if-nez v0, :cond_0

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 459
    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 463
    if-nez v0, :cond_0

    .line 467
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 468
    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    iget v3, v1, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 476
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->compareTo(Lcom/evernote/edam/notestore/NotesMetadataList;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->deepCopy()Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NotesMetadataList;)Z
    .locals 14
    .param p1, "that"    # Lcom/evernote/edam/notestore/NotesMetadataList;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v12, 0x0

    .line 406
    :goto_0
    return v12

    .line 352
    :cond_0
    const/4 v8, 0x1

    .line 353
    .local v8, "this_present_startIndex":Z
    const/4 v2, 0x1

    .line 354
    .local v2, "that_present_startIndex":Z
    if-nez v8, :cond_1

    if-eqz v2, :cond_4

    .line 355
    :cond_1
    if-eqz v8, :cond_2

    if-nez v2, :cond_3

    .line 356
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 357
    :cond_3
    iget v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    iget v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    if-eq v12, v13, :cond_4

    .line 358
    const/4 v12, 0x0

    goto :goto_0

    .line 361
    :cond_4
    const/4 v10, 0x1

    .line 362
    .local v10, "this_present_totalNotes":Z
    const/4 v4, 0x1

    .line 363
    .local v4, "that_present_totalNotes":Z
    if-nez v10, :cond_5

    if-eqz v4, :cond_8

    .line 364
    :cond_5
    if-eqz v10, :cond_6

    if-nez v4, :cond_7

    .line 365
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 366
    :cond_7
    iget v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    iget v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    if-eq v12, v13, :cond_8

    .line 367
    const/4 v12, 0x0

    goto :goto_0

    .line 370
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v6

    .line 371
    .local v6, "this_present_notes":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v0

    .line 372
    .local v0, "that_present_notes":Z
    if-nez v6, :cond_9

    if-eqz v0, :cond_c

    .line 373
    :cond_9
    if-eqz v6, :cond_a

    if-nez v0, :cond_b

    .line 374
    :cond_a
    const/4 v12, 0x0

    goto :goto_0

    .line 375
    :cond_b
    iget-object v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 376
    const/4 v12, 0x0

    goto :goto_0

    .line 379
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v9

    .line 380
    .local v9, "this_present_stoppedWords":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v3

    .line 381
    .local v3, "that_present_stoppedWords":Z
    if-nez v9, :cond_d

    if-eqz v3, :cond_10

    .line 382
    :cond_d
    if-eqz v9, :cond_e

    if-nez v3, :cond_f

    .line 383
    :cond_e
    const/4 v12, 0x0

    goto :goto_0

    .line 384
    :cond_f
    iget-object v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 385
    const/4 v12, 0x0

    goto :goto_0

    .line 388
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v7

    .line 389
    .local v7, "this_present_searchedWords":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v1

    .line 390
    .local v1, "that_present_searchedWords":Z
    if-nez v7, :cond_11

    if-eqz v1, :cond_14

    .line 391
    :cond_11
    if-eqz v7, :cond_12

    if-nez v1, :cond_13

    .line 392
    :cond_12
    const/4 v12, 0x0

    goto :goto_0

    .line 393
    :cond_13
    iget-object v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 394
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 397
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v11

    .line 398
    .local v11, "this_present_updateCount":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v5

    .line 399
    .local v5, "that_present_updateCount":Z
    if-nez v11, :cond_15

    if-eqz v5, :cond_18

    .line 400
    :cond_15
    if-eqz v11, :cond_16

    if-nez v5, :cond_17

    .line 401
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 402
    :cond_17
    iget v12, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    iget v13, p1, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    if-eq v12, v13, :cond_18

    .line 403
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 406
    :cond_18
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 341
    if-nez p1, :cond_1

    .line 345
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 343
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NotesMetadataList;

    if-eqz v1, :cond_0

    .line 344
    check-cast p1, Lcom/evernote/edam/notestore/NotesMetadataList;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->equals(Lcom/evernote/edam/notestore/NotesMetadataList;)Z

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
            "Lcom/evernote/edam/notestore/NoteMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getNotesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/evernote/edam/notestore/NoteMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotesSize()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSearchedWords()Ljava/util/List;
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
    .line 295
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    return-object v0
.end method

.method public getSearchedWordsIterator()Ljava/util/Iterator;
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
    .line 284
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchedWordsSize()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    return v0
.end method

.method public getStoppedWords()Ljava/util/List;
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
    .line 257
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    return-object v0
.end method

.method public getStoppedWordsIterator()Ljava/util/Iterator;
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
    .line 246
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoppedWordsSize()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalNotes()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    return v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isSetNotes()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSearchedWords()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetStartIndex()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetStoppedWords()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTotalNotes()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUpdateCount()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 12
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 484
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v9

    .line 485
    .local v9, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v10, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 571
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->validate()V

    .line 572
    return-void

    .line 488
    :cond_0
    iget-short v10, v9, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v10, :pswitch_data_0

    .line 566
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 568
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 490
    :pswitch_0
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 491
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    .line 492
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NotesMetadataList;->setStartIndexIsSet(Z)V

    goto :goto_1

    .line 494
    :cond_1
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 498
    :pswitch_1
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    .line 499
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    .line 500
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NotesMetadataList;->setTotalNotesIsSet(Z)V

    goto :goto_1

    .line 502
    :cond_2
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 506
    :pswitch_2
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_4

    .line 508
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v6

    .line 509
    .local v6, "_list64":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v6, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 510
    const/4 v3, 0x0

    .local v3, "_i65":I
    :goto_2
    iget v10, v6, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v10, :cond_3

    .line 513
    new-instance v0, Lcom/evernote/edam/notestore/NoteMetadata;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteMetadata;-><init>()V

    .line 514
    .local v0, "_elem66":Lcom/evernote/edam/notestore/NoteMetadata;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 515
    iget-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 517
    .end local v0    # "_elem66":Lcom/evernote/edam/notestore/NoteMetadata;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 520
    .end local v3    # "_i65":I
    .end local v6    # "_list64":Lcom/evernote/thrift/protocol/TList;
    :cond_4
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 524
    :pswitch_3
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_6

    .line 526
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v7

    .line 527
    .local v7, "_list67":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v7, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 528
    const/4 v4, 0x0

    .local v4, "_i68":I
    :goto_3
    iget v10, v7, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v4, v10, :cond_5

    .line 531
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "_elem69":Ljava/lang/String;
    iget-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 534
    .end local v1    # "_elem69":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 537
    .end local v4    # "_i68":I
    .end local v7    # "_list67":Lcom/evernote/thrift/protocol/TList;
    :cond_6
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 541
    :pswitch_4
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_8

    .line 543
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v8

    .line 544
    .local v8, "_list70":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v8, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 545
    const/4 v5, 0x0

    .local v5, "_i71":I
    :goto_4
    iget v10, v8, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v5, v10, :cond_7

    .line 548
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "_elem72":Ljava/lang/String;
    iget-object v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 551
    .end local v2    # "_elem72":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 554
    .end local v5    # "_i71":I
    .end local v8    # "_list70":Lcom/evernote/thrift/protocol/TList;
    :cond_8
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 558
    :pswitch_5
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    .line 559
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    .line 560
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NotesMetadataList;->setUpdateCountIsSet(Z)V

    goto/16 :goto_1

    .line 562
    :cond_9
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/notestore/NoteMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/notestore/NoteMetadata;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 224
    return-void
.end method

.method public setNotesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 239
    :cond_0
    return-void
.end method

.method public setSearchedWords(Ljava/util/List;)V
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
    .line 299
    .local p1, "searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 300
    return-void
.end method

.method public setSearchedWordsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 315
    :cond_0
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setStartIndexIsSet(Z)V

    .line 166
    return-void
.end method

.method public setStartIndexIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 179
    return-void
.end method

.method public setStoppedWords(Ljava/util/List;)V
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
    .line 261
    .local p1, "stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 262
    return-void
.end method

.method public setStoppedWordsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 277
    :cond_0
    return-void
.end method

.method public setTotalNotes(I)V
    .locals 1
    .param p1, "totalNotes"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setTotalNotesIsSet(Z)V

    .line 188
    return-void
.end method

.method public setTotalNotesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 201
    return-void
.end method

.method public setUpdateCount(I)V
    .locals 1
    .param p1, "updateCount"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NotesMetadataList;->setUpdateCountIsSet(Z)V

    .line 324
    return-void
.end method

.method public setUpdateCountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotesMetadataList("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 638
    .local v0, "first":Z
    const-string v2, "startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const/4 v0, 0x0

    .line 641
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_0
    const-string v2, "totalNotes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    const/4 v0, 0x0

    .line 645
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_1
    const-string v2, "notes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-nez v2, :cond_8

    .line 648
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :goto_0
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_2
    const-string v2, "stoppedWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-nez v2, :cond_9

    .line 657
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :goto_1
    const/4 v0, 0x0

    .line 663
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 664
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_4
    const-string v2, "searchedWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-nez v2, :cond_a

    .line 667
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_2
    const/4 v0, 0x0

    .line 673
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 674
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_6
    const-string v2, "updateCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    const/4 v0, 0x0

    .line 679
    :cond_7
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 650
    :cond_8
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 659
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 669
    :cond_a
    iget-object v2, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public unsetNotes()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    .line 228
    return-void
.end method

.method public unsetSearchedWords()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    .line 304
    return-void
.end method

.method public unsetStartIndex()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 170
    return-void
.end method

.method public unsetStoppedWords()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    .line 266
    return-void
.end method

.method public unsetTotalNotes()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 192
    return-void
.end method

.method public unsetUpdateCount()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 328
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
    .line 685
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStartIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'startIndex\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetTotalNotes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'totalNotes\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetNotes()Z

    move-result v0

    if-nez v0, :cond_2

    .line 694
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'notes\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_2
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    .line 575
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->validate()V

    .line 577
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 578
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->START_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 579
    iget v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->startIndex:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 580
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 581
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->TOTAL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 582
    iget v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->totalNotes:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 583
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 584
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 585
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 587
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 588
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->notes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/notestore/NoteMetadata;

    .line 590
    .local v0, "_iter73":Lcom/evernote/edam/notestore/NoteMetadata;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteMetadata;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 592
    .end local v0    # "_iter73":Lcom/evernote/edam/notestore/NoteMetadata;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 594
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 596
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetStoppedWords()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->STOPPED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 600
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    iget-object v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v7, v5}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 601
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->stoppedWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "_iter74":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    .end local v1    # "_iter74":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 607
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 610
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 611
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetSearchedWords()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 612
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->SEARCHED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 614
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    iget-object v5, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v7, v5}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 615
    iget-object v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->searchedWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    .local v2, "_iter75":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 619
    .end local v2    # "_iter75":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 621
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 624
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NotesMetadataList;->isSetUpdateCount()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 625
    sget-object v4, Lcom/evernote/edam/notestore/NotesMetadataList;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 626
    iget v4, p0, Lcom/evernote/edam/notestore/NotesMetadataList;->updateCount:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 627
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 629
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 630
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 631
    return-void
.end method
