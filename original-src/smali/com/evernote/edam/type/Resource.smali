.class public Lcom/evernote/edam/type/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

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
        "Lcom/evernote/edam/type/Resource;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ACTIVE_ISSET_ID:I = 0x3

.field private static final __DURATION_ISSET_ID:I = 0x2

.field private static final __HEIGHT_ISSET_ID:I = 0x1

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I = 0x4

.field private static final __WIDTH_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private active:Z

.field private alternateData:Lcom/evernote/edam/type/Data;

.field private attributes:Lcom/evernote/edam/type/ResourceAttributes;

.field private data:Lcom/evernote/edam/type/Data;

.field private duration:S

.field private guid:Ljava/lang/String;

.field private height:S

.field private mime:Ljava/lang/String;

.field private noteGuid:Ljava/lang/String;

.field private recognition:Lcom/evernote/edam/type/Data;

.field private updateSequenceNum:I

.field private width:S


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/16 v3, 0xc

    .line 99
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Resource"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 101
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 102
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    invoke-direct {v0, v1, v5, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 103
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "data"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 104
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "mime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 105
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "width"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 106
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "height"

    invoke-direct {v0, v1, v4, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 107
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "duration"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 108
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "active"

    invoke-direct {v0, v1, v6, v7}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 109
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recognition"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 110
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "attributes"

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 111
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v7, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 112
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "alternateData"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Resource;->ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Resource;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/Resource;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    .line 143
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p1, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 156
    :cond_3
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->width:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    .line 157
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->height:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    .line 158
    iget-short v0, p1, Lcom/evernote/edam/type/Resource;->duration:S

    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    .line 159
    iget-boolean v0, p1, Lcom/evernote/edam/type/Resource;->active:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    .line 160
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 163
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    new-instance v0, Lcom/evernote/edam/type/ResourceAttributes;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/ResourceAttributes;-><init>(Lcom/evernote/edam/type/ResourceAttributes;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 166
    :cond_5
    iget v0, p1, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    .line 167
    invoke-virtual {p1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Lcom/evernote/edam/type/Data;

    iget-object v1, p1, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Data;-><init>(Lcom/evernote/edam/type/Data;)V

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 170
    :cond_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 177
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 180
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    .line 182
    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    .line 183
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    .line 184
    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    .line 185
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    .line 186
    iput-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    .line 187
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    .line 188
    iput-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    .line 189
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 190
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 191
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    .line 192
    iput v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    .line 193
    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 194
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/Resource;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/Resource;

    .prologue
    .line 597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
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

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    const/4 v0, 0x0

    .line 602
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 604
    .local v1, "typedOther":Lcom/evernote/edam/type/Resource;
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 605
    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 609
    if-nez v0, :cond_0

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 614
    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 623
    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 627
    if-nez v0, :cond_0

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 632
    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 636
    if-nez v0, :cond_0

    .line 640
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 641
    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->width:S

    iget-short v3, v1, Lcom/evernote/edam/type/Resource;->width:S

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 645
    if-nez v0, :cond_0

    .line 649
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 650
    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->height:S

    iget-short v3, v1, Lcom/evernote/edam/type/Resource;->height:S

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 654
    if-nez v0, :cond_0

    .line 658
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 659
    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->duration:S

    iget-short v3, v1, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 663
    if-nez v0, :cond_0

    .line 667
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 668
    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/evernote/edam/type/Resource;->active:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 672
    if-nez v0, :cond_0

    .line 676
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 677
    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 681
    if-nez v0, :cond_0

    .line 685
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 686
    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 690
    if-nez v0, :cond_0

    .line 694
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 695
    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    iget v3, v1, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 699
    if-nez v0, :cond_0

    .line 703
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 704
    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    iget-object v3, v1, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 708
    if-nez v0, :cond_0

    .line 712
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/evernote/edam/type/Resource;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->compareTo(Lcom/evernote/edam/type/Resource;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/Resource;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/evernote/edam/type/Resource;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->deepCopy()Lcom/evernote/edam/type/Resource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/Resource;)Z
    .locals 28
    .param p1, "that"    # Lcom/evernote/edam/type/Resource;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    const/16 v26, 0x0

    .line 588
    :goto_0
    return v26

    .line 480
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v19

    .line 481
    .local v19, "this_present_guid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v7

    .line 482
    .local v7, "that_present_guid":Z
    if-nez v19, :cond_1

    if-eqz v7, :cond_4

    .line 483
    :cond_1
    if-eqz v19, :cond_2

    if-nez v7, :cond_3

    .line 484
    :cond_2
    const/16 v26, 0x0

    goto :goto_0

    .line 485
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 486
    const/16 v26, 0x0

    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v22

    .line 490
    .local v22, "this_present_noteGuid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v10

    .line 491
    .local v10, "that_present_noteGuid":Z
    if-nez v22, :cond_5

    if-eqz v10, :cond_8

    .line 492
    :cond_5
    if-eqz v22, :cond_6

    if-nez v10, :cond_7

    .line 493
    :cond_6
    const/16 v26, 0x0

    goto :goto_0

    .line 494
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 495
    const/16 v26, 0x0

    goto :goto_0

    .line 498
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v17

    .line 499
    .local v17, "this_present_data":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v5

    .line 500
    .local v5, "that_present_data":Z
    if-nez v17, :cond_9

    if-eqz v5, :cond_c

    .line 501
    :cond_9
    if-eqz v17, :cond_a

    if-nez v5, :cond_b

    .line 502
    :cond_a
    const/16 v26, 0x0

    goto :goto_0

    .line 503
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 504
    const/16 v26, 0x0

    goto :goto_0

    .line 507
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v21

    .line 508
    .local v21, "this_present_mime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v9

    .line 509
    .local v9, "that_present_mime":Z
    if-nez v21, :cond_d

    if-eqz v9, :cond_10

    .line 510
    :cond_d
    if-eqz v21, :cond_e

    if-nez v9, :cond_f

    .line 511
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 513
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 516
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v25

    .line 517
    .local v25, "this_present_width":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v13

    .line 518
    .local v13, "that_present_width":Z
    if-nez v25, :cond_11

    if-eqz v13, :cond_14

    .line 519
    :cond_11
    if-eqz v25, :cond_12

    if-nez v13, :cond_13

    .line 520
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 521
    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->width:S

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->width:S

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    .line 522
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 525
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v20

    .line 526
    .local v20, "this_present_height":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v8

    .line 527
    .local v8, "that_present_height":Z
    if-nez v20, :cond_15

    if-eqz v8, :cond_18

    .line 528
    :cond_15
    if-eqz v20, :cond_16

    if-nez v8, :cond_17

    .line 529
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 530
    :cond_17
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->height:S

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->height:S

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 531
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 534
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v18

    .line 535
    .local v18, "this_present_duration":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v6

    .line 536
    .local v6, "that_present_duration":Z
    if-nez v18, :cond_19

    if-eqz v6, :cond_1c

    .line 537
    :cond_19
    if-eqz v18, :cond_1a

    if-nez v6, :cond_1b

    .line 538
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 539
    :cond_1b
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->duration:S

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/evernote/edam/type/Resource;->duration:S

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 540
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 543
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v14

    .line 544
    .local v14, "this_present_active":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v2

    .line 545
    .local v2, "that_present_active":Z
    if-nez v14, :cond_1d

    if-eqz v2, :cond_20

    .line 546
    :cond_1d
    if-eqz v14, :cond_1e

    if-nez v2, :cond_1f

    .line 547
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 548
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/Resource;->active:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/Resource;->active:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    .line 549
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 552
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v23

    .line 553
    .local v23, "this_present_recognition":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v11

    .line 554
    .local v11, "that_present_recognition":Z
    if-nez v23, :cond_21

    if-eqz v11, :cond_24

    .line 555
    :cond_21
    if-eqz v23, :cond_22

    if-nez v11, :cond_23

    .line 556
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 557
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result v26

    if-nez v26, :cond_24

    .line 558
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 561
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v16

    .line 562
    .local v16, "this_present_attributes":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v4

    .line 563
    .local v4, "that_present_attributes":Z
    if-nez v16, :cond_25

    if-eqz v4, :cond_28

    .line 564
    :cond_25
    if-eqz v16, :cond_26

    if-nez v4, :cond_27

    .line 565
    :cond_26
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 566
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/evernote/edam/type/ResourceAttributes;->equals(Lcom/evernote/edam/type/ResourceAttributes;)Z

    move-result v26

    if-nez v26, :cond_28

    .line 567
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 570
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v24

    .line 571
    .local v24, "this_present_updateSequenceNum":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v12

    .line 572
    .local v12, "that_present_updateSequenceNum":Z
    if-nez v24, :cond_29

    if-eqz v12, :cond_2c

    .line 573
    :cond_29
    if-eqz v24, :cond_2a

    if-nez v12, :cond_2b

    .line 574
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 575
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c

    .line 576
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 579
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v15

    .line 580
    .local v15, "this_present_alternateData":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v3

    .line 581
    .local v3, "that_present_alternateData":Z
    if-nez v15, :cond_2d

    if-eqz v3, :cond_30

    .line 582
    :cond_2d
    if-eqz v15, :cond_2e

    if-nez v3, :cond_2f

    .line 583
    :cond_2e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 584
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/evernote/edam/type/Data;->equals(Lcom/evernote/edam/type/Data;)Z

    move-result v26

    if-nez v26, :cond_30

    .line 585
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 588
    :cond_30
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 469
    if-nez p1, :cond_1

    .line 473
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 471
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/Resource;

    if-eqz v1, :cond_0

    .line 472
    check-cast p1, Lcom/evernote/edam/type/Resource;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->equals(Lcom/evernote/edam/type/Resource;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlternateData()Lcom/evernote/edam/type/Data;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    return-object v0
.end method

.method public getAttributes()Lcom/evernote/edam/type/ResourceAttributes;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    return-object v0
.end method

.method public getData()Lcom/evernote/edam/type/Data;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    return-object v0
.end method

.method public getDuration()S
    .locals 1

    .prologue
    .line 333
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()S
    .locals 1

    .prologue
    .line 311
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognition()Lcom/evernote/edam/type/Data;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    return-object v0
.end method

.method public getUpdateSequenceNum()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    return v0
.end method

.method public getWidth()S
    .locals 1

    .prologue
    .line 289
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    return v0
.end method

.method public isSetActive()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetAlternateData()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAttributes()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetData()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDuration()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetHeight()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetMime()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

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
    .line 233
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecognition()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

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
    .line 437
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWidth()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 717
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 720
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 721
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 823
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 824
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->validate()V

    .line 825
    return-void

    .line 724
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 819
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 821
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 726
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_1

    .line 727
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    goto :goto_1

    .line 729
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 733
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_2

    .line 734
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    goto :goto_1

    .line 736
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 740
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 741
    new-instance v1, Lcom/evernote/edam/type/Data;

    invoke-direct {v1}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 742
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 744
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 748
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_4

    .line 749
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    goto :goto_1

    .line 751
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 755
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_5

    .line 756
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v1

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->width:S

    .line 757
    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    goto :goto_1

    .line 759
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 763
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_6

    .line 764
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v1

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->height:S

    .line 765
    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    goto :goto_1

    .line 767
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 771
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_7

    .line 772
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v1

    iput-short v1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    .line 773
    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    goto/16 :goto_1

    .line 775
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 779
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 780
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    .line 781
    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    goto/16 :goto_1

    .line 783
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 787
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 788
    new-instance v1, Lcom/evernote/edam/type/Data;

    invoke-direct {v1}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 789
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 791
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 795
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_a

    .line 796
    new-instance v1, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v1}, Lcom/evernote/edam/type/ResourceAttributes;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 797
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/ResourceAttributes;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 799
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 803
    :pswitch_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 804
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    .line 805
    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    goto/16 :goto_1

    .line 807
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 811
    :pswitch_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_c

    .line 812
    new-instance v1, Lcom/evernote/edam/type/Data;

    invoke-direct {v1}, Lcom/evernote/edam/type/Data;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 813
    iget-object v1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Data;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 815
    :cond_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/evernote/edam/type/Resource;->active:Z

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setActiveIsSet(Z)V

    .line 361
    return-void
.end method

.method public setActiveIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 374
    return-void
.end method

.method public setAlternateData(Lcom/evernote/edam/type/Data;)V
    .locals 0
    .param p1, "alternateData"    # Lcom/evernote/edam/type/Data;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 450
    return-void
.end method

.method public setAlternateDataIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 465
    :cond_0
    return-void
.end method

.method public setAttributes(Lcom/evernote/edam/type/ResourceAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lcom/evernote/edam/type/ResourceAttributes;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 405
    return-void
.end method

.method public setAttributesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 420
    :cond_0
    return-void
.end method

.method public setData(Lcom/evernote/edam/type/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/evernote/edam/type/Data;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 248
    return-void
.end method

.method public setDataIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 263
    :cond_0
    return-void
.end method

.method public setDuration(S)V
    .locals 1
    .param p1, "duration"    # S

    .prologue
    .line 337
    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->duration:S

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setDurationIsSet(Z)V

    .line 339
    return-void
.end method

.method public setDurationIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 352
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 217
    :cond_0
    return-void
.end method

.method public setHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .prologue
    .line 315
    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->height:S

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setHeightIsSet(Z)V

    .line 317
    return-void
.end method

.method public setHeightIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 330
    return-void
.end method

.method public setMime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setMimeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 286
    :cond_0
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteGuid"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setNoteGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 240
    :cond_0
    return-void
.end method

.method public setRecognition(Lcom/evernote/edam/type/Data;)V
    .locals 0
    .param p1, "recognition"    # Lcom/evernote/edam/type/Data;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 382
    return-void
.end method

.method public setRecognitionIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 397
    :cond_0
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 1
    .param p1, "updateSequenceNum"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setUpdateSequenceNumIsSet(Z)V

    .line 429
    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 442
    return-void
.end method

.method public setWidth(S)V
    .locals 1
    .param p1, "width"    # S

    .prologue
    .line 293
    iput-short p1, p0, Lcom/evernote/edam/type/Resource;->width:S

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Resource;->setWidthIsSet(Z)V

    .line 295
    return-void
.end method

.method public setWidthIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 308
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 914
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    const-string v2, "guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 917
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    :goto_0
    const/4 v0, 0x0

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 924
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_1
    const-string v2, "noteGuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 927
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :goto_1
    const/4 v0, 0x0

    .line 933
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 934
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_3
    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-nez v2, :cond_19

    .line 937
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :goto_2
    const/4 v0, 0x0

    .line 943
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 944
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_5
    const-string v2, "mime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 947
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :goto_3
    const/4 v0, 0x0

    .line 953
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 954
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_7
    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    const/4 v0, 0x0

    .line 959
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 960
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_9
    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 963
    const/4 v0, 0x0

    .line 965
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 966
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_b
    const-string v2, "duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    iget-short v2, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    const/4 v0, 0x0

    .line 971
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 972
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_d
    const-string v2, "active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-boolean v2, p0, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 975
    const/4 v0, 0x0

    .line 977
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 978
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    :cond_f
    const-string v2, "recognition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    if-nez v2, :cond_1b

    .line 981
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :goto_4
    const/4 v0, 0x0

    .line 987
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 988
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_11
    const-string v2, "attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-nez v2, :cond_1c

    .line 991
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :goto_5
    const/4 v0, 0x0

    .line 997
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 998
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_13
    const-string v2, "updateSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget v2, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1004
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_15
    const-string v2, "alternateData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-nez v2, :cond_1d

    .line 1007
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :goto_6
    const/4 v0, 0x0

    .line 1013
    :cond_16
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 919
    :cond_17
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 929
    :cond_18
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 939
    :cond_19
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 949
    :cond_1a
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 983
    :cond_1b
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 993
    :cond_1c
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1009
    :cond_1d
    iget-object v2, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public unsetActive()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 365
    return-void
.end method

.method public unsetAlternateData()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    .line 454
    return-void
.end method

.method public unsetAttributes()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    .line 409
    return-void
.end method

.method public unsetData()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    .line 252
    return-void
.end method

.method public unsetDuration()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 343
    return-void
.end method

.method public unsetGuid()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public unsetHeight()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 321
    return-void
.end method

.method public unsetMime()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public unsetNoteGuid()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public unsetRecognition()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    .line 386
    return-void
.end method

.method public unsetUpdateSequenceNum()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 433
    return-void
.end method

.method public unsetWidth()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 299
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
    .line 1019
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
    .line 828
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->validate()V

    .line 830
    sget-object v0, Lcom/evernote/edam/type/Resource;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 831
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Lcom/evernote/edam/type/Resource;->GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 834
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    sget-object v0, Lcom/evernote/edam/type/Resource;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 841
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_2

    .line 846
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    sget-object v0, Lcom/evernote/edam/type/Resource;->DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 848
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->data:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 849
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetMime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    sget-object v0, Lcom/evernote/edam/type/Resource;->MIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 855
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->mime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 859
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    sget-object v0, Lcom/evernote/edam/type/Resource;->WIDTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 861
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->width:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    .line 862
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 864
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetHeight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 865
    sget-object v0, Lcom/evernote/edam/type/Resource;->HEIGHT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 866
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->height:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    .line 867
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 869
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 870
    sget-object v0, Lcom/evernote/edam/type/Resource;->DURATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 871
    iget-short v0, p0, Lcom/evernote/edam/type/Resource;->duration:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    .line 872
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 874
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 875
    sget-object v0, Lcom/evernote/edam/type/Resource;->ACTIVE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 876
    iget-boolean v0, p0, Lcom/evernote/edam/type/Resource;->active:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 877
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 879
    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_8

    .line 880
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetRecognition()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 881
    sget-object v0, Lcom/evernote/edam/type/Resource;->RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 882
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->recognition:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 883
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 886
    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    if-eqz v0, :cond_9

    .line 887
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAttributes()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 888
    sget-object v0, Lcom/evernote/edam/type/Resource;->ATTRIBUTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 889
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->attributes:Lcom/evernote/edam/type/ResourceAttributes;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/ResourceAttributes;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 890
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 893
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetUpdateSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 894
    sget-object v0, Lcom/evernote/edam/type/Resource;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 895
    iget v0, p0, Lcom/evernote/edam/type/Resource;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 896
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 898
    :cond_a
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    if-eqz v0, :cond_b

    .line 899
    invoke-virtual {p0}, Lcom/evernote/edam/type/Resource;->isSetAlternateData()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 900
    sget-object v0, Lcom/evernote/edam/type/Resource;->ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 901
    iget-object v0, p0, Lcom/evernote/edam/type/Resource;->alternateData:Lcom/evernote/edam/type/Data;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Data;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 902
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 905
    :cond_b
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 906
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 907
    return-void
.end method
