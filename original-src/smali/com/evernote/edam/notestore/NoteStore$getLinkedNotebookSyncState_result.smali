.class Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;
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
    name = "getLinkedNotebookSyncState_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;",
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

.field private success:Lcom/evernote/edam/notestore/SyncState;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 4984
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getLinkedNotebookSyncState_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4986
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4987
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4988
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4989
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5000
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 5005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5006
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5007
    new-instance v0, Lcom/evernote/edam/notestore/SyncState;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncState;-><init>(Lcom/evernote/edam/notestore/SyncState;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 5009
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5010
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 5012
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5013
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 5015
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5016
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 5018
    :cond_3
    return-void
.end method

.method static synthetic access$1200(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5025
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 5026
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 5027
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 5028
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 5029
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .prologue
    .line 5052
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5053
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

    .line 5095
    :cond_0
    :goto_0
    return v0

    .line 5056
    :cond_1
    const/4 v0, 0x0

    .line 5057
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 5059
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5060
    if-nez v0, :cond_0

    .line 5063
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 5064
    if-nez v0, :cond_0

    .line 5068
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5069
    if-nez v0, :cond_0

    .line 5072
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 5073
    if-nez v0, :cond_0

    .line 5077
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5078
    if-nez v0, :cond_0

    .line 5081
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 5082
    if-nez v0, :cond_0

    .line 5086
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 5087
    if-nez v0, :cond_0

    .line 5090
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 5091
    if-nez v0, :cond_0

    .line 5095
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4983
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;
    .locals 1

    .prologue
    .line 5021
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4983
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 5048
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 5033
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

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
    .line 5043
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 5038
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 5100
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 5103
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 5104
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 5145
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 5146
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->validate()V

    .line 5147
    return-void

    .line 5107
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 5141
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 5143
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 5109
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 5110
    new-instance v1, Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncState;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 5111
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncState;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 5113
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5117
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 5118
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 5119
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 5121
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5125
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 5126
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 5127
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 5129
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5133
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 5134
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 5135
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 5137
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 5107
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
    .line 5175
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
    .line 5150
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 5152
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5153
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5154
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncState;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 5155
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 5169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 5170
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 5171
    return-void

    .line 5156
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5157
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5158
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 5159
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 5160
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5161
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5162
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 5163
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 5164
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5165
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 5166
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getLinkedNotebookSyncState_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 5167
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
