.class Lcom/evernote/edam/notestore/NoteStore$listSearches_result;
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
    name = "listSearches_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$listSearches_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private success:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SavedSearch;",
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

    .line 9934
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "listSearches_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 9936
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 9937
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 9938
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9948
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)V
    .locals 5
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .prologue
    .line 9953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9954
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9956
    .local v0, "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SavedSearch;

    .line 9957
    .local v2, "other_element":Lcom/evernote/edam/type/SavedSearch;
    new-instance v3, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/SavedSearch;-><init>(Lcom/evernote/edam/type/SavedSearch;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9959
    .end local v2    # "other_element":Lcom/evernote/edam/type/SavedSearch;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    .line 9961
    .end local v0    # "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SavedSearch;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetUserException()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9962
    new-instance v3, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 9964
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSystemException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9965
    new-instance v3, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 9967
    :cond_3
    return-void
.end method

.method static synthetic access$6700(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .prologue
    .line 9933
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .prologue
    .line 9933
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .prologue
    .line 9933
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9974
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    .line 9975
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 9976
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 9977
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .prologue
    .line 9995
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9996
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

    .line 10029
    :cond_0
    :goto_0
    return v0

    .line 9999
    :cond_1
    const/4 v0, 0x0

    .line 10000
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 10002
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$listSearches_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10003
    if-nez v0, :cond_0

    .line 10006
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 10007
    if-nez v0, :cond_0

    .line 10011
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10012
    if-nez v0, :cond_0

    .line 10015
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10016
    if-nez v0, :cond_0

    .line 10020
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 10021
    if-nez v0, :cond_0

    .line 10024
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 10025
    if-nez v0, :cond_0

    .line 10029
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9933
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$listSearches_result;
    .locals 1

    .prologue
    .line 9970
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$listSearches_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 9933
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$listSearches_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 9981
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

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
    .line 9991
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 9986
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 10034
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 10037
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 10038
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 10081
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 10082
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->validate()V

    .line 10083
    return-void

    .line 10041
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 10077
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 10079
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 10043
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 10045
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 10046
    .local v2, "_list122":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    .line 10047
    const/4 v1, 0x0

    .local v1, "_i123":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_1

    .line 10050
    new-instance v0, Lcom/evernote/edam/type/SavedSearch;

    invoke-direct {v0}, Lcom/evernote/edam/type/SavedSearch;-><init>()V

    .line 10051
    .local v0, "_elem124":Lcom/evernote/edam/type/SavedSearch;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearch;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10052
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10047
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10054
    .end local v0    # "_elem124":Lcom/evernote/edam/type/SavedSearch;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 10057
    .end local v1    # "_i123":I
    .end local v2    # "_list122":Lcom/evernote/thrift/protocol/TList;
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10061
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 10062
    new-instance v4, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 10063
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10065
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10069
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 10070
    new-instance v4, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 10071
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 10073
    :cond_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 10041
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
    .line 10114
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
    .line 10086
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 10088
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10089
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10091
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 10092
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->success:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/SavedSearch;

    .line 10094
    .local v0, "_iter125":Lcom/evernote/edam/type/SavedSearch;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SavedSearch;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 10096
    .end local v0    # "_iter125":Lcom/evernote/edam/type/SavedSearch;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 10098
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 10108
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 10109
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 10110
    return-void

    .line 10099
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10100
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10101
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10102
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 10103
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10104
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 10105
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSearches_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 10106
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1
.end method
