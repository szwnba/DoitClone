.class Lcom/evernote/edam/notestore/NoteStore$createTag_result;
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
    name = "createTag_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createTag_result;",
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

.field private success:Lcom/evernote/edam/type/Tag;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 8645
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createTag_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 8647
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8648
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8649
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 8650
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8661
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8667
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8668
    new-instance v0, Lcom/evernote/edam/type/Tag;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8670
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8671
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8673
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8674
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8676
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8677
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8679
    :cond_3
    return-void
.end method

.method static synthetic access$5200(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8644
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8644
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8644
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8644
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8686
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8687
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8688
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8689
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8690
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .prologue
    .line 8713
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8714
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

    .line 8756
    :cond_0
    :goto_0
    return v0

    .line 8717
    :cond_1
    const/4 v0, 0x0

    .line 8718
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 8720
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createTag_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8721
    if-nez v0, :cond_0

    .line 8724
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8725
    if-nez v0, :cond_0

    .line 8729
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8730
    if-nez v0, :cond_0

    .line 8733
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8734
    if-nez v0, :cond_0

    .line 8738
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8739
    if-nez v0, :cond_0

    .line 8742
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8743
    if-nez v0, :cond_0

    .line 8747
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 8748
    if-nez v0, :cond_0

    .line 8751
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 8752
    if-nez v0, :cond_0

    .line 8756
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8644
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createTag_result;
    .locals 1

    .prologue
    .line 8682
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$createTag_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createTag_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 8709
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 8694
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

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
    .line 8704
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 8699
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 8761
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 8764
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 8765
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 8806
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 8807
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->validate()V

    .line 8808
    return-void

    .line 8768
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 8802
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 8804
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 8770
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 8771
    new-instance v1, Lcom/evernote/edam/type/Tag;

    invoke-direct {v1}, Lcom/evernote/edam/type/Tag;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 8772
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Tag;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8774
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8778
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 8779
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 8780
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8782
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8786
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 8787
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 8788
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8790
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8794
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 8795
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 8796
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 8798
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 8768
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
    .line 8836
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
    .line 8811
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 8813
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8814
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8815
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8816
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 8830
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 8831
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 8832
    return-void

    .line 8817
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8818
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8819
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8820
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 8821
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8822
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8823
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8824
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 8825
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8826
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 8827
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 8828
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
