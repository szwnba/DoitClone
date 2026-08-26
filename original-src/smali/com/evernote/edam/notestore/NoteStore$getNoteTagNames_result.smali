.class Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;
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
    name = "getNoteTagNames_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;",
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

.field private success:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 16302
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteTagNames_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 16304
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16305
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16306
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16307
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16318
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)V
    .locals 5
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16324
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16326
    .local v0, "__this__success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16327
    .local v2, "other_element":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16329
    .end local v2    # "other_element":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    .line 16331
    .end local v0    # "__this__success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetUserException()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16332
    new-instance v3, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16334
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSystemException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16335
    new-instance v3, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16337
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetNotFoundException()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16338
    new-instance v3, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16340
    :cond_4
    return-void
.end method

.method static synthetic access$13300(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16301
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16301
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16301
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16301
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16347
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    .line 16348
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16349
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16350
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16351
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .prologue
    .line 16374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16375
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

    .line 16417
    :cond_0
    :goto_0
    return v0

    .line 16378
    :cond_1
    const/4 v0, 0x0

    .line 16379
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 16381
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16382
    if-nez v0, :cond_0

    .line 16385
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 16386
    if-nez v0, :cond_0

    .line 16390
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16391
    if-nez v0, :cond_0

    .line 16394
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16395
    if-nez v0, :cond_0

    .line 16399
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16400
    if-nez v0, :cond_0

    .line 16403
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16404
    if-nez v0, :cond_0

    .line 16408
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16409
    if-nez v0, :cond_0

    .line 16412
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16413
    if-nez v0, :cond_0

    .line 16417
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16301
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;
    .locals 1

    .prologue
    .line 16343
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 16301
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 16370
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 16355
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

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
    .line 16365
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 16360
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    .line 16422
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 16425
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 16426
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 16476
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 16477
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->validate()V

    .line 16478
    return-void

    .line 16429
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 16472
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 16474
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 16431
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 16433
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 16434
    .local v2, "_list126":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    .line 16435
    const/4 v1, 0x0

    .local v1, "_i127":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_1

    .line 16438
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16439
    .local v0, "_elem128":Ljava/lang/String;
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16435
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16441
    .end local v0    # "_elem128":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 16444
    .end local v1    # "_i127":I
    .end local v2    # "_list126":Lcom/evernote/thrift/protocol/TList;
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16448
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 16449
    new-instance v4, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16450
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16452
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16456
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 16457
    new-instance v4, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16458
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16460
    :cond_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16464
    :pswitch_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_5

    .line 16465
    new-instance v4, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16466
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16468
    :cond_5
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16429
    nop

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
    .line 16513
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 16481
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 16483
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16484
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16486
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 16487
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->success:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16489
    .local v0, "_iter129":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 16491
    .end local v0    # "_iter129":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 16493
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 16507
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 16508
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 16509
    return-void

    .line 16494
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16495
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16496
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16497
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 16498
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16499
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16500
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16501
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 16502
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16503
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16504
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteTagNames_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16505
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1
.end method
