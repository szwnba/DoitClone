.class Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "authenticateToBusiness_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;",
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
.field private success:Lcom/evernote/edam/userstore/AuthenticationResult;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 2682
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "authenticateToBusiness_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 2684
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2685
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 2686
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2696
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .prologue
    .line 2701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2702
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2705
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2706
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2708
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2709
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2711
    :cond_2
    return-void
.end method

.method static synthetic access$1300(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2718
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2719
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2720
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2721
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .prologue
    .line 2739
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2740
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

    .line 2773
    :cond_0
    :goto_0
    return v0

    .line 2743
    :cond_1
    const/4 v0, 0x0

    .line 2744
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 2746
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2747
    if-nez v0, :cond_0

    .line 2750
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2751
    if-nez v0, :cond_0

    .line 2755
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2756
    if-nez v0, :cond_0

    .line 2759
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2760
    if-nez v0, :cond_0

    .line 2764
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 2765
    if-nez v0, :cond_0

    .line 2768
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 2769
    if-nez v0, :cond_0

    .line 2773
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2681
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;
    .locals 1

    .prologue
    .line 2714
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;-><init>(Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

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
    .line 2735
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 2730
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 2778
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 2781
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 2782
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 2815
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 2816
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->validate()V

    .line 2817
    return-void

    .line 2785
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 2811
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 2813
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 2787
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 2788
    new-instance v1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    .line 2789
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2791
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2795
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 2796
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 2797
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2799
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2803
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 2804
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 2805
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 2807
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 2785
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
    .line 2841
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
    .line 2820
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 2822
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2823
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2824
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2825
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 2836
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 2837
    return-void

    .line 2826
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2827
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2828
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2829
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 2830
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2831
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2832
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$authenticateToBusiness_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 2833
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
