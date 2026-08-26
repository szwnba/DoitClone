.class Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;
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
    name = "getResourceByHash_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CONTENT_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __WITHALTERNATEDATA_ISSET_ID:I = 0x2

.field private static final __WITHDATA_ISSET_ID:I = 0x0

.field private static final __WITHRECOGNITION_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private contentHash:[B

.field private noteGuid:Ljava/lang/String;

.field private withAlternateData:Z

.field private withData:Z

.field private withRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    .line 22416
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getResourceByHash_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 22418
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22419
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuid"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22420
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "contentHash"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->CONTENT_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22421
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withData"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22422
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withRecognition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22423
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "withAlternateData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22437
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    .line 22440
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    .prologue
    const/4 v3, 0x0

    .line 22445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22437
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    .line 22446
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22447
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22448
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    .line 22450
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetNoteGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22451
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    .line 22453
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetContentHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22454
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    .line 22455
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22457
    :cond_2
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    .line 22458
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    .line 22459
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    .line 22460
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22467
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    .line 22468
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    .line 22469
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    .line 22470
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithDataIsSet(Z)V

    .line 22471
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    .line 22472
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithRecognitionIsSet(Z)V

    .line 22473
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    .line 22474
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithAlternateDataIsSet(Z)V

    .line 22475
    iput-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    .line 22476
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    .prologue
    .line 22548
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22549
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

    .line 22609
    :cond_0
    :goto_0
    return v0

    .line 22552
    :cond_1
    const/4 v0, 0x0

    .line 22553
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 22555
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22556
    if-nez v0, :cond_0

    .line 22559
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22560
    if-nez v0, :cond_0

    .line 22564
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetNoteGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetNoteGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22565
    if-nez v0, :cond_0

    .line 22568
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetNoteGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22569
    if-nez v0, :cond_0

    .line 22573
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetContentHash()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetContentHash()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22574
    if-nez v0, :cond_0

    .line 22577
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetContentHash()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo([B[B)I

    move-result v0

    .line 22578
    if-nez v0, :cond_0

    .line 22582
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22583
    if-nez v0, :cond_0

    .line 22586
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithData()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 22587
    if-nez v0, :cond_0

    .line 22591
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithRecognition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithRecognition()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22592
    if-nez v0, :cond_0

    .line 22595
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithRecognition()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 22596
    if-nez v0, :cond_0

    .line 22600
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithAlternateData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithAlternateData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22601
    if-nez v0, :cond_0

    .line 22604
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->isSetWithAlternateData()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    iget-boolean v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 22605
    if-nez v0, :cond_0

    .line 22609
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22415
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;
    .locals 1

    .prologue
    .line 22463
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 22415
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 22484
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetContentHash()Z
    .locals 1

    .prologue
    .line 22502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

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
    .line 22493
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetWithAlternateData()Z
    .locals 2

    .prologue
    .line 22540
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithData()Z
    .locals 2

    .prologue
    .line 22512
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetWithRecognition()Z
    .locals 2

    .prologue
    .line 22526
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

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
    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 22614
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 22617
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 22618
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 22672
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 22673
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->validate()V

    .line 22674
    return-void

    .line 22621
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 22668
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 22670
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 22623
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 22624
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 22626
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22630
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 22631
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    goto :goto_1

    .line 22633
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22637
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 22638
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    goto :goto_1

    .line 22640
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22644
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 22645
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    .line 22646
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithDataIsSet(Z)V

    goto :goto_1

    .line 22648
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22652
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 22653
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    .line 22654
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithRecognitionIsSet(Z)V

    goto :goto_1

    .line 22656
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22660
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 22661
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    .line 22662
    invoke-virtual {p0, v2}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithAlternateDataIsSet(Z)V

    goto :goto_1

    .line 22664
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22621
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

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 22479
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    .line 22480
    return-void
.end method

.method public setContentHash([B)V
    .locals 0
    .param p1, "contentHash"    # [B

    .prologue
    .line 22497
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    .line 22498
    return-void
.end method

.method public setNoteGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteGuid"    # Ljava/lang/String;

    .prologue
    .line 22488
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    .line 22489
    return-void
.end method

.method public setWithAlternateData(Z)V
    .locals 1
    .param p1, "withAlternateData"    # Z

    .prologue
    .line 22534
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    .line 22535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithAlternateDataIsSet(Z)V

    .line 22536
    return-void
.end method

.method public setWithAlternateDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 22544
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 22545
    return-void
.end method

.method public setWithData(Z)V
    .locals 1
    .param p1, "withData"    # Z

    .prologue
    .line 22506
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    .line 22507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithDataIsSet(Z)V

    .line 22508
    return-void
.end method

.method public setWithDataIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 22516
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 22517
    return-void
.end method

.method public setWithRecognition(Z)V
    .locals 1
    .param p1, "withRecognition"    # Z

    .prologue
    .line 22520
    iput-boolean p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    .line 22521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->setWithRecognitionIsSet(Z)V

    .line 22522
    return-void
.end method

.method public setWithRecognitionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 22530
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 22531
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
    .line 22710
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
    .line 22677
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->validate()V

    .line 22679
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 22680
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22681
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22682
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 22683
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22685
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 22686
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->NOTE_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22687
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->noteGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 22688
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22690
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    if-eqz v0, :cond_2

    .line 22691
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->CONTENT_HASH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22692
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->contentHash:[B

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBinary([B)V

    .line 22693
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22695
    :cond_2
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22696
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 22697
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22698
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_RECOGNITION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22699
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withRecognition:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 22700
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22701
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->WITH_ALTERNATE_DATA_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22702
    iget-boolean v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_args;->withAlternateData:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 22703
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22704
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 22705
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 22706
    return-void
.end method
