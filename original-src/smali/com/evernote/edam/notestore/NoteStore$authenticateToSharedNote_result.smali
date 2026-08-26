.class Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
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
    name = "authenticateToSharedNote_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;",
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

.field private success:Lcom/evernote/edam/userstore/AuthenticationResult;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 29512
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "authenticateToSharedNote_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 29514
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29515
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29516
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29517
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29528
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29534
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29535
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 29537
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29538
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 29540
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29541
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 29543
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29544
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 29546
    :cond_3
    return-void
.end method

.method static synthetic access$27700(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-object v0
.end method

.method static synthetic access$27800(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$27900(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$28000(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29511
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29553
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 29554
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 29555
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 29556
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 29557
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .prologue
    .line 29580
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29581
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

    .line 29623
    :cond_0
    :goto_0
    return v0

    .line 29584
    :cond_1
    const/4 v0, 0x0

    .line 29585
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 29587
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29588
    if-nez v0, :cond_0

    .line 29591
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29592
    if-nez v0, :cond_0

    .line 29596
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29597
    if-nez v0, :cond_0

    .line 29600
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29601
    if-nez v0, :cond_0

    .line 29605
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29606
    if-nez v0, :cond_0

    .line 29609
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29610
    if-nez v0, :cond_0

    .line 29614
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29615
    if-nez v0, :cond_0

    .line 29618
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29619
    if-nez v0, :cond_0

    .line 29623
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29511
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    .locals 1

    .prologue
    .line 29549
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 29511
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 29571
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 29561
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

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
    .line 29576
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 29566
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 29628
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 29631
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 29632
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 29673
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 29674
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->validate()V

    .line 29675
    return-void

    .line 29635
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 29669
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 29671
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 29637
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 29638
    new-instance v1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 29639
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29641
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29645
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 29646
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 29647
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29649
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29653
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 29654
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 29655
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29657
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29661
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 29662
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 29663
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 29665
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 29635
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
    .line 29703
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
    .line 29678
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 29680
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29681
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29682
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29683
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 29698
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 29699
    return-void

    .line 29684
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29685
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29686
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29687
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 29688
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29689
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29690
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29691
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 29692
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29693
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29694
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29695
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
