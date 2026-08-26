.class Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;
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
    name = "getSharedNotebookByAuth_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;",
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

.field private success:Lcom/evernote/edam/type/SharedNotebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 28196
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSharedNotebookByAuth_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 28198
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28199
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28200
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28201
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28212
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28218
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28219
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 28221
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28222
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28224
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28225
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28227
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28228
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28230
    :cond_3
    return-void
.end method

.method static synthetic access$26300(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28195
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    return-object v0
.end method

.method static synthetic access$26400(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28195
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$26500(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28195
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$26600(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28195
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28237
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 28238
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28239
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28240
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28241
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .prologue
    .line 28264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28265
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

    .line 28307
    :cond_0
    :goto_0
    return v0

    .line 28268
    :cond_1
    const/4 v0, 0x0

    .line 28269
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 28271
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28272
    if-nez v0, :cond_0

    .line 28275
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28276
    if-nez v0, :cond_0

    .line 28280
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28281
    if-nez v0, :cond_0

    .line 28284
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28285
    if-nez v0, :cond_0

    .line 28289
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28290
    if-nez v0, :cond_0

    .line 28293
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28294
    if-nez v0, :cond_0

    .line 28298
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28299
    if-nez v0, :cond_0

    .line 28302
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28303
    if-nez v0, :cond_0

    .line 28307
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28195
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;
    .locals 1

    .prologue
    .line 28233
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 28195
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 28255
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 28245
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

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
    .line 28260
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 28250
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 28312
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 28315
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 28316
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 28357
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 28358
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->validate()V

    .line 28359
    return-void

    .line 28319
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 28353
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 28355
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 28321
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 28322
    new-instance v1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 28323
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28325
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28329
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 28330
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28331
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28333
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28337
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 28338
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28339
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28341
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28345
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 28346
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28347
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28349
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28319
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
    .line 28387
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
    .line 28362
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 28364
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28365
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28366
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 28367
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 28381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 28382
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 28383
    return-void

    .line 28368
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28369
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28370
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 28371
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 28372
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28373
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28374
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 28375
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 28376
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28377
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 28378
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSharedNotebookByAuth_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 28379
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
