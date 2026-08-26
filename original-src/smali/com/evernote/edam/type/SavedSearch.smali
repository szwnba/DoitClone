.class public Lcom/evernote/edam/type/SavedSearch;
.super Ljava/lang/Object;
.source "SavedSearch.java"

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
        "Lcom/evernote/edam/type/SavedSearch;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final FORMAT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SCOPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private format:Lcom/evernote/edam/type/QueryFormat;

.field private guid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private scope:Lcom/evernote/edam/type/SavedSearchScope;

.field private updateSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    .line 74
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SavedSearch"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 76
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 77
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "name"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 78
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "query"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 79
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "format"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->FORMAT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 80
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 81
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "scope"

    const/16 v2, 0xc

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearch;->SCOPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SavedSearch;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    .line 102
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p1, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    .line 115
    :cond_3
    iget v0, p1, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    .line 116
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    new-instance v0, Lcom/evernote/edam/type/SavedSearchScope;

    iget-object v1, p1, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SavedSearchScope;-><init>(Lcom/evernote/edam/type/SavedSearchScope;)V

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 119
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    .line 130
    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/SavedSearch;->setUpdateSequenceNumIsSet(Z)V

    .line 131
    iput v1, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    .line 132
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 133
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SavedSearch;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
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

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    const/4 v0, 0x0

    .line 361
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 363
    .local v1, "typedOther":Lcom/evernote/edam/type/SavedSearch;
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 364
    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    if-nez v0, :cond_0

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 373
    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 377
    if-nez v0, :cond_0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 382
    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 386
    if-nez v0, :cond_0

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 391
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    iget-object v3, v1, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 395
    if-nez v0, :cond_0

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 400
    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    iget v3, v1, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 404
    if-nez v0, :cond_0

    .line 408
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 409
    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    iget-object v3, v1, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 413
    if-nez v0, :cond_0

    .line 417
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/evernote/edam/type/SavedSearch;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearch;->compareTo(Lcom/evernote/edam/type/SavedSearch;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SavedSearch;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->deepCopy()Lcom/evernote/edam/type/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/SavedSearch;)Z
    .locals 14
    .param p1, "that"    # Lcom/evernote/edam/type/SavedSearch;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v12, 0x0

    .line 347
    :goto_0
    return v12

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v7

    .line 294
    .local v7, "this_present_guid":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v1

    .line 295
    .local v1, "that_present_guid":Z
    if-nez v7, :cond_1

    if-eqz v1, :cond_4

    .line 296
    :cond_1
    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    .line 297
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 298
    :cond_3
    iget-object v12, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 299
    const/4 v12, 0x0

    goto :goto_0

    .line 302
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v8

    .line 303
    .local v8, "this_present_name":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v2

    .line 304
    .local v2, "that_present_name":Z
    if-nez v8, :cond_5

    if-eqz v2, :cond_8

    .line 305
    :cond_5
    if-eqz v8, :cond_6

    if-nez v2, :cond_7

    .line 306
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 307
    :cond_7
    iget-object v12, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 308
    const/4 v12, 0x0

    goto :goto_0

    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v9

    .line 312
    .local v9, "this_present_query":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v3

    .line 313
    .local v3, "that_present_query":Z
    if-nez v9, :cond_9

    if-eqz v3, :cond_c

    .line 314
    :cond_9
    if-eqz v9, :cond_a

    if-nez v3, :cond_b

    .line 315
    :cond_a
    const/4 v12, 0x0

    goto :goto_0

    .line 316
    :cond_b
    iget-object v12, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 317
    const/4 v12, 0x0

    goto :goto_0

    .line 320
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v6

    .line 321
    .local v6, "this_present_format":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v0

    .line 322
    .local v0, "that_present_format":Z
    if-nez v6, :cond_d

    if-eqz v0, :cond_10

    .line 323
    :cond_d
    if-eqz v6, :cond_e

    if-nez v0, :cond_f

    .line 324
    :cond_e
    const/4 v12, 0x0

    goto :goto_0

    .line 325
    :cond_f
    iget-object v12, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    iget-object v13, p1, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    invoke-virtual {v12, v13}, Lcom/evernote/edam/type/QueryFormat;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 326
    const/4 v12, 0x0

    goto :goto_0

    .line 329
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v11

    .line 330
    .local v11, "this_present_updateSequenceNum":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v5

    .line 331
    .local v5, "that_present_updateSequenceNum":Z
    if-nez v11, :cond_11

    if-eqz v5, :cond_14

    .line 332
    :cond_11
    if-eqz v11, :cond_12

    if-nez v5, :cond_13

    .line 333
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 334
    :cond_13
    iget v12, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    iget v13, p1, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    if-eq v12, v13, :cond_14

    .line 335
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 338
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v10

    .line 339
    .local v10, "this_present_scope":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v4

    .line 340
    .local v4, "that_present_scope":Z
    if-nez v10, :cond_15

    if-eqz v4, :cond_18

    .line 341
    :cond_15
    if-eqz v10, :cond_16

    if-nez v4, :cond_17

    .line 342
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 343
    :cond_17
    iget-object v12, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    iget-object v13, p1, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {v12, v13}, Lcom/evernote/edam/type/SavedSearchScope;->equals(Lcom/evernote/edam/type/SavedSearchScope;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 344
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 347
    :cond_18
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 282
    if-nez p1, :cond_1

    .line 286
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 284
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/SavedSearch;

    if-eqz v1, :cond_0

    .line 285
    check-cast p1, Lcom/evernote/edam/type/SavedSearch;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearch;->equals(Lcom/evernote/edam/type/SavedSearch;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFormat()Lcom/evernote/edam/type/QueryFormat;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lcom/evernote/edam/type/SavedSearchScope;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    return-object v0
.end method

.method public getUpdateSequenceNum()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public isSetFormat()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetName()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetQuery()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetScope()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

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
    .line 250
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

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

    const/16 v3, 0xb

    .line 422
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 425
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 426
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 480
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->validate()V

    .line 481
    return-void

    .line 429
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 475
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 477
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 431
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 432
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    goto :goto_1

    .line 434
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 438
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 439
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    goto :goto_1

    .line 441
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 445
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 446
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    goto :goto_1

    .line 448
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 452
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 453
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/QueryFormat;->findByValue(I)Lcom/evernote/edam/type/QueryFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    goto :goto_1

    .line 455
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 459
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_5

    .line 460
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    .line 461
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/SavedSearch;->setUpdateSequenceNumIsSet(Z)V

    goto :goto_1

    .line 463
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 467
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 468
    new-instance v1, Lcom/evernote/edam/type/SavedSearchScope;

    invoke-direct {v1}, Lcom/evernote/edam/type/SavedSearchScope;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 469
    iget-object v1, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SavedSearchScope;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 471
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 429
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

.method public setFormat(Lcom/evernote/edam/type/QueryFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/evernote/edam/type/QueryFormat;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    .line 218
    return-void
.end method

.method public setFormatIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    .line 233
    :cond_0
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    .line 156
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    .line 179
    :cond_0
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setQueryIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    .line 202
    :cond_0
    return-void
.end method

.method public setScope(Lcom/evernote/edam/type/SavedSearchScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/evernote/edam/type/SavedSearchScope;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 263
    return-void
.end method

.method public setScopeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 278
    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 1
    .param p1, "updateSequenceNum"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearch;->setUpdateSequenceNumIsSet(Z)V

    .line 242
    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SavedSearch("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 536
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const-string v2, "guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 539
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :goto_0
    const/4 v0, 0x0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_1
    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 549
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :goto_1
    const/4 v0, 0x0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    const-string v2, "query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 559
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_2
    const/4 v0, 0x0

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 566
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_5
    const-string v2, "format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    if-nez v2, :cond_e

    .line 569
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :goto_3
    const/4 v0, 0x0

    .line 575
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 576
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_7
    const-string v2, "updateSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget v2, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const/4 v0, 0x0

    .line 581
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 582
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_9
    const-string v2, "scope:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    if-nez v2, :cond_f

    .line 585
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_4
    const/4 v0, 0x0

    .line 591
    :cond_a
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 541
    :cond_b
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 551
    :cond_c
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 561
    :cond_d
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 571
    :cond_e
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 587
    :cond_f
    iget-object v2, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public unsetFormat()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    .line 222
    return-void
.end method

.method public unsetGuid()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public unsetName()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public unsetQuery()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public unsetScope()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    .line 267
    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 246
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
    .line 597
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
    .line 484
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->validate()V

    .line 486
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 487
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 490
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 497
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->QUERY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 504
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->FORMAT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 511
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->format:Lcom/evernote/edam/type/QueryFormat;

    invoke-virtual {v0}, Lcom/evernote/edam/type/QueryFormat;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 512
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 517
    iget v0, p0, Lcom/evernote/edam/type/SavedSearch;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 518
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 520
    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    if-eqz v0, :cond_5

    .line 521
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearch;->isSetScope()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    sget-object v0, Lcom/evernote/edam/type/SavedSearch;->SCOPE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 523
    iget-object v0, p0, Lcom/evernote/edam/type/SavedSearch;->scope:Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 524
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 527
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 528
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 529
    return-void
.end method
