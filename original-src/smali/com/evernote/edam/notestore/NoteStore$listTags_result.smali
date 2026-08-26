.class Lcom/evernote/edam/notestore/NoteStore$listTags_result;
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
    name = "listTags_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$listTags_result;",
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
            "Lcom/evernote/edam/type/Tag;",
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

    .line 7626
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "listTags_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 7628
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 7629
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 7630
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7640
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)V
    .locals 5
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .prologue
    .line 7645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7646
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7648
    .local v0, "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/Tag;

    .line 7649
    .local v2, "other_element":Lcom/evernote/edam/type/Tag;
    new-instance v3, Lcom/evernote/edam/type/Tag;

    invoke-direct {v3, v2}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7651
    .end local v2    # "other_element":Lcom/evernote/edam/type/Tag;
    :cond_0
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    .line 7653
    .end local v0    # "__this__success":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Tag;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetUserException()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7654
    new-instance v3, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 7656
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSystemException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7657
    new-instance v3, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v4, p1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v3, v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 7659
    :cond_3
    return-void
.end method

.method static synthetic access$4100(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7666
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    .line 7667
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 7668
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 7669
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .prologue
    .line 7687
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7688
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

    .line 7721
    :cond_0
    :goto_0
    return v0

    .line 7691
    :cond_1
    const/4 v0, 0x0

    .line 7692
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 7694
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$listTags_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 7695
    if-nez v0, :cond_0

    .line 7698
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 7699
    if-nez v0, :cond_0

    .line 7703
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 7704
    if-nez v0, :cond_0

    .line 7707
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 7708
    if-nez v0, :cond_0

    .line 7712
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 7713
    if-nez v0, :cond_0

    .line 7716
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 7717
    if-nez v0, :cond_0

    .line 7721
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7625
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$listTags_result;
    .locals 1

    .prologue
    .line 7662
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$listTags_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 7625
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$listTags_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 7673
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

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
    .line 7683
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 7678
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 7726
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 7729
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 7730
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 7773
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 7774
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->validate()V

    .line 7775
    return-void

    .line 7733
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 7769
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 7771
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 7735
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 7737
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 7738
    .local v2, "_list114":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    .line 7739
    const/4 v1, 0x0

    .local v1, "_i115":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_1

    .line 7742
    new-instance v0, Lcom/evernote/edam/type/Tag;

    invoke-direct {v0}, Lcom/evernote/edam/type/Tag;-><init>()V

    .line 7743
    .local v0, "_elem116":Lcom/evernote/edam/type/Tag;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 7744
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7739
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7746
    .end local v0    # "_elem116":Lcom/evernote/edam/type/Tag;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 7749
    .end local v1    # "_i115":I
    .end local v2    # "_list114":Lcom/evernote/thrift/protocol/TList;
    :cond_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 7753
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 7754
    new-instance v4, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 7755
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 7757
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 7761
    :pswitch_2
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 7762
    new-instance v4, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v4}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 7763
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v4, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 7765
    :cond_4
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 7733
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
    .line 7806
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
    .line 7778
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 7780
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7781
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 7783
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 7784
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->success:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/Tag;

    .line 7786
    .local v0, "_iter117":Lcom/evernote/edam/type/Tag;
    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 7788
    .end local v0    # "_iter117":Lcom/evernote/edam/type/Tag;
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 7790
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 7800
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 7801
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 7802
    return-void

    .line 7791
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7792
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 7793
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 7794
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1

    .line 7795
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7796
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 7797
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTags_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v2, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 7798
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_1
.end method
