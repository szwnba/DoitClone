.class Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;
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
    name = "getBootstrapInfo_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final LOCALE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private locale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 854
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "getBootstrapInfo_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 856
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "locale"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->LOCALE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->isSetLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    .line 873
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    .prologue
    .line 893
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
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

    .line 909
    :cond_0
    :goto_0
    return v0

    .line 897
    :cond_1
    const/4 v0, 0x0

    .line 898
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 900
    .local v1, "typedOther":Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->isSetLocale()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->isSetLocale()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 901
    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->isSetLocale()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 905
    if-nez v0, :cond_0

    .line 909
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 853
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->compareTo(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;
    .locals 1

    .prologue
    .line 876
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;-><init>(Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetLocale()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

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
    .line 914
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 917
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 918
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 934
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 935
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->validate()V

    .line 936
    return-void

    .line 921
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 930
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 932
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 923
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 924
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    goto :goto_1

    .line 926
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    .line 885
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
    .line 953
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
    .line 939
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->validate()V

    .line 941
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 942
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->LOCALE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 944
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getBootstrapInfo_args;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 947
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 948
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 949
    return-void
.end method
