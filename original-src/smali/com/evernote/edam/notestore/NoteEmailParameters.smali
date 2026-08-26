.class public Lcom/evernote/edam/notestore/NoteEmailParameters;
.super Ljava/lang/Object;
.source "NoteEmailParameters.java"

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
        "Lcom/evernote/edam/notestore/NoteEmailParameters;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CC_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUBJECT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TO_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private ccAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guid:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private note:Lcom/evernote/edam/type/Note;

.field private subject:Ljava/lang/String;

.field private toAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/16 v4, 0xb

    .line 67
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteEmailParameters"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 69
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 70
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "note"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 71
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "toAddresses"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->TO_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 72
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "ccAddresses"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->CC_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 73
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "subject"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->SUBJECT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 74
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "message"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteEmailParameters;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteEmailParameters;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    new-instance v4, Lcom/evernote/edam/type/Note;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-direct {v4, v5}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "__this__toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "other_element":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v3    # "other_element":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 106
    .end local v1    # "__this__toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "__this__ccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .restart local v3    # "other_element":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v3    # "other_element":Ljava/lang/String;
    :cond_4
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 113
    .end local v0    # "__this__ccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    .line 116
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 117
    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    .line 119
    :cond_7
    return-void
.end method


# virtual methods
.method public addToCcAddresses(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public addToToAddresses(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 128
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 129
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteEmailParameters;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteEmailParameters;

    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
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

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    const/4 v0, 0x0

    .line 383
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 385
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteEmailParameters;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 386
    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 390
    if-nez v0, :cond_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 395
    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 399
    if-nez v0, :cond_0

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 404
    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 408
    if-nez v0, :cond_0

    .line 412
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 413
    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 417
    if-nez v0, :cond_0

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 422
    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 426
    if-nez v0, :cond_0

    .line 430
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 431
    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 435
    if-nez v0, :cond_0

    .line 439
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lcom/evernote/edam/notestore/NoteEmailParameters;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->compareTo(Lcom/evernote/edam/notestore/NoteEmailParameters;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteEmailParameters;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/evernote/edam/notestore/NoteEmailParameters;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;-><init>(Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->deepCopy()Lcom/evernote/edam/notestore/NoteEmailParameters;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteEmailParameters;)Z
    .locals 14
    .param p1, "that"    # Lcom/evernote/edam/notestore/NoteEmailParameters;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    const/4 v12, 0x0

    .line 369
    :goto_0
    return v12

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v7

    .line 316
    .local v7, "this_present_guid":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v1

    .line 317
    .local v1, "that_present_guid":Z
    if-nez v7, :cond_1

    if-eqz v1, :cond_4

    .line 318
    :cond_1
    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    .line 319
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 320
    :cond_3
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 321
    const/4 v12, 0x0

    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v9

    .line 325
    .local v9, "this_present_note":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v3

    .line 326
    .local v3, "that_present_note":Z
    if-nez v9, :cond_5

    if-eqz v3, :cond_8

    .line 327
    :cond_5
    if-eqz v9, :cond_6

    if-nez v3, :cond_7

    .line 328
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 329
    :cond_7
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v12, v13}, Lcom/evernote/edam/type/Note;->equals(Lcom/evernote/edam/type/Note;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 330
    const/4 v12, 0x0

    goto :goto_0

    .line 333
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v11

    .line 334
    .local v11, "this_present_toAddresses":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v5

    .line 335
    .local v5, "that_present_toAddresses":Z
    if-nez v11, :cond_9

    if-eqz v5, :cond_c

    .line 336
    :cond_9
    if-eqz v11, :cond_a

    if-nez v5, :cond_b

    .line 337
    :cond_a
    const/4 v12, 0x0

    goto :goto_0

    .line 338
    :cond_b
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 339
    const/4 v12, 0x0

    goto :goto_0

    .line 342
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v6

    .line 343
    .local v6, "this_present_ccAddresses":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v0

    .line 344
    .local v0, "that_present_ccAddresses":Z
    if-nez v6, :cond_d

    if-eqz v0, :cond_10

    .line 345
    :cond_d
    if-eqz v6, :cond_e

    if-nez v0, :cond_f

    .line 346
    :cond_e
    const/4 v12, 0x0

    goto :goto_0

    .line 347
    :cond_f
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 348
    const/4 v12, 0x0

    goto :goto_0

    .line 351
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v10

    .line 352
    .local v10, "this_present_subject":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v4

    .line 353
    .local v4, "that_present_subject":Z
    if-nez v10, :cond_11

    if-eqz v4, :cond_14

    .line 354
    :cond_11
    if-eqz v10, :cond_12

    if-nez v4, :cond_13

    .line 355
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 356
    :cond_13
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 357
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 360
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v8

    .line 361
    .local v8, "this_present_message":Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v2

    .line 362
    .local v2, "that_present_message":Z
    if-nez v8, :cond_15

    if-eqz v2, :cond_18

    .line 363
    :cond_15
    if-eqz v8, :cond_16

    if-nez v2, :cond_17

    .line 364
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 365
    :cond_17
    iget-object v12, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    iget-object v13, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 366
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 369
    :cond_18
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 304
    if-nez p1, :cond_1

    .line 308
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 306
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteEmailParameters;

    if-eqz v1, :cond_0

    .line 307
    check-cast p1, Lcom/evernote/edam/notestore/NoteEmailParameters;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteEmailParameters;->equals(Lcom/evernote/edam/notestore/NoteEmailParameters;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCcAddresses()Ljava/util/List;
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
    .line 234
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getCcAddressesIterator()Ljava/util/Iterator;
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
    .line 223
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getCcAddressesSize()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Lcom/evernote/edam/type/Note;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddresses()Ljava/util/List;
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
    .line 196
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getToAddressesIterator()Ljava/util/Iterator;
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
    .line 185
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getToAddressesSize()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isSetCcAddresses()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

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
    .line 148
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMessage()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNote()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSubject()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetToAddresses()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 11
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xb

    .line 444
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 447
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v6

    .line 448
    .local v6, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v7, :cond_0

    .line 520
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 521
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->validate()V

    .line 522
    return-void

    .line 451
    :cond_0
    iget-short v7, v6, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v7, :pswitch_data_0

    .line 516
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 518
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 453
    :pswitch_0
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v7, v9, :cond_1

    .line 454
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    goto :goto_1

    .line 456
    :cond_1
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 460
    :pswitch_1
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    .line 461
    new-instance v7, Lcom/evernote/edam/type/Note;

    invoke-direct {v7}, Lcom/evernote/edam/type/Note;-><init>()V

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 462
    iget-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v7, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 464
    :cond_2
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 468
    :pswitch_2
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v7, v10, :cond_4

    .line 470
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v4

    .line 471
    .local v4, "_list86":Lcom/evernote/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v4, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 472
    const/4 v2, 0x0

    .local v2, "_i87":I
    :goto_2
    iget v7, v4, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v7, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "_elem88":Ljava/lang/String;
    iget-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    .end local v0    # "_elem88":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 481
    .end local v2    # "_i87":I
    .end local v4    # "_list86":Lcom/evernote/thrift/protocol/TList;
    :cond_4
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 485
    :pswitch_3
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v7, v10, :cond_6

    .line 487
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v5

    .line 488
    .local v5, "_list89":Lcom/evernote/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v5, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 489
    const/4 v3, 0x0

    .local v3, "_i90":I
    :goto_3
    iget v7, v5, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v7, :cond_5

    .line 492
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "_elem91":Ljava/lang/String;
    iget-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 495
    .end local v1    # "_elem91":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 498
    .end local v3    # "_i90":I
    .end local v5    # "_list89":Lcom/evernote/thrift/protocol/TList;
    :cond_6
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 502
    :pswitch_4
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v7, v9, :cond_7

    .line 503
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    goto/16 :goto_1

    .line 505
    :cond_7
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 509
    :pswitch_5
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v7, v9, :cond_8

    .line 510
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    goto/16 :goto_1

    .line 512
    :cond_8
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 451
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

.method public setCcAddresses(Ljava/util/List;)V
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
    .line 238
    .local p1, "ccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 239
    return-void
.end method

.method public setCcAddressesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 254
    :cond_0
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setMessageIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    .line 300
    :cond_0
    return-void
.end method

.method public setNote(Lcom/evernote/edam/type/Note;)V
    .locals 0
    .param p1, "note"    # Lcom/evernote/edam/type/Note;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 163
    return-void
.end method

.method public setNoteIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 178
    :cond_0
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setSubjectIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    .line 277
    :cond_0
    return-void
.end method

.method public setToAddresses(Ljava/util/List;)V
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
    .line 200
    .local p1, "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 201
    return-void
.end method

.method public setToAddressesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 216
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoteEmailParameters("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 593
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    const-string v2, "guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 596
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :goto_0
    const/4 v0, 0x0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 603
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_1
    const-string v2, "note:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    if-nez v2, :cond_c

    .line 606
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :goto_1
    const/4 v0, 0x0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 613
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_3
    const-string v2, "toAddresses:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-nez v2, :cond_d

    .line 616
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_2
    const/4 v0, 0x0

    .line 622
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 623
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_5
    const-string v2, "ccAddresses:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    if-nez v2, :cond_e

    .line 626
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :goto_3
    const/4 v0, 0x0

    .line 632
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 633
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_7
    const-string v2, "subject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 636
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_4
    const/4 v0, 0x0

    .line 642
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 643
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_9
    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 646
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_5
    const/4 v0, 0x0

    .line 652
    :cond_a
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 598
    :cond_b
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 608
    :cond_c
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 618
    :cond_d
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 628
    :cond_e
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 638
    :cond_f
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 648
    :cond_10
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public unsetCcAddresses()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    .line 243
    return-void
.end method

.method public unsetGuid()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public unsetMessage()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public unsetNote()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    .line 167
    return-void
.end method

.method public unsetSubject()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public unsetToAddresses()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    .line 205
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
    .line 658
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    .line 525
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->validate()V

    .line 527
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 528
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetGuid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 531
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->guid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    if-eqz v3, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetNote()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 538
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v3, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 539
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 543
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetToAddresses()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 544
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->TO_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 546
    new-instance v3, Lcom/evernote/thrift/protocol/TList;

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 547
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->toAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    .local v0, "_iter92":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v0    # "_iter92":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 553
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 556
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 557
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetCcAddresses()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 558
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->CC_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 560
    new-instance v3, Lcom/evernote/thrift/protocol/TList;

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 561
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->ccAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .local v1, "_iter93":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 565
    .end local v1    # "_iter93":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 567
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 570
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetSubject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 572
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->SUBJECT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 573
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->subject:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 577
    :cond_6
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 578
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteEmailParameters;->isSetMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 579
    sget-object v3, Lcom/evernote/edam/notestore/NoteEmailParameters;->MESSAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 580
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteEmailParameters;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 584
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 585
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 586
    return-void
.end method
