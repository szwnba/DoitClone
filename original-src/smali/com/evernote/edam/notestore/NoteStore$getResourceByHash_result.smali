.class Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;
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
    name = "getResourceByHash_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;",
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

.field private success:Lcom/evernote/edam/type/Resource;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 22715
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getResourceByHash_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 22717
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22718
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22719
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 22720
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22731
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22737
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22738
    new-instance v0, Lcom/evernote/edam/type/Resource;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    .line 22740
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22741
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 22743
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22744
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 22746
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22747
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 22749
    :cond_3
    return-void
.end method

.method static synthetic access$20000(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/type/Resource;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    return-object v0
.end method

.method static synthetic access$20100(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$20200(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$20300(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22714
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22756
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    .line 22757
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 22758
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 22759
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 22760
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .prologue
    .line 22783
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22784
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

    .line 22826
    :cond_0
    :goto_0
    return v0

    .line 22787
    :cond_1
    const/4 v0, 0x0

    .line 22788
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 22790
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22791
    if-nez v0, :cond_0

    .line 22794
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 22795
    if-nez v0, :cond_0

    .line 22799
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22800
    if-nez v0, :cond_0

    .line 22803
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 22804
    if-nez v0, :cond_0

    .line 22808
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22809
    if-nez v0, :cond_0

    .line 22812
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 22813
    if-nez v0, :cond_0

    .line 22817
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 22818
    if-nez v0, :cond_0

    .line 22821
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 22822
    if-nez v0, :cond_0

    .line 22826
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22714
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;
    .locals 1

    .prologue
    .line 22752
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 22714
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 22779
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 22764
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

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
    .line 22774
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 22769
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 22831
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 22834
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 22835
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 22876
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 22877
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->validate()V

    .line 22878
    return-void

    .line 22838
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 22872
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 22874
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 22840
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 22841
    new-instance v1, Lcom/evernote/edam/type/Resource;

    invoke-direct {v1}, Lcom/evernote/edam/type/Resource;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    .line 22842
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Resource;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 22844
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22848
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 22849
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 22850
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 22852
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22856
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 22857
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 22858
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 22860
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22864
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 22865
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 22866
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 22868
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 22838
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
    .line 22906
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
    .line 22881
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 22883
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22884
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22885
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->success:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Resource;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 22886
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 22900
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 22901
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 22902
    return-void

    .line 22887
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22888
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22889
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 22890
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 22891
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22892
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22893
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 22894
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 22895
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22896
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 22897
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceByHash_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 22898
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
