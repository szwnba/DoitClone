.class Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
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
    name = "checkVersion_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$checkVersion_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __EDAMVERSIONMAJOR_ISSET_ID:I = 0x0

.field private static final __EDAMVERSIONMINOR_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private clientName:Ljava/lang/String;

.field private edamVersionMajor:S

.field private edamVersionMinor:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 558
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "checkVersion_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 560
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "clientName"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 561
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "edamVersionMajor"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 562
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "edamVersionMinor"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    .line 575
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 577
    const/16 v0, 0x19

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    .line 579
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    .prologue
    const/4 v3, 0x0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    .line 585
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    .line 589
    :cond_0
    iget-short v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 590
    iget-short v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    .line 591
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    .line 599
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 601
    const/16 v0, 0x19

    iput-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    .line 603
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    .prologue
    .line 643
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 644
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

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    const/4 v0, 0x0

    .line 648
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 650
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 651
    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetClientName()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 655
    if-nez v0, :cond_0

    .line 659
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 660
    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMajor()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-short v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    iget-short v3, v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 664
    if-nez v0, :cond_0

    .line 668
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 669
    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->isSetEdamVersionMinor()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-short v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    iget-short v3, v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 673
    if-nez v0, :cond_0

    .line 677
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 557
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_args;
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;-><init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetClientName()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetEdamVersionMajor()Z
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetEdamVersionMinor()Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 682
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 685
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 686
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 718
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 719
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->validate()V

    .line 720
    return-void

    .line 689
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 714
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 716
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 691
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 692
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    goto :goto_1

    .line 694
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 698
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 699
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v1

    iput-short v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 700
    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajorIsSet(Z)V

    goto :goto_1

    .line 702
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 706
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 707
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI16()S

    move-result v1

    iput-short v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    .line 708
    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinorIsSet(Z)V

    goto :goto_1

    .line 710
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientName"    # Ljava/lang/String;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setEdamVersionMajor(S)V
    .locals 1
    .param p1, "edamVersionMajor"    # S

    .prologue
    .line 615
    iput-short p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMajorIsSet(Z)V

    .line 617
    return-void
.end method

.method public setEdamVersionMajorIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 625
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 626
    return-void
.end method

.method public setEdamVersionMinor(S)V
    .locals 1
    .param p1, "edamVersionMinor"    # S

    .prologue
    .line 629
    iput-short p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    .line 630
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->setEdamVersionMinorIsSet(Z)V

    .line 631
    return-void
.end method

.method public setEdamVersionMinorIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 640
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 743
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
    .line 723
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->validate()V

    .line 725
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 726
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->CLIENT_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 728
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->clientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 731
    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MAJOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 732
    iget-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMajor:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    .line 733
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 734
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->EDAM_VERSION_MINOR_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 735
    iget-short v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_args;->edamVersionMinor:S

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI16(S)V

    .line 736
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 737
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 738
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 739
    return-void
.end method
