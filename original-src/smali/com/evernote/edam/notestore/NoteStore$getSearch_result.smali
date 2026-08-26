.class Lcom/evernote/edam/notestore/NoteStore$getSearch_result;
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
    name = "getSearch_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSearch_result;",
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

.field private success:Lcom/evernote/edam/type/SavedSearch;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 10259
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSearch_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 10261
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 10262
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 10263
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 10264
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10275
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10281
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10282
    new-instance v0, Lcom/evernote/edam/type/SavedSearch;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    .line 10284
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10285
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 10287
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10288
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 10290
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10291
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 10293
    :cond_3
    return-void
.end method

.method static synthetic access$7000(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10258
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10258
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10258
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10258
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10300
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    .line 10301
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 10302
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 10303
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 10304
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .prologue
    .line 10327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10328
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

    .line 10370
    :cond_0
    :goto_0
    return v0

    .line 10331
    :cond_1
    const/4 v0, 0x0

    .line 10332
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 10334
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSearch_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10335
    if-nez v0, :cond_0

    .line 10338
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10339
    if-nez v0, :cond_0

    .line 10343
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10344
    if-nez v0, :cond_0

    .line 10347
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10348
    if-nez v0, :cond_0

    .line 10352
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10353
    if-nez v0, :cond_0

    .line 10356
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10357
    if-nez v0, :cond_0

    .line 10361
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10362
    if-nez v0, :cond_0

    .line 10365
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10366
    if-nez v0, :cond_0

    .line 10370
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10258
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSearch_result;
    .locals 1

    .prologue
    .line 10296
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSearch_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 10258
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSearch_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 10323
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 10308
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

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
    .line 10318
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 10313
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 10375
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 10378
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 10379
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 10420
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 10421
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->validate()V

    .line 10422
    return-void

    .line 10382
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 10416
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 10418
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 10384
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 10385
    new-instance v1, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v1}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    .line 10386
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10388
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10392
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 10393
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 10394
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10396
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10400
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 10401
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 10402
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10404
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10408
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 10409
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 10410
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10412
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10382
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
    .line 10450
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
    .line 10425
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 10427
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10428
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10429
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->success:Lcom/evernote/edam/type/SavedSearch;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10430
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10444
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 10445
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 10446
    return-void

    .line 10431
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10432
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10433
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10434
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 10435
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10436
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10437
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10438
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 10439
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10440
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10441
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10442
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
