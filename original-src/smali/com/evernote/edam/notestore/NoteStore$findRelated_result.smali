.class Lcom/evernote/edam/notestore/NoteStore$findRelated_result;
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
    name = "findRelated_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findRelated_result;",
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

.field private success:Lcom/evernote/edam/notestore/RelatedResult;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 29886
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findRelated_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 29888
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29889
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29890
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 29891
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29902
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29908
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29909
    new-instance v0, Lcom/evernote/edam/notestore/RelatedResult;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/RelatedResult;-><init>(Lcom/evernote/edam/notestore/RelatedResult;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    .line 29911
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29912
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 29914
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29915
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 29917
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29918
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 29920
    :cond_3
    return-void
.end method

.method static synthetic access$28100(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/notestore/RelatedResult;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29885
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    return-object v0
.end method

.method static synthetic access$28200(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29885
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$28300(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29885
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$28400(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29885
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29927
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    .line 29928
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 29929
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 29930
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 29931
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .prologue
    .line 29954
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29955
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

    .line 29997
    :cond_0
    :goto_0
    return v0

    .line 29958
    :cond_1
    const/4 v0, 0x0

    .line 29959
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 29961
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findRelated_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29962
    if-nez v0, :cond_0

    .line 29965
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29966
    if-nez v0, :cond_0

    .line 29970
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29971
    if-nez v0, :cond_0

    .line 29974
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29975
    if-nez v0, :cond_0

    .line 29979
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29980
    if-nez v0, :cond_0

    .line 29983
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29984
    if-nez v0, :cond_0

    .line 29988
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 29989
    if-nez v0, :cond_0

    .line 29992
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 29993
    if-nez v0, :cond_0

    .line 29997
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29885
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findRelated_result;
    .locals 1

    .prologue
    .line 29923
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$findRelated_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 29885
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findRelated_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 29950
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 29935
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

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
    .line 29945
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 29940
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 30002
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 30005
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 30006
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 30047
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 30048
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->validate()V

    .line 30049
    return-void

    .line 30009
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 30043
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 30045
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 30011
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 30012
    new-instance v1, Lcom/evernote/edam/notestore/RelatedResult;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/RelatedResult;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    .line 30013
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/RelatedResult;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 30015
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 30019
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 30020
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 30021
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 30023
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 30027
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 30028
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 30029
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 30031
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 30035
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 30036
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 30037
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 30039
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 30009
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
    .line 30077
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
    .line 30052
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 30054
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30055
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 30056
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->success:Lcom/evernote/edam/notestore/RelatedResult;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/RelatedResult;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 30057
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 30071
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 30072
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 30073
    return-void

    .line 30058
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30059
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 30060
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 30061
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 30062
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30063
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 30064
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 30065
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 30066
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30067
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 30068
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findRelated_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 30069
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
