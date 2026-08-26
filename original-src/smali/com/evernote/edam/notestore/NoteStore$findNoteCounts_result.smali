.class Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;
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
    name = "findNoteCounts_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;",
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

.field private success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 12882
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findNoteCounts_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 12884
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12885
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12886
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12887
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12898
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12904
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12905
    new-instance v0, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;-><init>(Lcom/evernote/edam/notestore/NoteCollectionCounts;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    .line 12907
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12908
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 12910
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12911
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 12913
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12914
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 12916
    :cond_3
    return-void
.end method

.method static synthetic access$10000(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12923
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    .line 12924
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 12925
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 12926
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 12927
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .prologue
    .line 12950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12951
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

    .line 12993
    :cond_0
    :goto_0
    return v0

    .line 12954
    :cond_1
    const/4 v0, 0x0

    .line 12955
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 12957
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12958
    if-nez v0, :cond_0

    .line 12961
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12962
    if-nez v0, :cond_0

    .line 12966
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12967
    if-nez v0, :cond_0

    .line 12970
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12971
    if-nez v0, :cond_0

    .line 12975
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12976
    if-nez v0, :cond_0

    .line 12979
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12980
    if-nez v0, :cond_0

    .line 12984
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12985
    if-nez v0, :cond_0

    .line 12988
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12989
    if-nez v0, :cond_0

    .line 12993
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12881
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;
    .locals 1

    .prologue
    .line 12919
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 12881
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 12946
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 12931
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

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
    .line 12941
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 12936
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 12998
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 13001
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 13002
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 13043
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 13044
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->validate()V

    .line 13045
    return-void

    .line 13005
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 13039
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 13041
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 13007
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 13008
    new-instance v1, Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    .line 13009
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 13011
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13015
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 13016
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 13017
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 13019
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13023
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 13024
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 13025
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 13027
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13031
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 13032
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 13033
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 13035
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 13005
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
    .line 13073
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
    .line 13048
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 13050
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13051
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13052
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->success:Lcom/evernote/edam/notestore/NoteCollectionCounts;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteCollectionCounts;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 13053
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 13067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 13068
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 13069
    return-void

    .line 13054
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13055
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13056
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 13057
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 13058
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13059
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13060
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 13061
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 13062
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13063
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 13064
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNoteCounts_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 13065
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
