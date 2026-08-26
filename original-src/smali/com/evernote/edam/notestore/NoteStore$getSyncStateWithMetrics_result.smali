.class Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;
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
    name = "getSyncStateWithMetrics_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;",
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
.field private success:Lcom/evernote/edam/notestore/SyncState;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 3902
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSyncStateWithMetrics_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3904
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3905
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3906
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3916
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .prologue
    .line 3921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3922
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3923
    new-instance v0, Lcom/evernote/edam/notestore/SyncState;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncState;-><init>(Lcom/evernote/edam/notestore/SyncState;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 3925
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3926
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3928
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3929
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3931
    :cond_2
    return-void
.end method

.method static synthetic access$300(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$500(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3938
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 3939
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3940
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3941
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .prologue
    .line 3959
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3960
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

    .line 3993
    :cond_0
    :goto_0
    return v0

    .line 3963
    :cond_1
    const/4 v0, 0x0

    .line 3964
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3966
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3967
    if-nez v0, :cond_0

    .line 3970
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3971
    if-nez v0, :cond_0

    .line 3975
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3976
    if-nez v0, :cond_0

    .line 3979
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3980
    if-nez v0, :cond_0

    .line 3984
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3985
    if-nez v0, :cond_0

    .line 3988
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3989
    if-nez v0, :cond_0

    .line 3993
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3901
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;
    .locals 1

    .prologue
    .line 3934
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3901
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 3945
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

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
    .line 3955
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 3950
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 3998
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 4001
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 4002
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4035
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4036
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->validate()V

    .line 4037
    return-void

    .line 4005
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4031
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 4033
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4007
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 4008
    new-instance v1, Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncState;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 4009
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncState;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4011
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4015
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 4016
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4017
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4019
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4023
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 4024
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4025
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4027
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4005
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
    .line 4061
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
    .line 4040
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 4042
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4043
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4044
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncState;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4045
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4055
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4056
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4057
    return-void

    .line 4046
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4047
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4048
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4049
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4050
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4051
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 4052
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncStateWithMetrics_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 4053
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
