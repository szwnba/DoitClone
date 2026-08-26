.class Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;
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
    name = "expungeInactiveNotes_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __SUCCESS_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private success:I

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 18343
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "expungeInactiveNotes_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 18345
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 18346
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 18347
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18356
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    .line 18359
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .prologue
    const/4 v3, 0x0

    .line 18364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18356
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    .line 18365
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18366
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    .line 18367
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18368
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18370
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18371
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18373
    :cond_1
    return-void
.end method

.method static synthetic access$15700(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)I
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .prologue
    .line 18342
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    return v0
.end method

.method static synthetic access$15800(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .prologue
    .line 18342
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .prologue
    .line 18342
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18380
    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->setSuccessIsSet(Z)V

    .line 18381
    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    .line 18382
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18383
    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18384
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .prologue
    .line 18406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 18407
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

    .line 18440
    :cond_0
    :goto_0
    return v0

    .line 18410
    :cond_1
    const/4 v0, 0x0

    .line 18411
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 18413
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18414
    if-nez v0, :cond_0

    .line 18417
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 18418
    if-nez v0, :cond_0

    .line 18422
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18423
    if-nez v0, :cond_0

    .line 18426
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 18427
    if-nez v0, :cond_0

    .line 18431
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 18432
    if-nez v0, :cond_0

    .line 18435
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 18436
    if-nez v0, :cond_0

    .line 18440
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18342
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;
    .locals 1

    .prologue
    .line 18376
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 18342
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 2

    .prologue
    .line 18388
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 18402
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 18397
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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
    const/16 v3, 0xc

    .line 18445
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 18448
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 18449
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 18482
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 18483
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->validate()V

    .line 18484
    return-void

    .line 18452
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 18478
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 18480
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 18454
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 18455
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    .line 18456
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 18458
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18462
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 18463
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18464
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 18466
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18470
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 18471
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18472
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 18474
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 18452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSuccessIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 18392
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 18393
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
    .line 18508
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
    .line 18487
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 18489
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18490
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18491
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->success:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 18492
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18502
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 18503
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 18504
    return-void

    .line 18493
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18494
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18495
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 18496
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 18497
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18498
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18499
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeInactiveNotes_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 18500
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
