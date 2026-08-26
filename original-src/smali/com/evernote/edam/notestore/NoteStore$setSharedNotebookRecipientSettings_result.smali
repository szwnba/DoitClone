.class Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;
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
    name = "setSharedNotebookRecipientSettings_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;",
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

    .line 25092
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "setSharedNotebookRecipientSettings_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 25094
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25095
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25096
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25097
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25107
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    .line 25110
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    const/4 v3, 0x0

    .line 25115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25107
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    .line 25116
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25117
    iget v0, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    iput v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    .line 25118
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25119
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25121
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25122
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25124
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25125
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25127
    :cond_2
    return-void
.end method

.method static synthetic access$22700(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)I
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    .line 25091
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    return v0
.end method

.method static synthetic access$22800(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    .line 25091
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$22900(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    .line 25091
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$23000(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    .line 25091
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25134
    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->setSuccessIsSet(Z)V

    .line 25135
    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    .line 25136
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25137
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25138
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25139
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .prologue
    .line 25166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25167
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

    .line 25209
    :cond_0
    :goto_0
    return v0

    .line 25170
    :cond_1
    const/4 v0, 0x0

    .line 25171
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 25173
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25174
    if-nez v0, :cond_0

    .line 25177
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    iget v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 25178
    if-nez v0, :cond_0

    .line 25182
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25183
    if-nez v0, :cond_0

    .line 25186
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25187
    if-nez v0, :cond_0

    .line 25191
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25192
    if-nez v0, :cond_0

    .line 25195
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25196
    if-nez v0, :cond_0

    .line 25200
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25201
    if-nez v0, :cond_0

    .line 25204
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25205
    if-nez v0, :cond_0

    .line 25209
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25091
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;
    .locals 1

    .prologue
    .line 25130
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 25091
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 25157
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 25143
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 25162
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 25152
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 25214
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 25217
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 25218
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 25259
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 25260
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->validate()V

    .line 25261
    return-void

    .line 25221
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 25255
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 25257
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 25223
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 25224
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    .line 25225
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 25227
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25231
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 25232
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25233
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25235
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25239
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 25240
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25241
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25243
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25247
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 25248
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25249
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25251
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25221
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
    .line 25147
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 25148
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
    .line 25289
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
    .line 25264
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 25266
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25267
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25268
    iget v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->success:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 25269
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 25283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 25284
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 25285
    return-void

    .line 25270
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25271
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25272
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25273
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 25274
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25275
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25276
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25277
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 25278
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25279
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 25280
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$setSharedNotebookRecipientSettings_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25281
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
