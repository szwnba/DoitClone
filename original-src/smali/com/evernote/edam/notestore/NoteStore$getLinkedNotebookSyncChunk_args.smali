.class Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;
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
    name = "getLinkedNotebookSyncChunk_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __AFTERUSN_ISSET_ID:I = 0x0

.field private static final __FULLSYNCONLY_ISSET_ID:I = 0x2

.field private static final __MAXENTRIES_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private afterUSN:I

.field private authenticationToken:Ljava/lang/String;

.field private fullSyncOnly:Z

.field private linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

.field private maxEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 5180
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getLinkedNotebookSyncChunk_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 5182
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 5183
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "linkedNotebook"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 5184
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "afterUSN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 5185
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxEntries"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 5186
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "fullSyncOnly"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5199
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    .line 5202
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    .prologue
    const/4 v3, 0x0

    .line 5207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5199
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    .line 5208
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5209
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5210
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 5212
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetLinkedNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5213
    new-instance v0, Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 5215
    :cond_1
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    .line 5216
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    .line 5217
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    .line 5218
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5225
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 5226
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 5227
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 5228
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    .line 5229
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 5230
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    .line 5231
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    .line 5232
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    .line 5233
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    .prologue
    .line 5296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5297
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

    .line 5348
    :cond_0
    :goto_0
    return v0

    .line 5300
    :cond_1
    const/4 v0, 0x0

    .line 5301
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 5303
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5304
    if-nez v0, :cond_0

    .line 5307
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5308
    if-nez v0, :cond_0

    .line 5312
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetLinkedNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetLinkedNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5313
    if-nez v0, :cond_0

    .line 5316
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetLinkedNotebook()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 5317
    if-nez v0, :cond_0

    .line 5321
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAfterUSN()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5322
    if-nez v0, :cond_0

    .line 5325
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetAfterUSN()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 5326
    if-nez v0, :cond_0

    .line 5330
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetMaxEntries()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5331
    if-nez v0, :cond_0

    .line 5334
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetMaxEntries()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 5335
    if-nez v0, :cond_0

    .line 5339
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5340
    if-nez v0, :cond_0

    .line 5343
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->isSetFullSyncOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 5344
    if-nez v0, :cond_0

    .line 5348
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5179
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;
    .locals 1

    .prologue
    .line 5221
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 5179
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAfterUSN()Z
    .locals 2

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 5241
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetFullSyncOnly()Z
    .locals 2

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLinkedNotebook()Z
    .locals 1

    .prologue
    .line 5250
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

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
    .line 5274
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

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

    .line 5353
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 5356
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 5357
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 5405
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 5406
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->validate()V

    .line 5407
    return-void

    .line 5360
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 5401
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 5403
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 5362
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 5363
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 5365
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5369
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 5370
    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 5371
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 5373
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5377
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 5378
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    .line 5379
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAfterUSNIsSet(Z)V

    goto :goto_1

    .line 5381
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5385
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 5386
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    .line 5387
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setMaxEntriesIsSet(Z)V

    goto :goto_1

    .line 5389
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5393
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 5394
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    .line 5395
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    goto :goto_1

    .line 5397
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAfterUSN(I)V
    .locals 1
    .param p1, "afterUSN"    # I

    .prologue
    .line 5254
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    .line 5255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setAfterUSNIsSet(Z)V

    .line 5256
    return-void
.end method

.method public setAfterUSNIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5264
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 5265
    return-void
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 5236
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    .line 5237
    return-void
.end method

.method public setFullSyncOnly(Z)V
    .locals 1
    .param p1, "fullSyncOnly"    # Z

    .prologue
    .line 5282
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    .line 5283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setFullSyncOnlyIsSet(Z)V

    .line 5284
    return-void
.end method

.method public setFullSyncOnlyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 5293
    return-void
.end method

.method public setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 0
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;

    .prologue
    .line 5245
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 5246
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "maxEntries"    # I

    .prologue
    .line 5268
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    .line 5269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->setMaxEntriesIsSet(Z)V

    .line 5270
    return-void
.end method

.method public setMaxEntriesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5278
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 5279
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
    .line 5438
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
    .line 5410
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->validate()V

    .line 5412
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 5413
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5414
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5415
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5418
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    if-eqz v0, :cond_1

    .line 5419
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5420
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 5421
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5423
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->AFTER_USN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5424
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->afterUSN:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 5425
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5426
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->MAX_ENTRIES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5427
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->maxEntries:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 5428
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5429
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->FULL_SYNC_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5430
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncChunk_args;->fullSyncOnly:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 5431
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5432
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 5433
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 5434
    return-void
.end method
