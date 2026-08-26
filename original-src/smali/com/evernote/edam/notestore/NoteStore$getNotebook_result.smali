.class Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;
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
    name = "getNotebook_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;",
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

.field private success:Lcom/evernote/edam/type/Notebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 6068
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNotebook_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 6070
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6071
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6072
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 6073
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6084
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6090
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6091
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6093
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6094
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6096
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6097
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6099
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6100
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 6102
    :cond_3
    return-void
.end method

.method static synthetic access$2300(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6109
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6110
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6111
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6112
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 6113
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .prologue
    .line 6136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6137
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

    .line 6179
    :cond_0
    :goto_0
    return v0

    .line 6140
    :cond_1
    const/4 v0, 0x0

    .line 6141
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 6143
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6144
    if-nez v0, :cond_0

    .line 6147
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6148
    if-nez v0, :cond_0

    .line 6152
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6153
    if-nez v0, :cond_0

    .line 6156
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6157
    if-nez v0, :cond_0

    .line 6161
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6162
    if-nez v0, :cond_0

    .line 6165
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6166
    if-nez v0, :cond_0

    .line 6170
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 6171
    if-nez v0, :cond_0

    .line 6174
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 6175
    if-nez v0, :cond_0

    .line 6179
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6067
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;
    .locals 1

    .prologue
    .line 6105
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 6067
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 6132
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 6117
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

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
    .line 6127
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 6122
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 6184
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 6187
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 6188
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 6229
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 6230
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->validate()V

    .line 6231
    return-void

    .line 6191
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 6225
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 6227
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 6193
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 6194
    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 6195
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6197
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6201
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 6202
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 6203
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6205
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6209
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 6210
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 6211
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6213
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6217
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 6218
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 6219
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 6221
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 6191
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
    .line 6259
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
    .line 6234
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 6236
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6237
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6238
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6239
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 6253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 6254
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 6255
    return-void

    .line 6240
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6241
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6242
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6243
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 6244
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6245
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6246
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6247
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 6248
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6249
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 6250
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 6251
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
