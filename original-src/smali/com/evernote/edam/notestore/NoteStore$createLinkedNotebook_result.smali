.class Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;
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
    name = "createLinkedNotebook_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;",
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

.field private success:Lcom/evernote/edam/type/LinkedNotebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 26554
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createLinkedNotebook_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 26556
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26557
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26558
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26559
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26570
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26576
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26577
    new-instance v0, Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26579
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26580
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 26582
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26583
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 26585
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26586
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 26588
    :cond_3
    return-void
.end method

.method static synthetic access$24300(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26553
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    return-object v0
.end method

.method static synthetic access$24400(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26553
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$24500(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26553
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$24600(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26553
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26595
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26596
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 26597
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 26598
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 26599
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .prologue
    .line 26622
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26623
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

    .line 26665
    :cond_0
    :goto_0
    return v0

    .line 26626
    :cond_1
    const/4 v0, 0x0

    .line 26627
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 26629
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26630
    if-nez v0, :cond_0

    .line 26633
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26634
    if-nez v0, :cond_0

    .line 26638
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26639
    if-nez v0, :cond_0

    .line 26642
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26643
    if-nez v0, :cond_0

    .line 26647
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26648
    if-nez v0, :cond_0

    .line 26651
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26652
    if-nez v0, :cond_0

    .line 26656
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26657
    if-nez v0, :cond_0

    .line 26660
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26661
    if-nez v0, :cond_0

    .line 26665
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26553
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;
    .locals 1

    .prologue
    .line 26591
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 26553
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 26613
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 26603
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

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
    .line 26618
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 26608
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 26670
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 26673
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 26674
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 26715
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 26716
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->validate()V

    .line 26717
    return-void

    .line 26677
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 26711
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 26713
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 26679
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 26680
    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26681
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26683
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26687
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 26688
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 26689
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26691
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26695
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 26696
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 26697
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26699
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26703
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 26704
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 26705
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26707
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26677
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
    .line 26745
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
    .line 26720
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 26722
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26723
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26724
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->success:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26725
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26739
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 26740
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 26741
    return-void

    .line 26726
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26727
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26728
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26729
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 26730
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26731
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26732
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26733
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 26734
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26735
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26736
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createLinkedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26737
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
