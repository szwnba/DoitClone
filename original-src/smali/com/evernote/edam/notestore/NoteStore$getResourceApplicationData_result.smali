.class Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;
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
    name = "getResourceApplicationData_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/LazyMap;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 20378
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getResourceApplicationData_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 20380
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20381
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20382
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 20383
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20394
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20400
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20401
    new-instance v0, Lcom/evernote/edam/type/LazyMap;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LazyMap;-><init>(Lcom/evernote/edam/type/LazyMap;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    .line 20403
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20404
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 20406
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20407
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 20409
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20410
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 20412
    :cond_3
    return-void
.end method

.method static synthetic access$17600(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20377
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20377
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20377
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20377
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20419
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    .line 20420
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 20421
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 20422
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 20423
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .prologue
    .line 20446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20447
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

    .line 20489
    :cond_0
    :goto_0
    return v0

    .line 20450
    :cond_1
    const/4 v0, 0x0

    .line 20451
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 20453
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20454
    if-nez v0, :cond_0

    .line 20457
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20458
    if-nez v0, :cond_0

    .line 20462
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20463
    if-nez v0, :cond_0

    .line 20466
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20467
    if-nez v0, :cond_0

    .line 20471
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20472
    if-nez v0, :cond_0

    .line 20475
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20476
    if-nez v0, :cond_0

    .line 20480
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20481
    if-nez v0, :cond_0

    .line 20484
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20485
    if-nez v0, :cond_0

    .line 20489
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20377
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;
    .locals 1

    .prologue
    .line 20415
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 20377
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 20442
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 20427
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

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
    .line 20437
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 20432
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 20494
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 20497
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 20498
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 20539
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 20540
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->validate()V

    .line 20541
    return-void

    .line 20501
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 20535
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 20537
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 20503
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 20504
    new-instance v1, Lcom/evernote/edam/type/LazyMap;

    invoke-direct {v1}, Lcom/evernote/edam/type/LazyMap;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    .line 20505
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LazyMap;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 20507
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 20511
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 20512
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 20513
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 20515
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 20519
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 20520
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 20521
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 20523
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 20527
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 20528
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 20529
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 20531
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 20501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 20569
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
    .line 20544
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 20546
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20547
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20548
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->success:Lcom/evernote/edam/type/LazyMap;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LazyMap;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 20549
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 20563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 20564
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 20565
    return-void

    .line 20550
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20551
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20552
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 20553
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 20554
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20555
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20556
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 20557
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 20558
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20559
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 20560
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceApplicationData_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 20561
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
