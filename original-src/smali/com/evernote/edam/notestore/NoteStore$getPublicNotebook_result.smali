.class Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;
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
    name = "getPublicNotebook_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;",
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


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/Notebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 24065
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getPublicNotebook_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 24067
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 24068
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 24069
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24079
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .prologue
    .line 24084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24085
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24086
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 24088
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24089
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 24091
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24092
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 24094
    :cond_2
    return-void
.end method

.method static synthetic access$21600(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .prologue
    .line 24064
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    return-object v0
.end method

.method static synthetic access$21700(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .prologue
    .line 24064
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$21800(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .prologue
    .line 24064
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24101
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 24102
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 24103
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 24104
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .prologue
    .line 24122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24123
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

    .line 24156
    :cond_0
    :goto_0
    return v0

    .line 24126
    :cond_1
    const/4 v0, 0x0

    .line 24127
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 24129
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24130
    if-nez v0, :cond_0

    .line 24133
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 24134
    if-nez v0, :cond_0

    .line 24138
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24139
    if-nez v0, :cond_0

    .line 24142
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 24143
    if-nez v0, :cond_0

    .line 24147
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 24148
    if-nez v0, :cond_0

    .line 24151
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 24152
    if-nez v0, :cond_0

    .line 24156
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24064
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;
    .locals 1

    .prologue
    .line 24097
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 24064
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 24118
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 24108
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

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
    .line 24113
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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

    .line 24161
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 24164
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 24165
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 24198
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 24199
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->validate()V

    .line 24200
    return-void

    .line 24168
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 24194
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 24196
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 24170
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 24171
    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    .line 24172
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 24174
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24178
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 24179
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 24180
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 24182
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24186
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 24187
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 24188
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 24190
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 24168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 24224
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
    .line 24203
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 24205
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24206
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24207
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->success:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Notebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 24208
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 24218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 24219
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 24220
    return-void

    .line 24209
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24210
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24211
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 24212
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 24213
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24214
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 24215
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getPublicNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 24216
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
