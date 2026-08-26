.class Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;
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
    name = "getNoteContent_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;",
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

.field private success:Ljava/lang/String;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 15215
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteContent_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 15217
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15218
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15219
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 15220
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15231
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15237
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15238
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    .line 15240
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15241
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 15243
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15244
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 15246
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15247
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 15249
    :cond_3
    return-void
.end method

.method static synthetic access$12100(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15214
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15214
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15214
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15214
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15256
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    .line 15257
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 15258
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 15259
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 15260
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .prologue
    .line 15283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15284
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

    .line 15326
    :cond_0
    :goto_0
    return v0

    .line 15287
    :cond_1
    const/4 v0, 0x0

    .line 15288
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 15290
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15291
    if-nez v0, :cond_0

    .line 15294
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15295
    if-nez v0, :cond_0

    .line 15299
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15300
    if-nez v0, :cond_0

    .line 15303
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 15304
    if-nez v0, :cond_0

    .line 15308
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15309
    if-nez v0, :cond_0

    .line 15312
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 15313
    if-nez v0, :cond_0

    .line 15317
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 15318
    if-nez v0, :cond_0

    .line 15321
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 15322
    if-nez v0, :cond_0

    .line 15326
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15214
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;
    .locals 1

    .prologue
    .line 15252
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 15214
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 15279
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 15264
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

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
    .line 15274
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 15269
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 15331
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 15334
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 15335
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 15375
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 15376
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->validate()V

    .line 15377
    return-void

    .line 15338
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 15371
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 15373
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 15340
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 15341
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    goto :goto_1

    .line 15343
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15347
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 15348
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 15349
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 15351
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15355
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 15356
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 15357
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 15359
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15363
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 15364
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 15365
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 15367
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 15338
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
    .line 15405
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
    .line 15380
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 15382
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15383
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15384
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->success:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 15385
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 15399
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 15400
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 15401
    return-void

    .line 15386
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15387
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15388
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 15389
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 15390
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15391
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15392
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 15393
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 15394
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15395
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 15396
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteContent_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 15397
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
