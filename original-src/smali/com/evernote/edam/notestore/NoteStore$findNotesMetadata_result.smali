.class Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
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
    name = "findNotesMetadata_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;",
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

.field private success:Lcom/evernote/edam/notestore/NotesMetadataList;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 12503
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "findNotesMetadata_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 12505
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12506
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12507
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 12508
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12519
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12525
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12526
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataList;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 12528
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12529
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 12531
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12532
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 12534
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12535
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 12537
    :cond_3
    return-void
.end method

.method static synthetic access$9300(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12544
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 12545
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 12546
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 12547
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 12548
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .prologue
    .line 12571
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12572
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

    .line 12614
    :cond_0
    :goto_0
    return v0

    .line 12575
    :cond_1
    const/4 v0, 0x0

    .line 12576
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 12578
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12579
    if-nez v0, :cond_0

    .line 12582
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12583
    if-nez v0, :cond_0

    .line 12587
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12588
    if-nez v0, :cond_0

    .line 12591
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12592
    if-nez v0, :cond_0

    .line 12596
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12597
    if-nez v0, :cond_0

    .line 12600
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12601
    if-nez v0, :cond_0

    .line 12605
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12606
    if-nez v0, :cond_0

    .line 12609
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12610
    if-nez v0, :cond_0

    .line 12614
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12502
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
    .locals 1

    .prologue
    .line 12540
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 12502
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 12567
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 12552
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

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
    .line 12562
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 12557
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 12619
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 12622
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 12623
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 12664
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 12665
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->validate()V

    .line 12666
    return-void

    .line 12626
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 12660
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 12662
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 12628
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 12629
    new-instance v1, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 12630
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12632
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12636
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 12637
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 12638
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12640
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12644
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 12645
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 12646
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12648
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12652
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 12653
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 12654
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 12656
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 12626
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
    .line 12694
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
    .line 12669
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 12671
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12672
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12673
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12674
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 12688
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 12689
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 12690
    return-void

    .line 12675
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12676
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12677
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12678
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 12679
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12680
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12681
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12682
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 12683
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12684
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 12685
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 12686
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
