.class public Lcom/evernote/edam/notestore/RelatedQuery;
.super Ljava/lang/Object;
.source "RelatedQuery.java"

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
        "Lcom/evernote/edam/notestore/RelatedQuery;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PLAIN_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERENCE_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private filter:Lcom/evernote/edam/notestore/NoteFilter;

.field private noteGuid:Ljava/lang/String;

.field private plainText:Ljava/lang/String;

.field private referenceUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 50
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "RelatedQuery"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 52
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 53
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "plainText"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->PLAIN_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 54
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "filter"

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 55
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "referenceUri"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->REFERENCE_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/RelatedQuery;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedQuery;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p1, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p1, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v1, p1, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>(Lcom/evernote/edam/notestore/NoteFilter;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p1, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    .line 84
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 94
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/RelatedQuery;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/RelatedQuery;

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
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

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    const/4 v0, 0x0

    .line 252
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 254
    .local v1, "typedOther":Lcom/evernote/edam/notestore/RelatedQuery;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 255
    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 259
    if-nez v0, :cond_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    if-nez v0, :cond_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 273
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 277
    if-nez v0, :cond_0

    .line 281
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 282
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 290
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/evernote/edam/notestore/RelatedQuery;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedQuery;->compareTo(Lcom/evernote/edam/notestore/RelatedQuery;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/RelatedQuery;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/evernote/edam/notestore/RelatedQuery;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/RelatedQuery;-><init>(Lcom/evernote/edam/notestore/RelatedQuery;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->deepCopy()Lcom/evernote/edam/notestore/RelatedQuery;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/RelatedQuery;)Z
    .locals 11
    .param p1, "that"    # Lcom/evernote/edam/notestore/RelatedQuery;

    .prologue
    const/4 v8, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v8

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v5

    .line 203
    .local v5, "this_present_noteGuid":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v1

    .line 204
    .local v1, "that_present_noteGuid":Z
    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    .line 205
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 207
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v6

    .line 212
    .local v6, "this_present_plainText":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v2

    .line 213
    .local v2, "that_present_plainText":Z
    if-nez v6, :cond_4

    if-eqz v2, :cond_5

    .line 214
    :cond_4
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 216
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v4

    .line 221
    .local v4, "this_present_filter":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v0

    .line 222
    .local v0, "that_present_filter":Z
    if-nez v4, :cond_6

    if-eqz v0, :cond_7

    .line 223
    :cond_6
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 225
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/notestore/NoteFilter;->equals(Lcom/evernote/edam/notestore/NoteFilter;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v7

    .line 230
    .local v7, "this_present_referenceUri":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v3

    .line 231
    .local v3, "that_present_referenceUri":Z
    if-nez v7, :cond_8

    if-eqz v3, :cond_9

    .line 232
    :cond_8
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 234
    iget-object v9, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    iget-object v10, p1, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 238
    :cond_9
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 195
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 193
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/RelatedQuery;

    if-eqz v1, :cond_0

    .line 194
    check-cast p1, Lcom/evernote/edam/notestore/RelatedQuery;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedQuery;->equals(Lcom/evernote/edam/notestore/RelatedQuery;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Lcom/evernote/edam/notestore/NoteFilter;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    return-object v0
.end method

.method public getNoteGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isSetFilter()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNoteGuid()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPlainText()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetReferenceUri()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const/16 v3, 0xb

    .line 295
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 298
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 299
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 338
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->validate()V

    .line 339
    return-void

    .line 302
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 333
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 335
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 304
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    goto :goto_1

    .line 307
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 311
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 318
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 319
    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 320
    iget-object v1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteFilter;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 322
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 326
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 327
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    goto :goto_1

    .line 329
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFilter(Lcom/evernote/edam/notestore/NoteFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/evernote/edam/notestore/NoteFilter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 149
    return-void
.end method

.method public setFilterIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 164
    :cond_0
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteGuid"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNoteGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    .line 118
    :cond_0
    return-void
.end method

.method public setPlainText(Ljava/lang/String;)V
    .locals 0
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPlainTextIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    .line 141
    :cond_0
    return-void
.end method

.method public setReferenceUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceUri"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setReferenceUriIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    .line 187
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RelatedQuery("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 382
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "noteGuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 385
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :goto_0
    const/4 v0, 0x0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    const-string v2, "plainText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 395
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :goto_1
    const/4 v0, 0x0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_3
    const-string v2, "filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-nez v2, :cond_9

    .line 405
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :goto_2
    const/4 v0, 0x0

    .line 411
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_5
    const-string v2, "referenceUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 415
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :goto_3
    const/4 v0, 0x0

    .line 421
    :cond_6
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 387
    :cond_7
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    :cond_8
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    :cond_9
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 417
    :cond_a
    iget-object v2, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetFilter()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    .line 153
    return-void
.end method

.method public unsetNoteGuid()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public unsetPlainText()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public unsetReferenceUri()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    .line 176
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
    .line 427
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
    .line 342
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->validate()V

    .line 344
    sget-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 345
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 348
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetPlainText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->PLAIN_TEXT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 355
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->plainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    sget-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->FILTER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 362
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->filter:Lcom/evernote/edam/notestore/NoteFilter;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteFilter;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 363
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedQuery;->isSetReferenceUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    sget-object v0, Lcom/evernote/edam/notestore/RelatedQuery;->REFERENCE_URI_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 369
    iget-object v0, p0, Lcom/evernote/edam/notestore/RelatedQuery;->referenceUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 373
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 374
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 375
    return-void
.end method
