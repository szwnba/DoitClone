.class Lcom/evernote/edam/notestore/NoteStore$shareNote_result;
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
    name = "shareNote_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$shareNote_result;",
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

    .line 28837
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "shareNote_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 28839
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28840
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28841
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 28842
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28853
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28859
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28860
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    .line 28862
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28863
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28865
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28866
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28868
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28869
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28871
    :cond_3
    return-void
.end method

.method static synthetic access$27000(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28836
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27100(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28836
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$27200(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28836
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$27300(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28836
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28878
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    .line 28879
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28880
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28881
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28882
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .prologue
    .line 28905
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28906
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

    .line 28948
    :cond_0
    :goto_0
    return v0

    .line 28909
    :cond_1
    const/4 v0, 0x0

    .line 28910
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 28912
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$shareNote_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28913
    if-nez v0, :cond_0

    .line 28916
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28917
    if-nez v0, :cond_0

    .line 28921
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28922
    if-nez v0, :cond_0

    .line 28925
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28926
    if-nez v0, :cond_0

    .line 28930
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28931
    if-nez v0, :cond_0

    .line 28934
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28935
    if-nez v0, :cond_0

    .line 28939
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 28940
    if-nez v0, :cond_0

    .line 28943
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 28944
    if-nez v0, :cond_0

    .line 28948
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28836
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$shareNote_result;
    .locals 1

    .prologue
    .line 28874
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$shareNote_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 28836
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$shareNote_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 28896
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 28886
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

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
    .line 28901
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 28891
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 28953
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 28956
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 28957
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 28997
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 28998
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->validate()V

    .line 28999
    return-void

    .line 28960
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 28993
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 28995
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 28962
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 28963
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    goto :goto_1

    .line 28965
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28969
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 28970
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 28971
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28973
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28977
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 28978
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 28979
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28981
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28985
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 28986
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 28987
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 28989
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 28960
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
    .line 29027
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
    .line 29002
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 29004
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29005
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29006
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->success:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 29007
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 29021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 29022
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 29023
    return-void

    .line 29008
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29009
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29010
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29011
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 29012
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29013
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29014
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29015
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 29016
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29017
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 29018
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$shareNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 29019
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
