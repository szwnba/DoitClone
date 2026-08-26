.class Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;
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
    name = "getSyncChunk_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;",
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


# instance fields
.field private success:Lcom/evernote/edam/notestore/SyncChunk;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 4292
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSyncChunk_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4294
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4295
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4296
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4306
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .prologue
    .line 4311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4312
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4313
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunk;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncChunk;-><init>(Lcom/evernote/edam/notestore/SyncChunk;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4315
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4316
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4318
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4319
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4321
    :cond_2
    return-void
.end method

.method static synthetic access$600(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    return-object v0
.end method

.method static synthetic access$700(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$800(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4328
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4329
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4330
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4331
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .prologue
    .line 4349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4350
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

    .line 4383
    :cond_0
    :goto_0
    return v0

    .line 4353
    :cond_1
    const/4 v0, 0x0

    .line 4354
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 4356
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4357
    if-nez v0, :cond_0

    .line 4360
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4361
    if-nez v0, :cond_0

    .line 4365
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4366
    if-nez v0, :cond_0

    .line 4369
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4370
    if-nez v0, :cond_0

    .line 4374
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4375
    if-nez v0, :cond_0

    .line 4378
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4379
    if-nez v0, :cond_0

    .line 4383
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4291
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;
    .locals 1

    .prologue
    .line 4324
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4291
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 4340
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 3
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 4388
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4391
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4392
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4425
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4426
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->validate()V

    .line 4427
    return-void

    .line 4395
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4421
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4423
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4397
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 4398
    new-instance v1, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncChunk;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4399
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncChunk;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4401
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4405
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 4406
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4407
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4409
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4413
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 4414
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4415
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4417
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 4451
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
    .line 4430
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4432
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4433
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4434
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4435
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4445
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4446
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4447
    return-void

    .line 4436
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4437
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4438
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4439
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4440
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4441
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4442
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4443
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
