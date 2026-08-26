.class Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;
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
    name = "getFilteredSyncChunk_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;",
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
.field private success:Lcom/evernote/edam/notestore/SyncChunk;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 4679
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getFilteredSyncChunk_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 4681
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4682
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 4683
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4693
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .prologue
    .line 4698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4700
    new-instance v0, Lcom/evernote/edam/notestore/SyncChunk;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncChunk;-><init>(Lcom/evernote/edam/notestore/SyncChunk;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4702
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4703
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4705
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4706
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4708
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$900(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4715
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4716
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4717
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4718
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .prologue
    .line 4736
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4737
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

    .line 4770
    :cond_0
    :goto_0
    return v0

    .line 4740
    :cond_1
    const/4 v0, 0x0

    .line 4741
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 4743
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4744
    if-nez v0, :cond_0

    .line 4747
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4748
    if-nez v0, :cond_0

    .line 4752
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4753
    if-nez v0, :cond_0

    .line 4756
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4757
    if-nez v0, :cond_0

    .line 4761
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4762
    if-nez v0, :cond_0

    .line 4765
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4766
    if-nez v0, :cond_0

    .line 4770
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4678
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;
    .locals 1

    .prologue
    .line 4711
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 4678
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 4722
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

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
    .line 4732
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 4727
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 4775
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4778
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4779
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4812
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4813
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->validate()V

    .line 4814
    return-void

    .line 4782
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4808
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4810
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4784
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 4785
    new-instance v1, Lcom/evernote/edam/notestore/SyncChunk;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncChunk;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    .line 4786
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncChunk;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4788
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4792
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 4793
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4794
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4796
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4800
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 4801
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4802
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4804
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4782
    nop

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
    .line 4838
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
    .line 4817
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4819
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4820
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4821
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->success:Lcom/evernote/edam/notestore/SyncChunk;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncChunk;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4822
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4832
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4833
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4834
    return-void

    .line 4823
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4824
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4825
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4826
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4827
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4828
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4829
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getFilteredSyncChunk_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4830
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
