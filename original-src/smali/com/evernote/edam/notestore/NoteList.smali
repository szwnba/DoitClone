.class public Lcom/evernote/edam/notestore/NoteList;
.super Ljava/lang/Object;
.source "NoteList.java"

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
        "Lcom/evernote/edam/notestore/NoteList;",
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
            "Lcom/evernote/edam/type/Note;",
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

    .line 69
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteList"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 71
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "startIndex"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->START_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 72
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "totalNotes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->TOTAL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 73
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 74
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "stoppedWords"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->STOPPED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 75
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "searchedWords"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->SEARCHED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 76
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateCount"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteList;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    .line 93
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
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteList;-><init>()V

    .line 101
    iput p1, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    .line 102
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setStartIndexIsSet(Z)V

    .line 103
    iput p2, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    .line 104
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setTotalNotesIsSet(Z)V

    .line 105
    iput-object p3, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteList;)V
    .locals 9
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteList;

    .prologue
    const/4 v8, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v5, 0x3

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    .line 112
    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    iget-object v6, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    iget-object v7, p1, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v5, p1, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    iput v5, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    .line 114
    iget v5, p1, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    iput v5, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    .line 115
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/edam/type/Note;

    .line 118
    .local v4, "other_element":Lcom/evernote/edam/type/Note;
    new-instance v5, Lcom/evernote/edam/type/Note;

    invoke-direct {v5, v4}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v4    # "other_element":Lcom/evernote/edam/type/Note;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 122
    .end local v0    # "__this__notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "__this__stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

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

    .line 125
    .local v4, "other_element":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v4    # "other_element":Ljava/lang/String;
    :cond_2
    iput-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 129
    .end local v2    # "__this__stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "__this__searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

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

    .line 132
    .restart local v4    # "other_element":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    .end local v4    # "other_element":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 136
    .end local v1    # "__this__searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v5, p1, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    iput v5, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    .line 137
    return-void
.end method


# virtual methods
.method public addToNotes(Lcom/evernote/edam/type/Note;)V
    .locals 1
    .param p1, "elem"    # Lcom/evernote/edam/type/Note;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public addToSearchedWords(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public addToStoppedWords(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setStartIndexIsSet(Z)V

    .line 145
    iput v0, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    .line 146
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setTotalNotesIsSet(Z)V

    .line 147
    iput v0, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    .line 148
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 149
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 150
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 151
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setUpdateCountIsSet(Z)V

    .line 152
    iput v0, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    .line 153
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteList;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteList;

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
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

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    const/4 v0, 0x0

    .line 416
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 418
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteList;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStartIndex()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetStartIndex()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 419
    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStartIndex()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 423
    if-nez v0, :cond_0

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetTotalNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetTotalNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 428
    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetTotalNotes()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 432
    if-nez v0, :cond_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 437
    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 445
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 446
    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 450
    if-nez v0, :cond_0

    .line 454
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 455
    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 459
    if-nez v0, :cond_0

    .line 463
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 464
    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 468
    if-nez v0, :cond_0

    .line 472
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/evernote/edam/notestore/NoteList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteList;->compareTo(Lcom/evernote/edam/notestore/NoteList;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteList;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/evernote/edam/notestore/NoteList;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteList;-><init>(Lcom/evernote/edam/notestore/NoteList;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->deepCopy()Lcom/evernote/edam/notestore/NoteList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteList;)Z
    .locals 14
    .param p1, "that"    # Lcom/evernote/edam/notestore/NoteList;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v12, 0x0

    .line 402
    :goto_0
    return v12

    .line 348
    :cond_0
    const/4 v8, 0x1

    .line 349
    .local v8, "this_present_startIndex":Z
    const/4 v2, 0x1

    .line 350
    .local v2, "that_present_startIndex":Z
    if-nez v8, :cond_1

    if-eqz v2, :cond_4

    .line 351
    :cond_1
    if-eqz v8, :cond_2

    if-nez v2, :cond_3

    .line 352
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 353
    :cond_3
    iget v12, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    iget v13, p1, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    if-eq v12, v13, :cond_4

    .line 354
    const/4 v12, 0x0

    goto :goto_0

    .line 357
    :cond_4
    const/4 v10, 0x1

    .line 358
    .local v10, "this_present_totalNotes":Z
    const/4 v4, 0x1

    .line 359
    .local v4, "that_present_totalNotes":Z
    if-nez v10, :cond_5

    if-eqz v4, :cond_8

    .line 360
    :cond_5
    if-eqz v10, :cond_6

    if-nez v4, :cond_7

    .line 361
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 362
    :cond_7
    iget v12, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    iget v13, p1, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    if-eq v12, v13, :cond_8

    .line 363
    const/4 v12, 0x0

    goto :goto_0

    .line 366
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v6

    .line 367
    .local v6, "this_present_notes":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v0

    .line 368
    .local v0, "that_present_notes":Z
    if-nez v6, :cond_9

    if-eqz v0, :cond_c

    .line 369
    :cond_9
    if-eqz v6, :cond_a

    if-nez v0, :cond_b

    .line 370
    :cond_a
    const/4 v12, 0x0

    goto :goto_0

    .line 371
    :cond_b
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 372
    const/4 v12, 0x0

    goto :goto_0

    .line 375
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v9

    .line 376
    .local v9, "this_present_stoppedWords":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v3

    .line 377
    .local v3, "that_present_stoppedWords":Z
    if-nez v9, :cond_d

    if-eqz v3, :cond_10

    .line 378
    :cond_d
    if-eqz v9, :cond_e

    if-nez v3, :cond_f

    .line 379
    :cond_e
    const/4 v12, 0x0

    goto :goto_0

    .line 380
    :cond_f
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 381
    const/4 v12, 0x0

    goto :goto_0

    .line 384
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v7

    .line 385
    .local v7, "this_present_searchedWords":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v1

    .line 386
    .local v1, "that_present_searchedWords":Z
    if-nez v7, :cond_11

    if-eqz v1, :cond_14

    .line 387
    :cond_11
    if-eqz v7, :cond_12

    if-nez v1, :cond_13

    .line 388
    :cond_12
    const/4 v12, 0x0

    goto :goto_0

    .line 389
    :cond_13
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 390
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 393
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v11

    .line 394
    .local v11, "this_present_updateCount":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v5

    .line 395
    .local v5, "that_present_updateCount":Z
    if-nez v11, :cond_15

    if-eqz v5, :cond_18

    .line 396
    :cond_15
    if-eqz v11, :cond_16

    if-nez v5, :cond_17

    .line 397
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 398
    :cond_17
    iget v12, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    iget v13, p1, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    if-eq v12, v13, :cond_18

    .line 399
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 402
    :cond_18
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 341
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 339
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteList;

    if-eqz v1, :cond_0

    .line 340
    check-cast p1, Lcom/evernote/edam/notestore/NoteList;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteList;->equals(Lcom/evernote/edam/notestore/NoteList;)Z

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
    .line 215
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

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
    .line 204
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotesSize()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

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
    .line 291
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

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
    .line 280
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchedWordsSize()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

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
    .line 253
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

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
    .line 242
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoppedWordsSize()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalNotes()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    return v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isSetNotes()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

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
    .line 304
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

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
    .line 170
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetStoppedWords()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

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
    .line 192
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUpdateCount()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

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
    .line 477
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 480
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v9

    .line 481
    .local v9, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v10, :cond_0

    .line 566
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 567
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->validate()V

    .line 568
    return-void

    .line 484
    :cond_0
    iget-short v10, v9, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v10, :pswitch_data_0

    .line 562
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 564
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 486
    :pswitch_0
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 487
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    .line 488
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NoteList;->setStartIndexIsSet(Z)V

    goto :goto_1

    .line 490
    :cond_1
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 494
    :pswitch_1
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    .line 495
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    .line 496
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NoteList;->setTotalNotesIsSet(Z)V

    goto :goto_1

    .line 498
    :cond_2
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 502
    :pswitch_2
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_4

    .line 504
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v6

    .line 505
    .local v6, "_list48":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v6, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 506
    const/4 v3, 0x0

    .local v3, "_i49":I
    :goto_2
    iget v10, v6, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v10, :cond_3

    .line 509
    new-instance v0, Lcom/evernote/edam/type/Note;

    invoke-direct {v0}, Lcom/evernote/edam/type/Note;-><init>()V

    .line 510
    .local v0, "_elem50":Lcom/evernote/edam/type/Note;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 511
    iget-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 513
    .end local v0    # "_elem50":Lcom/evernote/edam/type/Note;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 516
    .end local v3    # "_i49":I
    .end local v6    # "_list48":Lcom/evernote/thrift/protocol/TList;
    :cond_4
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 520
    :pswitch_3
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_6

    .line 522
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v7

    .line 523
    .local v7, "_list51":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v7, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 524
    const/4 v4, 0x0

    .local v4, "_i52":I
    :goto_3
    iget v10, v7, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v4, v10, :cond_5

    .line 527
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "_elem53":Ljava/lang/String;
    iget-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 530
    .end local v1    # "_elem53":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 533
    .end local v4    # "_i52":I
    .end local v7    # "_list51":Lcom/evernote/thrift/protocol/TList;
    :cond_6
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 537
    :pswitch_4
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0xf

    if-ne v10, v11, :cond_8

    .line 539
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v8

    .line 540
    .local v8, "_list54":Lcom/evernote/thrift/protocol/TList;
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v8, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 541
    const/4 v5, 0x0

    .local v5, "_i55":I
    :goto_4
    iget v10, v8, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v5, v10, :cond_7

    .line 544
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "_elem56":Ljava/lang/String;
    iget-object v10, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 547
    .end local v2    # "_elem56":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 550
    .end local v5    # "_i55":I
    .end local v8    # "_list54":Lcom/evernote/thrift/protocol/TList;
    :cond_8
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 554
    :pswitch_5
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    .line 555
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v10

    iput v10, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    .line 556
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/evernote/edam/notestore/NoteList;->setUpdateCountIsSet(Z)V

    goto/16 :goto_1

    .line 558
    :cond_9
    iget-byte v10, v9, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v10}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 484
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
            "Lcom/evernote/edam/type/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Note;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 220
    return-void
.end method

.method public setNotesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 235
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
    .line 295
    .local p1, "searchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 296
    return-void
.end method

.method public setSearchedWordsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 311
    :cond_0
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setStartIndexIsSet(Z)V

    .line 162
    return-void
.end method

.method public setStartIndexIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 175
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
    .line 257
    .local p1, "stoppedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 258
    return-void
.end method

.method public setStoppedWordsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 273
    :cond_0
    return-void
.end method

.method public setTotalNotes(I)V
    .locals 1
    .param p1, "totalNotes"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setTotalNotesIsSet(Z)V

    .line 184
    return-void
.end method

.method public setTotalNotesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 197
    return-void
.end method

.method public setUpdateCount(I)V
    .locals 1
    .param p1, "updateCount"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteList;->setUpdateCountIsSet(Z)V

    .line 320
    return-void
.end method

.method public setUpdateCountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoteList("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 634
    .local v0, "first":Z
    const-string v2, "startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const/4 v0, 0x0

    .line 637
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_0
    const-string v2, "totalNotes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const/4 v0, 0x0

    .line 641
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_1
    const-string v2, "notes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    if-nez v2, :cond_8

    .line 644
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :goto_0
    const/4 v0, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 650
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_2
    const-string v2, "stoppedWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    if-nez v2, :cond_9

    .line 653
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_1
    const/4 v0, 0x0

    .line 659
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 660
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_4
    const-string v2, "searchedWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    if-nez v2, :cond_a

    .line 663
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :goto_2
    const/4 v0, 0x0

    .line 669
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 670
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_6
    const-string v2, "updateCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v2, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    const/4 v0, 0x0

    .line 675
    :cond_7
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 646
    :cond_8
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 655
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 665
    :cond_a
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public unsetNotes()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    .line 224
    return-void
.end method

.method public unsetSearchedWords()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    .line 300
    return-void
.end method

.method public unsetStartIndex()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 166
    return-void
.end method

.method public unsetStoppedWords()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    .line 262
    return-void
.end method

.method public unsetTotalNotes()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 188
    return-void
.end method

.method public unsetUpdateCount()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteList;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 324
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
    .line 681
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStartIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'startIndex\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetTotalNotes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'totalNotes\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetNotes()Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'notes\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
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

    .line 571
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->validate()V

    .line 573
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 574
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->START_INDEX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 575
    iget v4, p0, Lcom/evernote/edam/notestore/NoteList;->startIndex:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 576
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 577
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->TOTAL_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 578
    iget v4, p0, Lcom/evernote/edam/notestore/NoteList;->totalNotes:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 579
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 580
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 581
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 583
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 584
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->notes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/Note;

    .line 586
    .local v0, "_iter57":Lcom/evernote/edam/type/Note;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 588
    .end local v0    # "_iter57":Lcom/evernote/edam/type/Note;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 590
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 592
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetStoppedWords()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 594
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->STOPPED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 596
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v7, v5}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 597
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->stoppedWords:Ljava/util/List;

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

    .line 599
    .local v1, "_iter58":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 601
    .end local v1    # "_iter58":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 603
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 606
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 607
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetSearchedWords()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 608
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->SEARCHED_WORDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 610
    new-instance v4, Lcom/evernote/thrift/protocol/TList;

    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v7, v5}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 611
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteList;->searchedWords:Ljava/util/List;

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

    .line 613
    .local v2, "_iter59":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 615
    .end local v2    # "_iter59":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 617
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 620
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteList;->isSetUpdateCount()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 621
    sget-object v4, Lcom/evernote/edam/notestore/NoteList;->UPDATE_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 622
    iget v4, p0, Lcom/evernote/edam/notestore/NoteList;->updateCount:I

    invoke-virtual {p1, v4}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 623
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 625
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 626
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 627
    return-void
.end method
