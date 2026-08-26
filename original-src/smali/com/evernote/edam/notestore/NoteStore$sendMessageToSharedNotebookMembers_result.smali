.class Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;
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
    name = "sendMessageToSharedNotebookMembers_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;",
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

.field private static final __SUCCESS_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:I

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 25527
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "sendMessageToSharedNotebookMembers_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 25529
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25530
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25531
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25532
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25542
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    .line 25545
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    const/4 v3, 0x0

    .line 25550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25542
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    .line 25551
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25552
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    .line 25553
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25554
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25556
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25557
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25559
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25560
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25562
    :cond_2
    return-void
.end method

.method static synthetic access$23100(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)I
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    .line 25526
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    return v0
.end method

.method static synthetic access$23200(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    .line 25526
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$23300(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    .line 25526
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$23400(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    .line 25526
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25569
    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->setSuccessIsSet(Z)V

    .line 25570
    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    .line 25571
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25572
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25573
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25574
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .prologue
    .line 25601
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25602
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

    .line 25644
    :cond_0
    :goto_0
    return v0

    .line 25605
    :cond_1
    const/4 v0, 0x0

    .line 25606
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 25608
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25609
    if-nez v0, :cond_0

    .line 25612
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 25613
    if-nez v0, :cond_0

    .line 25617
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25618
    if-nez v0, :cond_0

    .line 25621
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25622
    if-nez v0, :cond_0

    .line 25626
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25627
    if-nez v0, :cond_0

    .line 25630
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25631
    if-nez v0, :cond_0

    .line 25635
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25636
    if-nez v0, :cond_0

    .line 25639
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25640
    if-nez v0, :cond_0

    .line 25644
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25526
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;
    .locals 1

    .prologue
    .line 25565
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 25526
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 25592
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 2

    .prologue
    .line 25578
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 25597
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 25587
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 25649
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 25652
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 25653
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 25694
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 25695
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->validate()V

    .line 25696
    return-void

    .line 25656
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 25690
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 25692
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 25658
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 25659
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    .line 25660
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 25662
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25666
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 25667
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25668
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25670
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25674
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 25675
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25676
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25678
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25682
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 25683
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25684
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25686
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSuccessIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 25582
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 25583
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
    .line 25724
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
    .line 25699
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 25701
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25702
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25703
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->success:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 25704
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25718
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 25719
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 25720
    return-void

    .line 25705
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25706
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25707
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25708
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 25709
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25710
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25711
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25712
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 25713
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25714
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25715
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$sendMessageToSharedNotebookMembers_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25716
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
