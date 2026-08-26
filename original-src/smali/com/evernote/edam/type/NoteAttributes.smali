.class public Lcom/evernote/edam/type/NoteAttributes;
.super Ljava/lang/Object;
.source "NoteAttributes.java"

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
        "Lcom/evernote/edam/type/NoteAttributes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ALTITUDE_ISSET_ID:I = 0x3

.field private static final __CREATORID_ISSET_ID:I = 0x8

.field private static final __LASTEDITORID_ISSET_ID:I = 0x9

.field private static final __LATITUDE_ISSET_ID:I = 0x1

.field private static final __LONGITUDE_ISSET_ID:I = 0x2

.field private static final __REMINDERDONETIME_ISSET_ID:I = 0x6

.field private static final __REMINDERORDER_ISSET_ID:I = 0x5

.field private static final __REMINDERTIME_ISSET_ID:I = 0x7

.field private static final __SHAREDATE_ISSET_ID:I = 0x4

.field private static final __SUBJECTDATE_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private altitude:D

.field private applicationData:Lcom/evernote/edam/type/LazyMap;

.field private author:Ljava/lang/String;

.field private classifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentClass:Ljava/lang/String;

.field private creatorId:I

.field private lastEditedBy:Ljava/lang/String;

.field private lastEditorId:I

.field private latitude:D

.field private longitude:D

.field private placeName:Ljava/lang/String;

.field private reminderDoneTime:J

.field private reminderOrder:J

.field private reminderTime:J

.field private shareDate:J

.field private source:Ljava/lang/String;

.field private sourceApplication:Ljava/lang/String;

.field private sourceURL:Ljava/lang/String;

.field private subjectDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/16 v4, 0xa

    const/16 v3, 0xb

    .line 191
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "NoteAttributes"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 193
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "subjectDate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 194
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 195
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 196
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "altitude"

    invoke-direct {v0, v1, v5, v7}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 197
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "author"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 198
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "source"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 199
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sourceURL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 200
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sourceApplication"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 201
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shareDate"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 202
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderOrder"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 203
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderDoneTime"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 204
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderTime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 205
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "placeName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 206
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "contentClass"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 207
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "applicationData"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 208
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastEditedBy"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 209
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "classifications"

    const/16 v2, 0xd

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 210
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "creatorId"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 211
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastEditorId"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    .line 248
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/NoteAttributes;)V
    .locals 11
    .param p1, "other"    # Lcom/evernote/edam/type/NoteAttributes;

    .prologue
    const/4 v10, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/16 v7, 0xa

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    .line 254
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    iget-object v8, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    iget-object v9, p1, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    array-length v9, v9

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    .line 256
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    .line 257
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    .line 258
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    .line 259
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 269
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 271
    :cond_3
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    .line 272
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    .line 273
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    .line 274
    iget-wide v8, p1, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iput-wide v8, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    .line 275
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 276
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 278
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 279
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 281
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 282
    new-instance v7, Lcom/evernote/edam/type/LazyMap;

    iget-object v8, p1, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v7, v8}, Lcom/evernote/edam/type/LazyMap;-><init>(Lcom/evernote/edam/type/LazyMap;)V

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 284
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 285
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iput-object v7, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 287
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v0, "__this__classifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 291
    .local v4, "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 292
    .local v5, "other_element_key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .local v6, "other_element_value":Ljava/lang/String;
    move-object v1, v5

    .line 296
    .local v1, "__this__classifications_copy_key":Ljava/lang/String;
    move-object v2, v6

    .line 298
    .local v2, "__this__classifications_copy_value":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v1    # "__this__classifications_copy_key":Ljava/lang/String;
    .end local v2    # "__this__classifications_copy_value":Ljava/lang/String;
    .end local v4    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "other_element_key":Ljava/lang/String;
    .end local v6    # "other_element_value":Ljava/lang/String;
    :cond_8
    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 302
    .end local v0    # "__this__classifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    iget v7, p1, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    iput v7, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    .line 303
    iget v7, p1, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    iput v7, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    .line 304
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    .line 312
    iput-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    .line 313
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    .line 314
    iput-wide v4, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    .line 315
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    .line 316
    iput-wide v4, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    .line 317
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    .line 318
    iput-wide v4, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    .line 319
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 320
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 323
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    .line 324
    iput-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    .line 325
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    .line 326
    iput-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    .line 327
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    .line 328
    iput-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    .line 329
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    .line 330
    iput-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    .line 331
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 332
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 333
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 334
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 335
    iput-object v1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 336
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    .line 337
    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    .line 338
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    .line 339
    iput v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    .line 340
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/NoteAttributes;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/NoteAttributes;

    .prologue
    .line 973
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 974
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

    .line 1151
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    const/4 v0, 0x0

    .line 978
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 980
    .local v1, "typedOther":Lcom/evernote/edam/type/NoteAttributes;
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 981
    if-nez v0, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 985
    if-nez v0, :cond_0

    .line 989
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 990
    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 994
    if-nez v0, :cond_0

    .line 998
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 999
    if-nez v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 1003
    if-nez v0, :cond_0

    .line 1007
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1008
    if-nez v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 1012
    if-nez v0, :cond_0

    .line 1016
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1017
    if-nez v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1021
    if-nez v0, :cond_0

    .line 1025
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1026
    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1030
    if-nez v0, :cond_0

    .line 1034
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1035
    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1039
    if-nez v0, :cond_0

    .line 1043
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1044
    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1048
    if-nez v0, :cond_0

    .line 1052
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1053
    if-nez v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1057
    if-nez v0, :cond_0

    .line 1061
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1062
    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1066
    if-nez v0, :cond_0

    .line 1070
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1071
    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1075
    if-nez v0, :cond_0

    .line 1079
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1080
    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    iget-wide v4, v1, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1084
    if-nez v0, :cond_0

    .line 1088
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1089
    if-nez v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1093
    if-nez v0, :cond_0

    .line 1097
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1098
    if-nez v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1102
    if-nez v0, :cond_0

    .line 1106
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1107
    if-nez v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1111
    if-nez v0, :cond_0

    .line 1115
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1116
    if-nez v0, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1120
    if-nez v0, :cond_0

    .line 1124
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1125
    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    iget-object v3, v1, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1129
    if-nez v0, :cond_0

    .line 1133
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1134
    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    iget v3, v1, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1138
    if-nez v0, :cond_0

    .line 1142
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1143
    if-nez v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    iget v3, v1, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1147
    if-nez v0, :cond_0

    .line 1151
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, Lcom/evernote/edam/type/NoteAttributes;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->compareTo(Lcom/evernote/edam/type/NoteAttributes;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/NoteAttributes;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/evernote/edam/type/NoteAttributes;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/NoteAttributes;-><init>(Lcom/evernote/edam/type/NoteAttributes;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->deepCopy()Lcom/evernote/edam/type/NoteAttributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/NoteAttributes;)Z
    .locals 44
    .param p1, "that"    # Lcom/evernote/edam/type/NoteAttributes;

    .prologue
    .line 790
    if-nez p1, :cond_0

    .line 791
    const/16 v40, 0x0

    .line 964
    :goto_0
    return v40

    .line 793
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v39

    .line 794
    .local v39, "this_present_subjectDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v20

    .line 795
    .local v20, "that_present_subjectDate":Z
    if-nez v39, :cond_1

    if-eqz v20, :cond_4

    .line 796
    :cond_1
    if-eqz v39, :cond_2

    if-nez v20, :cond_3

    .line 797
    :cond_2
    const/16 v40, 0x0

    goto :goto_0

    .line 798
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_4

    .line 799
    const/16 v40, 0x0

    goto :goto_0

    .line 802
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v29

    .line 803
    .local v29, "this_present_latitude":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v10

    .line 804
    .local v10, "that_present_latitude":Z
    if-nez v29, :cond_5

    if-eqz v10, :cond_8

    .line 805
    :cond_5
    if-eqz v29, :cond_6

    if-nez v10, :cond_7

    .line 806
    :cond_6
    const/16 v40, 0x0

    goto :goto_0

    .line 807
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    move-wide/from16 v42, v0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_8

    .line 808
    const/16 v40, 0x0

    goto :goto_0

    .line 811
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v30

    .line 812
    .local v30, "this_present_longitude":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v11

    .line 813
    .local v11, "that_present_longitude":Z
    if-nez v30, :cond_9

    if-eqz v11, :cond_c

    .line 814
    :cond_9
    if-eqz v30, :cond_a

    if-nez v11, :cond_b

    .line 815
    :cond_a
    const/16 v40, 0x0

    goto :goto_0

    .line 816
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    move-wide/from16 v42, v0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_c

    .line 817
    const/16 v40, 0x0

    goto :goto_0

    .line 820
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v21

    .line 821
    .local v21, "this_present_altitude":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    .line 822
    .local v2, "that_present_altitude":Z
    if-nez v21, :cond_d

    if-eqz v2, :cond_10

    .line 823
    :cond_d
    if-eqz v21, :cond_e

    if-nez v2, :cond_f

    .line 824
    :cond_e
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 825
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    move-wide/from16 v42, v0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_10

    .line 826
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 829
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v23

    .line 830
    .local v23, "this_present_author":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v4

    .line 831
    .local v4, "that_present_author":Z
    if-nez v23, :cond_11

    if-eqz v4, :cond_14

    .line 832
    :cond_11
    if-eqz v23, :cond_12

    if-nez v4, :cond_13

    .line 833
    :cond_12
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 834
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_14

    .line 835
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 838
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v36

    .line 839
    .local v36, "this_present_source":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v17

    .line 840
    .local v17, "that_present_source":Z
    if-nez v36, :cond_15

    if-eqz v17, :cond_18

    .line 841
    :cond_15
    if-eqz v36, :cond_16

    if-nez v17, :cond_17

    .line 842
    :cond_16
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 843
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_18

    .line 844
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 847
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v38

    .line 848
    .local v38, "this_present_sourceURL":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v19

    .line 849
    .local v19, "that_present_sourceURL":Z
    if-nez v38, :cond_19

    if-eqz v19, :cond_1c

    .line 850
    :cond_19
    if-eqz v38, :cond_1a

    if-nez v19, :cond_1b

    .line 851
    :cond_1a
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 852
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1c

    .line 853
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 856
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v37

    .line 857
    .local v37, "this_present_sourceApplication":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v18

    .line 858
    .local v18, "that_present_sourceApplication":Z
    if-nez v37, :cond_1d

    if-eqz v18, :cond_20

    .line 859
    :cond_1d
    if-eqz v37, :cond_1e

    if-nez v18, :cond_1f

    .line 860
    :cond_1e
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 861
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_20

    .line 862
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 865
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v35

    .line 866
    .local v35, "this_present_shareDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v16

    .line 867
    .local v16, "that_present_shareDate":Z
    if-nez v35, :cond_21

    if-eqz v16, :cond_24

    .line 868
    :cond_21
    if-eqz v35, :cond_22

    if-nez v16, :cond_23

    .line 869
    :cond_22
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 870
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_24

    .line 871
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 874
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v33

    .line 875
    .local v33, "this_present_reminderOrder":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v14

    .line 876
    .local v14, "that_present_reminderOrder":Z
    if-nez v33, :cond_25

    if-eqz v14, :cond_28

    .line 877
    :cond_25
    if-eqz v33, :cond_26

    if-nez v14, :cond_27

    .line 878
    :cond_26
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 879
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_28

    .line 880
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 883
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v32

    .line 884
    .local v32, "this_present_reminderDoneTime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v13

    .line 885
    .local v13, "that_present_reminderDoneTime":Z
    if-nez v32, :cond_29

    if-eqz v13, :cond_2c

    .line 886
    :cond_29
    if-eqz v32, :cond_2a

    if-nez v13, :cond_2b

    .line 887
    :cond_2a
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 888
    :cond_2b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_2c

    .line 889
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 892
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v34

    .line 893
    .local v34, "this_present_reminderTime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v15

    .line 894
    .local v15, "that_present_reminderTime":Z
    if-nez v34, :cond_2d

    if-eqz v15, :cond_30

    .line 895
    :cond_2d
    if-eqz v34, :cond_2e

    if-nez v15, :cond_2f

    .line 896
    :cond_2e
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 897
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_30

    .line 898
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 901
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v31

    .line 902
    .local v31, "this_present_placeName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v12

    .line 903
    .local v12, "that_present_placeName":Z
    if-nez v31, :cond_31

    if-eqz v12, :cond_34

    .line 904
    :cond_31
    if-eqz v31, :cond_32

    if-nez v12, :cond_33

    .line 905
    :cond_32
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 906
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_34

    .line 907
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 910
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v25

    .line 911
    .local v25, "this_present_contentClass":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v6

    .line 912
    .local v6, "that_present_contentClass":Z
    if-nez v25, :cond_35

    if-eqz v6, :cond_38

    .line 913
    :cond_35
    if-eqz v25, :cond_36

    if-nez v6, :cond_37

    .line 914
    :cond_36
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 915
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_38

    .line 916
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 919
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v22

    .line 920
    .local v22, "this_present_applicationData":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v3

    .line 921
    .local v3, "that_present_applicationData":Z
    if-nez v22, :cond_39

    if-eqz v3, :cond_3c

    .line 922
    :cond_39
    if-eqz v22, :cond_3a

    if-nez v3, :cond_3b

    .line 923
    :cond_3a
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 924
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/evernote/edam/type/LazyMap;->equals(Lcom/evernote/edam/type/LazyMap;)Z

    move-result v40

    if-nez v40, :cond_3c

    .line 925
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 928
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v27

    .line 929
    .local v27, "this_present_lastEditedBy":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v8

    .line 930
    .local v8, "that_present_lastEditedBy":Z
    if-nez v27, :cond_3d

    if-eqz v8, :cond_40

    .line 931
    :cond_3d
    if-eqz v27, :cond_3e

    if-nez v8, :cond_3f

    .line 932
    :cond_3e
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 933
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_40

    .line 934
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 937
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v24

    .line 938
    .local v24, "this_present_classifications":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v5

    .line 939
    .local v5, "that_present_classifications":Z
    if-nez v24, :cond_41

    if-eqz v5, :cond_44

    .line 940
    :cond_41
    if-eqz v24, :cond_42

    if-nez v5, :cond_43

    .line 941
    :cond_42
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 942
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_44

    .line 943
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 946
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v26

    .line 947
    .local v26, "this_present_creatorId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v7

    .line 948
    .local v7, "that_present_creatorId":Z
    if-nez v26, :cond_45

    if-eqz v7, :cond_48

    .line 949
    :cond_45
    if-eqz v26, :cond_46

    if-nez v7, :cond_47

    .line 950
    :cond_46
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 951
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_48

    .line 952
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 955
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v28

    .line 956
    .local v28, "this_present_lastEditorId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v9

    .line 957
    .local v9, "that_present_lastEditorId":Z
    if-nez v28, :cond_49

    if-eqz v9, :cond_4c

    .line 958
    :cond_49
    if-eqz v28, :cond_4a

    if-nez v9, :cond_4b

    .line 959
    :cond_4a
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 960
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_4c

    .line 961
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 964
    :cond_4c
    const/16 v40, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 782
    if-nez p1, :cond_1

    .line 786
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 784
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/NoteAttributes;

    if-eqz v1, :cond_0

    .line 785
    check-cast p1, Lcom/evernote/edam/type/NoteAttributes;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/NoteAttributes;->equals(Lcom/evernote/edam/type/NoteAttributes;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    return-wide v0
.end method

.method public getApplicationData()Lcom/evernote/edam/type/LazyMap;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getClassifications()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    return-object v0
.end method

.method public getClassificationsSize()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getContentClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorId()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    return v0
.end method

.method public getLastEditedBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEditorId()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    return-wide v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public getReminderDoneTime()J
    .locals 2

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    return-wide v0
.end method

.method public getReminderOrder()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    return-wide v0
.end method

.method public getReminderTime()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    return-wide v0
.end method

.method public getShareDate()J
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectDate()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAltitude()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetApplicationData()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAuthor()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetClassifications()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetContentClass()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCreatorId()Z
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLastEditedBy()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLastEditorId()Z
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLatitude()Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLongitude()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPlaceName()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetReminderDoneTime()Z
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetReminderOrder()Z
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetReminderTime()Z
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetShareDate()Z
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSource()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSourceApplication()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSourceURL()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSubjectDate()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public putToClassifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 13
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x4

    const/16 v10, 0xa

    const/16 v9, 0xb

    const/4 v8, 0x1

    .line 1156
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1159
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v4

    .line 1160
    .local v4, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 1325
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1326
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->validate()V

    .line 1327
    return-void

    .line 1163
    :cond_0
    iget-short v5, v4, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 1321
    :pswitch_0
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1323
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1165
    :pswitch_1
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_1

    .line 1166
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    .line 1167
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    goto :goto_1

    .line 1169
    :cond_1
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1173
    :pswitch_2
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_2

    .line 1174
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    .line 1175
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    goto :goto_1

    .line 1177
    :cond_2
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1181
    :pswitch_3
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_3

    .line 1182
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    .line 1183
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    goto :goto_1

    .line 1185
    :cond_3
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1189
    :pswitch_4
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_4

    .line 1190
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    .line 1191
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    goto :goto_1

    .line 1193
    :cond_4
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1197
    :pswitch_5
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_5

    .line 1198
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    goto :goto_1

    .line 1200
    :cond_5
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1204
    :pswitch_6
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_6

    .line 1205
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    goto :goto_1

    .line 1207
    :cond_6
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1211
    :pswitch_7
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_7

    .line 1212
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    goto :goto_1

    .line 1214
    :cond_7
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1218
    :pswitch_8
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_8

    .line 1219
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    goto/16 :goto_1

    .line 1221
    :cond_8
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1225
    :pswitch_9
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_9

    .line 1226
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    .line 1227
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    goto/16 :goto_1

    .line 1229
    :cond_9
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1233
    :pswitch_a
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_a

    .line 1234
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    .line 1235
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    goto/16 :goto_1

    .line 1237
    :cond_a
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1241
    :pswitch_b
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_b

    .line 1242
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    .line 1243
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    goto/16 :goto_1

    .line 1245
    :cond_b
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1249
    :pswitch_c
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_c

    .line 1250
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    .line 1251
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    goto/16 :goto_1

    .line 1253
    :cond_c
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1257
    :pswitch_d
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_d

    .line 1258
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1260
    :cond_d
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1264
    :pswitch_e
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_e

    .line 1265
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    goto/16 :goto_1

    .line 1267
    :cond_e
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1271
    :pswitch_f
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v6, 0xc

    if-ne v5, v6, :cond_f

    .line 1272
    new-instance v5, Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v5}, Lcom/evernote/edam/type/LazyMap;-><init>()V

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 1273
    iget-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v5, p1}, Lcom/evernote/edam/type/LazyMap;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 1275
    :cond_f
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1279
    :pswitch_10
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v9, :cond_10

    .line 1280
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    goto/16 :goto_1

    .line 1282
    :cond_10
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1286
    :pswitch_11
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_12

    .line 1288
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapBegin()Lcom/evernote/thrift/protocol/TMap;

    move-result-object v2

    .line 1289
    .local v2, "_map17":Lcom/evernote/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lcom/evernote/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 1290
    const/4 v0, 0x0

    .local v0, "_i18":I
    :goto_2
    iget v5, v2, Lcom/evernote/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_11

    .line 1294
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "_key19":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, "_val20":Ljava/lang/String;
    iget-object v5, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1298
    .end local v1    # "_key19":Ljava/lang/String;
    .end local v3    # "_val20":Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 1301
    .end local v0    # "_i18":I
    .end local v2    # "_map17":Lcom/evernote/thrift/protocol/TMap;
    :cond_12
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1305
    :pswitch_12
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v12, :cond_13

    .line 1306
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    .line 1307
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    goto/16 :goto_1

    .line 1309
    :cond_13
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1313
    :pswitch_13
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v5, v12, :cond_14

    .line 1314
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    .line 1315
    invoke-virtual {p0, v8}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    goto/16 :goto_1

    .line 1317
    :cond_14
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 413
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setAltitudeIsSet(Z)V

    .line 415
    return-void
.end method

.method public setAltitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 427
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 428
    return-void
.end method

.method public setApplicationData(Lcom/evernote/edam/type/LazyMap;)V
    .locals 0
    .param p1, "applicationData"    # Lcom/evernote/edam/type/LazyMap;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 662
    return-void
.end method

.method public setApplicationDataIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 677
    :cond_0
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setAuthorIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 451
    :cond_0
    return-void
.end method

.method public setClassifications(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "classifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 719
    return-void
.end method

.method public setClassificationsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 734
    :cond_0
    return-void
.end method

.method public setContentClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentClass"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setContentClassIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 654
    :cond_0
    return-void
.end method

.method public setCreatorId(I)V
    .locals 1
    .param p1, "creatorId"    # I

    .prologue
    .line 741
    iput p1, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    .line 742
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setCreatorIdIsSet(Z)V

    .line 743
    return-void
.end method

.method public setCreatorIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 755
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    aput-boolean p1, v0, v1

    .line 756
    return-void
.end method

.method public setLastEditedBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastEditedBy"    # Ljava/lang/String;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public setLastEditedByIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 700
    :cond_0
    return-void
.end method

.method public setLastEditorId(I)V
    .locals 1
    .param p1, "lastEditorId"    # I

    .prologue
    .line 763
    iput p1, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    .line 764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLastEditorIdIsSet(Z)V

    .line 765
    return-void
.end method

.method public setLastEditorIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    aput-boolean p1, v0, v1

    .line 778
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 369
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLatitudeIsSet(Z)V

    .line 371
    return-void
.end method

.method public setLatitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 384
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setLongitudeIsSet(Z)V

    .line 393
    return-void
.end method

.method public setLongitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 405
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 406
    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placeName"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public setPlaceNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 628
    if-nez p1, :cond_0

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 631
    :cond_0
    return-void
.end method

.method public setReminderDoneTime(J)V
    .locals 1
    .param p1, "reminderDoneTime"    # J

    .prologue
    .line 571
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderDoneTimeIsSet(Z)V

    .line 573
    return-void
.end method

.method public setReminderDoneTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 585
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 586
    return-void
.end method

.method public setReminderOrder(J)V
    .locals 1
    .param p1, "reminderOrder"    # J

    .prologue
    .line 549
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderOrderIsSet(Z)V

    .line 551
    return-void
.end method

.method public setReminderOrderIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 564
    return-void
.end method

.method public setReminderTime(J)V
    .locals 1
    .param p1, "reminderTime"    # J

    .prologue
    .line 593
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setReminderTimeIsSet(Z)V

    .line 595
    return-void
.end method

.method public setReminderTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 607
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    aput-boolean p1, v0, v1

    .line 608
    return-void
.end method

.method public setShareDate(J)V
    .locals 1
    .param p1, "shareDate"    # J

    .prologue
    .line 527
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setShareDateIsSet(Z)V

    .line 529
    return-void
.end method

.method public setShareDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 541
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 542
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setSourceApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceApplication"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setSourceApplicationIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 517
    if-nez p1, :cond_0

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 520
    :cond_0
    return-void
.end method

.method public setSourceIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 474
    :cond_0
    return-void
.end method

.method public setSourceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceURL"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setSourceURLIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 497
    :cond_0
    return-void
.end method

.method public setSubjectDate(J)V
    .locals 1
    .param p1, "subjectDate"    # J

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/NoteAttributes;->setSubjectDateIsSet(Z)V

    .line 349
    return-void
.end method

.method public setSubjectDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoteAttributes("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1463
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    const-string v2, "subjectDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1466
    const/4 v0, 0x0

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1469
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :cond_1
    const-string v2, "latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1472
    const/4 v0, 0x0

    .line 1474
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1475
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_3
    const-string v2, "longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1478
    const/4 v0, 0x0

    .line 1480
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1481
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :cond_5
    const-string v2, "altitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1484
    const/4 v0, 0x0

    .line 1486
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1487
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_7
    const-string v2, "author:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 1490
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    :goto_0
    const/4 v0, 0x0

    .line 1496
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1497
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    :cond_9
    const-string v2, "source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 1500
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    :goto_1
    const/4 v0, 0x0

    .line 1506
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1507
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_b
    const-string v2, "sourceURL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 1510
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :goto_2
    const/4 v0, 0x0

    .line 1516
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1517
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    :cond_d
    const-string v2, "sourceApplication:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 1520
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    :goto_3
    const/4 v0, 0x0

    .line 1526
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1527
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    :cond_f
    const-string v2, "shareDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1530
    const/4 v0, 0x0

    .line 1532
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1533
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    :cond_11
    const-string v2, "reminderOrder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1536
    const/4 v0, 0x0

    .line 1538
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1539
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    :cond_13
    const-string v2, "reminderDoneTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1542
    const/4 v0, 0x0

    .line 1544
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1545
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    :cond_15
    const-string v2, "reminderTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1548
    const/4 v0, 0x0

    .line 1550
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1551
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_17
    const-string v2, "placeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 1554
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :goto_4
    const/4 v0, 0x0

    .line 1560
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1561
    if-nez v0, :cond_19

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_19
    const-string v2, "contentClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 1564
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :goto_5
    const/4 v0, 0x0

    .line 1570
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1571
    if-nez v0, :cond_1b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :cond_1b
    const-string v2, "applicationData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-nez v2, :cond_2b

    .line 1574
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :goto_6
    const/4 v0, 0x0

    .line 1580
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1581
    if-nez v0, :cond_1d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    :cond_1d
    const-string v2, "lastEditedBy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 1584
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    :goto_7
    const/4 v0, 0x0

    .line 1590
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1591
    if-nez v0, :cond_1f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :cond_1f
    const-string v2, "classifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-nez v2, :cond_2d

    .line 1594
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    :goto_8
    const/4 v0, 0x0

    .line 1600
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1601
    if-nez v0, :cond_21

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    :cond_21
    const-string v2, "creatorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1604
    const/4 v0, 0x0

    .line 1606
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1607
    if-nez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_23
    const-string v2, "lastEditorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1610
    const/4 v0, 0x0

    .line 1612
    :cond_24
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1492
    :cond_25
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1502
    :cond_26
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1512
    :cond_27
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1522
    :cond_28
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1556
    :cond_29
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1566
    :cond_2a
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1576
    :cond_2b
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1586
    :cond_2c
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1596
    :cond_2d
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public unsetAltitude()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 419
    return-void
.end method

.method public unsetApplicationData()V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    .line 666
    return-void
.end method

.method public unsetAuthor()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public unsetClassifications()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    .line 723
    return-void
.end method

.method public unsetContentClass()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public unsetCreatorId()V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 747
    return-void
.end method

.method public unsetLastEditedBy()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public unsetLastEditorId()V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 769
    return-void
.end method

.method public unsetLatitude()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 375
    return-void
.end method

.method public unsetLongitude()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 397
    return-void
.end method

.method public unsetPlaceName()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public unsetReminderDoneTime()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 577
    return-void
.end method

.method public unsetReminderOrder()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 555
    return-void
.end method

.method public unsetReminderTime()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 599
    return-void
.end method

.method public unsetShareDate()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 533
    return-void
.end method

.method public unsetSource()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public unsetSourceApplication()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public unsetSourceURL()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public unsetSubjectDate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/evernote/edam/type/NoteAttributes;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 353
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
    .line 1618
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    .line 1330
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->validate()V

    .line 1332
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1333
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSubjectDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->SUBJECT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1335
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->subjectDate:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1336
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLatitude()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1339
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1340
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->latitude:D

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 1341
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLongitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1344
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1345
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->longitude:D

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 1346
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1348
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAltitude()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1349
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->ALTITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1350
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->altitude:D

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 1351
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1353
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1354
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetAuthor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1355
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->AUTHOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1356
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->author:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1360
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1361
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSource()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1362
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1363
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->source:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1367
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1368
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceURL()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1369
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1370
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceURL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1374
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1375
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetSourceApplication()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1376
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->SOURCE_APPLICATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1377
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->sourceApplication:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1381
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetShareDate()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1382
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->SHARE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1383
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->shareDate:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1384
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1386
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderOrder()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1387
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_ORDER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1388
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderOrder:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1389
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1391
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderDoneTime()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1392
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_DONE_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1393
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderDoneTime:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1394
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1396
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetReminderTime()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1397
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->REMINDER_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1398
    iget-wide v2, p0, Lcom/evernote/edam/type/NoteAttributes;->reminderTime:J

    invoke-virtual {p1, v2, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1399
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1401
    :cond_b
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1402
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetPlaceName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1403
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->PLACE_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1404
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->placeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1408
    :cond_c
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1409
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetContentClass()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1410
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->CONTENT_CLASS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1411
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->contentClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1415
    :cond_d
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    if-eqz v2, :cond_e

    .line 1416
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetApplicationData()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1417
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->APPLICATION_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1418
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->applicationData:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/type/LazyMap;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 1419
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1422
    :cond_e
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1423
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditedBy()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1424
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITED_BY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1425
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditedBy:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1429
    :cond_f
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    if-eqz v2, :cond_11

    .line 1430
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetClassifications()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1431
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->CLASSIFICATIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1433
    new-instance v2, Lcom/evernote/thrift/protocol/TMap;

    iget-object v3, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v4, v4, v3}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapBegin(Lcom/evernote/thrift/protocol/TMap;)V

    .line 1434
    iget-object v2, p0, Lcom/evernote/edam/type/NoteAttributes;->classifications:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1436
    .local v0, "_iter21":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1437
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    .end local v0    # "_iter21":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1441
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1444
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetCreatorId()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1445
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->CREATOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1446
    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->creatorId:I

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1447
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1449
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/NoteAttributes;->isSetLastEditorId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1450
    sget-object v2, Lcom/evernote/edam/type/NoteAttributes;->LAST_EDITOR_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1451
    iget v2, p0, Lcom/evernote/edam/type/NoteAttributes;->lastEditorId:I

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1452
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1454
    :cond_13
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1455
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1456
    return-void
.end method
