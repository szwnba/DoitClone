.class public Lcom/evernote/edam/notestore/RelatedResultSpec;
.super Ljava/lang/Object;
.source "RelatedResultSpec.java"

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
        "Lcom/evernote/edam/notestore/RelatedResultSpec;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __INCLUDECONTAININGNOTEBOOKS_ISSET_ID:I = 0x4

.field private static final __MAXNOTEBOOKS_ISSET_ID:I = 0x1

.field private static final __MAXNOTES_ISSET_ID:I = 0x0

.field private static final __MAXTAGS_ISSET_ID:I = 0x2

.field private static final __WRITABLENOTEBOOKSONLY_ISSET_ID:I = 0x3


# instance fields
.field private __isset_vector:[Z

.field private includeContainingNotebooks:Z

.field private maxNotebooks:I

.field private maxNotes:I

.field private maxTags:I

.field private writableNotebooksOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 59
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "RelatedResultSpec"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 61
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxNotes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 62
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxNotebooks"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 63
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxTags"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 64
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "writableNotebooksOnly"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 65
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeContainingNotebooks"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/RelatedResultSpec;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedResultSpec;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    .line 89
    iget-object v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    .line 91
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    .line 92
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    .line 93
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    .line 94
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    .line 103
    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    .line 104
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    .line 105
    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    .line 106
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    .line 107
    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    .line 108
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    .line 109
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    .line 110
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    .line 111
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    .line 112
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/RelatedResultSpec;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedResultSpec;

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
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

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 296
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 298
    .local v1, "typedOther":Lcom/evernote/edam/notestore/RelatedResultSpec;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 299
    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iget v3, v1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 303
    if-nez v0, :cond_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 308
    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iget v3, v1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 312
    if-nez v0, :cond_0

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 317
    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iget v3, v1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 321
    if-nez v0, :cond_0

    .line 325
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 326
    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 330
    if-nez v0, :cond_0

    .line 334
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 335
    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 339
    if-nez v0, :cond_0

    .line 343
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->compareTo(Lcom/evernote/edam/notestore/RelatedResultSpec;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/RelatedResultSpec;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;-><init>(Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->deepCopy()Lcom/evernote/edam/notestore/RelatedResultSpec;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/RelatedResultSpec;)Z
    .locals 13
    .param p1, "that"    # Lcom/evernote/edam/notestore/RelatedResultSpec;

    .prologue
    const/4 v10, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v10

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v7

    .line 238
    .local v7, "this_present_maxNotes":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v2

    .line 239
    .local v2, "that_present_maxNotes":Z
    if-nez v7, :cond_2

    if-eqz v2, :cond_3

    .line 240
    :cond_2
    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    .line 242
    iget v11, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iget v12, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    if-ne v11, v12, :cond_0

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v6

    .line 247
    .local v6, "this_present_maxNotebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v1

    .line 248
    .local v1, "that_present_maxNotebooks":Z
    if-nez v6, :cond_4

    if-eqz v1, :cond_5

    .line 249
    :cond_4
    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 251
    iget v11, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iget v12, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    if-ne v11, v12, :cond_0

    .line 255
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v8

    .line 256
    .local v8, "this_present_maxTags":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v3

    .line 257
    .local v3, "that_present_maxTags":Z
    if-nez v8, :cond_6

    if-eqz v3, :cond_7

    .line 258
    :cond_6
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 260
    iget v11, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iget v12, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    if-ne v11, v12, :cond_0

    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v9

    .line 265
    .local v9, "this_present_writableNotebooksOnly":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v4

    .line 266
    .local v4, "that_present_writableNotebooksOnly":Z
    if-nez v9, :cond_8

    if-eqz v4, :cond_9

    .line 267
    :cond_8
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 269
    iget-boolean v11, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iget-boolean v12, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    if-ne v11, v12, :cond_0

    .line 273
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v5

    .line 274
    .local v5, "this_present_includeContainingNotebooks":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v0

    .line 275
    .local v0, "that_present_includeContainingNotebooks":Z
    if-nez v5, :cond_a

    if-eqz v0, :cond_b

    .line 276
    :cond_a
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 278
    iget-boolean v11, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iget-boolean v12, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    if-ne v11, v12, :cond_0

    .line 282
    :cond_b
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p1, :cond_1

    .line 230
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 228
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    if-eqz v1, :cond_0

    .line 229
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->equals(Lcom/evernote/edam/notestore/RelatedResultSpec;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMaxNotebooks()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    return v0
.end method

.method public getMaxNotes()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    return v0
.end method

.method public getMaxTags()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isIncludeContainingNotebooks()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    return v0
.end method

.method public isSetIncludeContainingNotebooks()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetMaxNotebooks()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetMaxNotes()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetMaxTags()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWritableNotebooksOnly()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isWritableNotebooksOnly()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

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
    const/4 v4, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 348
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 351
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 352
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 402
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->validate()V

    .line 403
    return-void

    .line 355
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 397
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 399
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 357
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 358
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    .line 359
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    goto :goto_1

    .line 361
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 365
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    .line 367
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    goto :goto_1

    .line 369
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 373
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 374
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    .line 375
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    goto :goto_1

    .line 377
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 381
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 382
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    .line 383
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    goto :goto_1

    .line 385
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 389
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_5

    .line 390
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    .line 391
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    goto :goto_1

    .line 393
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setIncludeContainingNotebooks(Z)V
    .locals 1
    .param p1, "includeContainingNotebooks"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    .line 209
    return-void
.end method

.method public setIncludeContainingNotebooksIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 222
    return-void
.end method

.method public setMaxNotebooks(I)V
    .locals 1
    .param p1, "maxNotebooks"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    .line 143
    return-void
.end method

.method public setMaxNotebooksIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 156
    return-void
.end method

.method public setMaxNotes(I)V
    .locals 1
    .param p1, "maxNotes"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    .line 121
    return-void
.end method

.method public setMaxNotesIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 134
    return-void
.end method

.method public setMaxTags(I)V
    .locals 1
    .param p1, "maxTags"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    .line 165
    return-void
.end method

.method public setMaxTagsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 178
    return-void
.end method

.method public setWritableNotebooksOnly(Z)V
    .locals 1
    .param p1, "writableNotebooksOnly"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    .line 187
    return-void
.end method

.method public setWritableNotebooksOnlyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RelatedResultSpec("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 443
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    const-string v2, "maxNotes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const/4 v0, 0x0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_1
    const-string v2, "maxNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    const/4 v0, 0x0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_3
    const-string v2, "maxTags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const/4 v0, 0x0

    .line 460
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 461
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_5
    const-string v2, "writableNotebooksOnly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 464
    const/4 v0, 0x0

    .line 466
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 467
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_7
    const-string v2, "includeContainingNotebooks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-boolean v2, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    const/4 v0, 0x0

    .line 472
    :cond_8
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unsetIncludeContainingNotebooks()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 213
    return-void
.end method

.method public unsetMaxNotebooks()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 147
    return-void
.end method

.method public unsetMaxNotes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 125
    return-void
.end method

.method public unsetMaxTags()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 169
    return-void
.end method

.method public unsetWritableNotebooksOnly()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 191
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
    .line 478
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
    .line 406
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->validate()V

    .line 408
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 409
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 411
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 412
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 416
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 417
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 421
    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 422
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 426
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 427
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 429
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 431
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 432
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 434
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 435
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 436
    return-void
.end method
