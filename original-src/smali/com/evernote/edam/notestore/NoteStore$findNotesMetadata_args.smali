.class Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;
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
    name = "findNotesMetadata_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;",
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

.field private static final RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __MAXNOTES_ISSET_ID:I = 0x1

.field private static final __OFFSET_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private filter:Lcom/evernote/edam/notestore/NoteFilter;

.field private maxNotes:I

.field private offset:I

.field private resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x8

    .line 12243
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findNotesMetadata_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 12245
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12246
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "filter"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12247
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "offset"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->OFFSET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12248
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxNotes"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12249
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "resultSpec"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12261
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    .line 12264
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    .prologue
    const/4 v3, 0x0

    .line 12269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12261
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    .line 12270
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12271
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12272
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    .line 12274
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12275
    new-instance v0, Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>(Lcom/evernote/edam/notestore/NoteFilter;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 12277
    :cond_1
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    .line 12278
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    .line 12279
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetResultSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12280
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .line 12282
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12289
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    .line 12290
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 12291
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setOffsetIsSet(Z)V

    .line 12292
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    .line 12293
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setMaxNotesIsSet(Z)V

    .line 12294
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    .line 12295
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .line 12296
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    .prologue
    .line 12354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12355
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

    .line 12406
    :cond_0
    :goto_0
    return v0

    .line 12358
    :cond_1
    const/4 v0, 0x0

    .line 12359
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 12361
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12362
    if-nez v0, :cond_0

    .line 12365
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 12366
    if-nez v0, :cond_0

    .line 12370
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetFilter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetFilter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12371
    if-nez v0, :cond_0

    .line 12374
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetFilter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12375
    if-nez v0, :cond_0

    .line 12379
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetOffset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetOffset()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12380
    if-nez v0, :cond_0

    .line 12383
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 12384
    if-nez v0, :cond_0

    .line 12388
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetMaxNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetMaxNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12389
    if-nez v0, :cond_0

    .line 12392
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetMaxNotes()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 12393
    if-nez v0, :cond_0

    .line 12397
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetResultSpec()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetResultSpec()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12398
    if-nez v0, :cond_0

    .line 12401
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->isSetResultSpec()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12402
    if-nez v0, :cond_0

    .line 12406
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12242
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;
    .locals 1

    .prologue
    .line 12285
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 12242
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 12304
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

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
    .line 12313
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

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
    .line 12337
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetOffset()Z
    .locals 2

    .prologue
    .line 12323
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetResultSpec()Z
    .locals 1

    .prologue
    .line 12350
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 12411
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 12414
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 12415
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 12463
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 12464
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->validate()V

    .line 12465
    return-void

    .line 12418
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 12459
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 12461
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 12420
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 12421
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 12423
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12427
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 12428
    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 12429
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteFilter;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12431
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12435
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 12436
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    .line 12437
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setOffsetIsSet(Z)V

    goto :goto_1

    .line 12439
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12443
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 12444
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    .line 12445
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setMaxNotesIsSet(Z)V

    goto :goto_1

    .line 12447
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12451
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_5

    .line 12452
    new-instance v1, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .line 12453
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12455
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 12299
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    .line 12300
    return-void
.end method

.method public setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;

    .prologue
    .line 12308
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 12309
    return-void
.end method

.method public setMaxNotes(I)V
    .locals 1
    .param p1, "maxNotes"    # I

    .prologue
    .line 12331
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    .line 12332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setMaxNotesIsSet(Z)V

    .line 12333
    return-void
.end method

.method public setMaxNotesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 12341
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 12342
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 12317
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    .line 12318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->setOffsetIsSet(Z)V

    .line 12319
    return-void
.end method

.method public setOffsetIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 12327
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 12328
    return-void
.end method

.method public setResultSpec(Lcom/evernote/edam/notestore/NotesMetadataResultSpec;)V
    .locals 0
    .param p1, "resultSpec"    # Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .prologue
    .line 12345
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    .line 12346
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
    .line 12498
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
    .line 12468
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->validate()V

    .line 12470
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 12471
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12472
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12473
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 12474
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12476
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-eqz v0, :cond_1

    .line 12477
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12478
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteFilter;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12479
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12481
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->OFFSET_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12482
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->offset:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 12483
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12484
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12485
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->maxNotes:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 12486
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12487
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    if-eqz v0, :cond_2

    .line 12488
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->RESULT_SPEC_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12489
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_args;->resultSpec:Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NotesMetadataResultSpec;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12490
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12492
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 12493
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 12494
    return-void
.end method
