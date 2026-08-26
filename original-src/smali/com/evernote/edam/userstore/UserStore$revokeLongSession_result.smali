.class Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "revokeLongSession_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 2446
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "revokeLongSession_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 2448
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2449
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    .prologue
    .line 2463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2465
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2467
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2468
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2470
    :cond_1
    return-void
.end method

.method static synthetic access$1100(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2477
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2478
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2479
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    .prologue
    .line 2492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2493
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

    .line 2517
    :cond_0
    :goto_0
    return v0

    .line 2496
    :cond_1
    const/4 v0, 0x0

    .line 2497
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 2499
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2500
    if-nez v0, :cond_0

    .line 2503
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2504
    if-nez v0, :cond_0

    .line 2508
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2509
    if-nez v0, :cond_0

    .line 2512
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2513
    if-nez v0, :cond_0

    .line 2517
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2445
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;
    .locals 1

    .prologue
    .line 2473
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;-><init>(Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 2445
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 2483
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 2522
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 2525
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 2526
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 2551
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 2552
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->validate()V

    .line 2553
    return-void

    .line 2529
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 2547
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 2549
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 2531
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 2532
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2533
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2535
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2539
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 2540
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2541
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2543
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 2573
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
    .line 2556
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 2558
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2560
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2561
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2567
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 2568
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 2569
    return-void

    .line 2562
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2564
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$revokeLongSession_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2565
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
