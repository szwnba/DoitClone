.class Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;
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
    name = "getDefaultNotebook_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;",
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
.field private success:Lcom/evernote/edam/type/Notebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 6368
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getDefaultNotebook_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 6370
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6371
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6372
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6382
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .prologue
    .line 6387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6388
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6389
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6391
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6392
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6394
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6395
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6397
    :cond_2
    return-void
.end method

.method static synthetic access$2700(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .prologue
    .line 6367
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .prologue
    .line 6367
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .prologue
    .line 6367
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6404
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6405
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6406
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6407
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .prologue
    .line 6425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6426
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

    .line 6459
    :cond_0
    :goto_0
    return v0

    .line 6429
    :cond_1
    const/4 v0, 0x0

    .line 6430
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 6432
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6433
    if-nez v0, :cond_0

    .line 6436
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6437
    if-nez v0, :cond_0

    .line 6441
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6442
    if-nez v0, :cond_0

    .line 6445
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6446
    if-nez v0, :cond_0

    .line 6450
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6451
    if-nez v0, :cond_0

    .line 6454
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6455
    if-nez v0, :cond_0

    .line 6459
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6367
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;
    .locals 1

    .prologue
    .line 6400
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 6367
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 6411
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

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
    .line 6421
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 6416
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 6464
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 6467
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 6468
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 6501
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 6502
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->validate()V

    .line 6503
    return-void

    .line 6471
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 6497
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 6499
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 6473
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 6474
    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6475
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6477
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6481
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 6482
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6483
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6485
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6489
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 6490
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6491
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6493
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6471
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
    .line 6527
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
    .line 6506
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 6508
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6509
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6510
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6511
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 6521
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 6522
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 6523
    return-void

    .line 6512
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6513
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6514
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6515
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 6516
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6517
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6518
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getDefaultNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6519
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
