.class Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;
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
    name = "getSyncState_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;",
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

    .line 3597
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getSyncState_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 3599
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3600
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 3601
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .prologue
    .line 3616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3617
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3618
    new-instance v0, Lcom/evernote/edam/notestore/SyncState;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/SyncState;-><init>(Lcom/evernote/edam/notestore/SyncState;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 3620
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3621
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3623
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3624
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3626
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3633
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 3634
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3635
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3636
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .prologue
    .line 3654
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3655
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

    .line 3688
    :cond_0
    :goto_0
    return v0

    .line 3658
    :cond_1
    const/4 v0, 0x0

    .line 3659
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 3661
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3662
    if-nez v0, :cond_0

    .line 3665
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3666
    if-nez v0, :cond_0

    .line 3670
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3671
    if-nez v0, :cond_0

    .line 3674
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3675
    if-nez v0, :cond_0

    .line 3679
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 3680
    if-nez v0, :cond_0

    .line 3683
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 3684
    if-nez v0, :cond_0

    .line 3688
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3596
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;
    .locals 1

    .prologue
    .line 3629
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 3596
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

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
    .line 3650
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 3645
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 3693
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 3696
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 3697
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 3730
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 3731
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->validate()V

    .line 3732
    return-void

    .line 3700
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 3726
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 3728
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 3702
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 3703
    new-instance v1, Lcom/evernote/edam/notestore/SyncState;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/SyncState;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    .line 3704
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/SyncState;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3706
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3710
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 3711
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 3712
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3714
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3718
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 3719
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 3720
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 3722
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 3700
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
    .line 3756
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
    .line 3735
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 3737
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3738
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3739
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->success:Lcom/evernote/edam/notestore/SyncState;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/SyncState;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3740
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 3750
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 3751
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 3752
    return-void

    .line 3741
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3742
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3743
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3744
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 3745
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3746
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 3747
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getSyncState_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 3748
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
