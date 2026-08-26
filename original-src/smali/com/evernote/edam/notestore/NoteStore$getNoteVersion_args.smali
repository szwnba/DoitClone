.class Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;
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
    name = "getNoteVersion_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __UPDATESEQUENCENUM_ISSET_ID:I = 0x0

.field private static final __WITHRESOURCESALTERNATEDATA_ISSET_ID:I = 0x3

.field private static final __WITHRESOURCESDATA_ISSET_ID:I = 0x1

.field private static final __WITHRESOURCESRECOGNITION_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private noteGuid:Ljava/lang/String;

.field private updateSequenceNum:I

.field private withResourcesAlternateData:Z

.field private withResourcesData:Z

.field private withResourcesRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0xb

    const/4 v4, 0x2

    .line 19242
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteVersion_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 19244
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19245
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19246
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updateSequenceNum"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19247
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesData"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19248
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesRecognition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19249
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withResourcesAlternateData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19264
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    .line 19267
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    .prologue
    const/4 v3, 0x0

    .line 19272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19264
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    .line 19273
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19274
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19275
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    .line 19277
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19278
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    .line 19280
    :cond_1
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    .line 19281
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    .line 19282
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    .line 19283
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    .line 19284
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19291
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    .line 19292
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    .line 19293
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setUpdateSequenceNumIsSet(Z)V

    .line 19294
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    .line 19295
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesDataIsSet(Z)V

    .line 19296
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    .line 19297
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesRecognitionIsSet(Z)V

    .line 19298
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    .line 19299
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesAlternateDataIsSet(Z)V

    .line 19300
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    .line 19301
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    .prologue
    .line 19378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19379
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

    .line 19439
    :cond_0
    :goto_0
    return v0

    .line 19382
    :cond_1
    const/4 v0, 0x0

    .line 19383
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 19385
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19386
    if-nez v0, :cond_0

    .line 19389
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19390
    if-nez v0, :cond_0

    .line 19394
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetNoteGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetNoteGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19395
    if-nez v0, :cond_0

    .line 19398
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19399
    if-nez v0, :cond_0

    .line 19403
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetUpdateSequenceNum()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetUpdateSequenceNum()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19404
    if-nez v0, :cond_0

    .line 19407
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetUpdateSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 19408
    if-nez v0, :cond_0

    .line 19412
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19413
    if-nez v0, :cond_0

    .line 19416
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesData()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19417
    if-nez v0, :cond_0

    .line 19421
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesRecognition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesRecognition()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19422
    if-nez v0, :cond_0

    .line 19425
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesRecognition()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19426
    if-nez v0, :cond_0

    .line 19430
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesAlternateData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesAlternateData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19431
    if-nez v0, :cond_0

    .line 19434
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->isSetWithResourcesAlternateData()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 19435
    if-nez v0, :cond_0

    .line 19439
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19241
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;
    .locals 1

    .prologue
    .line 19287
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 19241
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 19309
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

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
    .line 19318
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

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
    .line 19328
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesAlternateData()Z
    .locals 2

    .prologue
    .line 19370
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesData()Z
    .locals 2

    .prologue
    .line 19342
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithResourcesRecognition()Z
    .locals 2

    .prologue
    .line 19356
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
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
    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19444
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 19447
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 19448
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 19503
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 19504
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->validate()V

    .line 19505
    return-void

    .line 19451
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 19499
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 19501
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 19453
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_1

    .line 19454
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 19456
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19460
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 19461
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    goto :goto_1

    .line 19463
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19467
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 19468
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    .line 19469
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setUpdateSequenceNumIsSet(Z)V

    goto :goto_1

    .line 19471
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19475
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 19476
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    .line 19477
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesDataIsSet(Z)V

    goto :goto_1

    .line 19479
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19483
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_5

    .line 19484
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    .line 19485
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesRecognitionIsSet(Z)V

    goto :goto_1

    .line 19487
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19491
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 19492
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    .line 19493
    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesAlternateDataIsSet(Z)V

    goto :goto_1

    .line 19495
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19451
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

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 19304
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    .line 19305
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteGuid"    # Ljava/lang/String;

    .prologue
    .line 19313
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    .line 19314
    return-void
.end method

.method public setUpdateSequenceNum(I)V
    .locals 1
    .param p1, "updateSequenceNum"    # I

    .prologue
    .line 19322
    iput p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    .line 19323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setUpdateSequenceNumIsSet(Z)V

    .line 19324
    return-void
.end method

.method public setUpdateSequenceNumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19332
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 19333
    return-void
.end method

.method public setWithResourcesAlternateData(Z)V
    .locals 1
    .param p1, "withResourcesAlternateData"    # Z

    .prologue
    .line 19364
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    .line 19365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesAlternateDataIsSet(Z)V

    .line 19366
    return-void
.end method

.method public setWithResourcesAlternateDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19374
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 19375
    return-void
.end method

.method public setWithResourcesData(Z)V
    .locals 1
    .param p1, "withResourcesData"    # Z

    .prologue
    .line 19336
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    .line 19337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesDataIsSet(Z)V

    .line 19338
    return-void
.end method

.method public setWithResourcesDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19346
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 19347
    return-void
.end method

.method public setWithResourcesRecognition(Z)V
    .locals 1
    .param p1, "withResourcesRecognition"    # Z

    .prologue
    .line 19350
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    .line 19351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->setWithResourcesRecognitionIsSet(Z)V

    .line 19352
    return-void
.end method

.method public setWithResourcesRecognitionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 19360
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 19361
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
    .line 19539
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
    .line 19508
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->validate()V

    .line 19510
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 19511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19512
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19513
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 19514
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19516
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 19517
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19518
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 19519
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19521
    :cond_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->UPDATE_SEQUENCE_NUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19522
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->updateSequenceNum:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 19523
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19524
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19525
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 19526
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19527
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19528
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesRecognition:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 19529
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19530
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->WITH_RESOURCES_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19531
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;->withResourcesAlternateData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 19532
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19533
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 19534
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 19535
    return-void
.end method
