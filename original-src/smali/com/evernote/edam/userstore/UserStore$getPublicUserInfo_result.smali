.class Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
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
    name = "getPublicUserInfo_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;",
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

.field private success:Lcom/evernote/edam/userstore/PublicUserInfo;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 3486
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPublicUserInfo_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3488
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3489
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3490
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3491
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3502
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3508
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3509
    new-instance v0, Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>(Lcom/evernote/edam/userstore/PublicUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 3511
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3512
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 3514
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3515
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3517
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3518
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3520
    :cond_3
    return-void
.end method

.method static synthetic access$2200(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3527
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 3528
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 3529
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3530
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3531
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .prologue
    .line 3554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3555
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

    .line 3597
    :cond_0
    :goto_0
    return v0

    .line 3558
    :cond_1
    const/4 v0, 0x0

    .line 3559
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3561
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3562
    if-nez v0, :cond_0

    .line 3565
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3566
    if-nez v0, :cond_0

    .line 3570
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3571
    if-nez v0, :cond_0

    .line 3574
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3575
    if-nez v0, :cond_0

    .line 3579
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3580
    if-nez v0, :cond_0

    .line 3583
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3584
    if-nez v0, :cond_0

    .line 3588
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3589
    if-nez v0, :cond_0

    .line 3592
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3593
    if-nez v0, :cond_0

    .line 3597
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3485
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
    .locals 1

    .prologue
    .line 3523
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 3535
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

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
    .line 3545
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 3550
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 3602
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3605
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3606
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3647
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3648
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->validate()V

    .line 3649
    return-void

    .line 3609
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3643
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3645
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3611
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 3612
    new-instance v1, Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 3613
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3615
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3619
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 3620
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 3621
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3623
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3627
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 3628
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3629
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3631
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3635
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 3636
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3637
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3639
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3609
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
    .line 3677
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
    .line 3652
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3654
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3655
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3656
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3657
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3672
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3673
    return-void

    .line 3658
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3659
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3660
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3661
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3662
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3663
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3664
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3665
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3666
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3667
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3668
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3669
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
