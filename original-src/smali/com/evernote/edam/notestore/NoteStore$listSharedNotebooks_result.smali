.class Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;
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
    name = "listSharedNotebooks_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;",
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

.field private success:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/SharedNotebook;",
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

    .line 25833
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "listSharedNotebooks_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 25835
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25836
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25837
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 25838
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25849
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)V
    .locals 5
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25855
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25857
    .local v0, "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SharedNotebook;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/SharedNotebook;

    .line 25858
    .local v2, "other_element":Lcom/evernote/edam/type/SharedNotebook;
    new-instance v3, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25860
    .end local v2    # "other_element":Lcom/evernote/edam/type/SharedNotebook;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    .line 25862
    .end local v0    # "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/SharedNotebook;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetUserException()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25863
    new-instance v3, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25865
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetNotFoundException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25866
    new-instance v3, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25868
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSystemException()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25869
    new-instance v3, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25871
    :cond_4
    return-void
.end method

.method static synthetic access$23500(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25832
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23600(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25832
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$23700(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25832
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$23800(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25832
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25878
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    .line 25879
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25880
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25881
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25882
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .prologue
    .line 25905
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25906
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

    .line 25948
    :cond_0
    :goto_0
    return v0

    .line 25909
    :cond_1
    const/4 v0, 0x0

    .line 25910
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 25912
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25913
    if-nez v0, :cond_0

    .line 25916
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 25917
    if-nez v0, :cond_0

    .line 25921
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25922
    if-nez v0, :cond_0

    .line 25925
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25926
    if-nez v0, :cond_0

    .line 25930
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25931
    if-nez v0, :cond_0

    .line 25934
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25935
    if-nez v0, :cond_0

    .line 25939
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 25940
    if-nez v0, :cond_0

    .line 25943
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 25944
    if-nez v0, :cond_0

    .line 25948
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25832
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;
    .locals 1

    .prologue
    .line 25874
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 25832
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 25896
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 25886
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

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
    .line 25901
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 25891
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 25953
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 25956
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 25957
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 26008
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 26009
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->validate()V

    .line 26010
    return-void

    .line 25960
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 26004
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 26006
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 25962
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 25964
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 25965
    .local v2, "_list142":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    .line 25966
    const/4 v1, 0x0

    .local v1, "_i143":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_1

    .line 25969
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0}, Lcom/evernote/edam/type/SharedNotebook;-><init>()V

    .line 25970
    .local v0, "_elem144":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 25971
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25966
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25973
    .end local v0    # "_elem144":Lcom/evernote/edam/type/SharedNotebook;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 25976
    .end local v1    # "_i143":I
    .end local v2    # "_list142":Lcom/evernote/thrift/protocol/TList;
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25980
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 25981
    new-instance v4, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 25982
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25984
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25988
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 25989
    new-instance v4, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 25990
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 25992
    :cond_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25996
    :pswitch_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_5

    .line 25997
    new-instance v4, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 25998
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26000
    :cond_5
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 25960
    nop

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
    .line 26045
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
    .line 26013
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 26015
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26016
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26018
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 26019
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->success:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/SharedNotebook;

    .line 26021
    .local v0, "_iter145":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 26023
    .end local v0    # "_iter145":Lcom/evernote/edam/type/SharedNotebook;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 26025
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26039
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 26040
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 26041
    return-void

    .line 26026
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26027
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26028
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26029
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 26030
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26031
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26032
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26033
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 26034
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26035
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26036
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listSharedNotebooks_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26037
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1
.end method
