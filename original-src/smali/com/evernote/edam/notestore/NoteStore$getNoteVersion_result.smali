.class Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;
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
    name = "getNoteVersion_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;",
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

.field private success:Lcom/evernote/edam/type/Note;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 19544
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getNoteVersion_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 19546
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19547
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19548
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 19549
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19560
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19566
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19567
    new-instance v0, Lcom/evernote/edam/type/Note;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    .line 19569
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19570
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 19572
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19573
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19575
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19576
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19578
    :cond_3
    return-void
.end method

.method static synthetic access$16800(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19543
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19543
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19543
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19543
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19585
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    .line 19586
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 19587
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19588
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19589
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .prologue
    .line 19612
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19613
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

    .line 19655
    :cond_0
    :goto_0
    return v0

    .line 19616
    :cond_1
    const/4 v0, 0x0

    .line 19617
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 19619
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19620
    if-nez v0, :cond_0

    .line 19623
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19624
    if-nez v0, :cond_0

    .line 19628
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19629
    if-nez v0, :cond_0

    .line 19632
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19633
    if-nez v0, :cond_0

    .line 19637
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19638
    if-nez v0, :cond_0

    .line 19641
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19642
    if-nez v0, :cond_0

    .line 19646
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19647
    if-nez v0, :cond_0

    .line 19650
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19651
    if-nez v0, :cond_0

    .line 19655
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19543
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;
    .locals 1

    .prologue
    .line 19581
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 19543
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 19608
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 19593
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

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
    .line 19603
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 19598
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 19660
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 19663
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 19664
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 19705
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 19706
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->validate()V

    .line 19707
    return-void

    .line 19667
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 19701
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 19703
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 19669
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 19670
    new-instance v1, Lcom/evernote/edam/type/Note;

    invoke-direct {v1}, Lcom/evernote/edam/type/Note;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    .line 19671
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19673
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19677
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 19678
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 19679
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19681
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19685
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 19686
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19687
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19689
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19693
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 19694
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19695
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19697
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19667
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
    .line 19735
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
    .line 19710
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 19712
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19713
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19714
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->success:Lcom/evernote/edam/type/Note;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 19715
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19729
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 19730
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 19731
    return-void

    .line 19716
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19717
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19718
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 19719
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 19720
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19721
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19722
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 19723
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 19724
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19725
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 19726
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 19727
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
