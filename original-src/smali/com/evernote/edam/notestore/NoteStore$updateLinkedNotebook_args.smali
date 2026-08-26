.class Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;
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
    name = "updateLinkedNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26750
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "updateLinkedNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 26752
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26753
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "linkedNotebook"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26762
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    .prologue
    .line 26767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26768
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26769
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26771
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26772
    new-instance v0, Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>(Lcom/evernote/edam/type/LinkedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26774
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26781
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26782
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26783
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    .prologue
    .line 26804
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26805
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

    .line 26829
    :cond_0
    :goto_0
    return v0

    .line 26808
    :cond_1
    const/4 v0, 0x0

    .line 26809
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 26811
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26812
    if-nez v0, :cond_0

    .line 26815
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26816
    if-nez v0, :cond_0

    .line 26820
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26821
    if-nez v0, :cond_0

    .line 26824
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->isSetLinkedNotebook()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 26825
    if-nez v0, :cond_0

    .line 26829
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26749
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;
    .locals 1

    .prologue
    .line 26777
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 26749
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 26791
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLinkedNotebook()Z
    .locals 1

    .prologue
    .line 26800
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

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
    .line 26834
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 26837
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 26838
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 26862
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 26863
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->validate()V

    .line 26864
    return-void

    .line 26841
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 26858
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 26860
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 26843
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 26844
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 26846
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26850
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 26851
    new-instance v1, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/LinkedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26852
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/LinkedNotebook;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 26854
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26841
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationToken"    # Ljava/lang/String;

    .prologue
    .line 26786
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 26787
    return-void
.end method

.method public setLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 0
    .param p1, "linkedNotebook"    # Lcom/evernote/edam/type/LinkedNotebook;

    .prologue
    .line 26795
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    .line 26796
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
    .line 26886
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
    .line 26867
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->validate()V

    .line 26869
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 26870
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26871
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26872
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 26873
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26875
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    if-eqz v0, :cond_1

    .line 26876
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->LINKED_NOTEBOOK_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26877
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateLinkedNotebook_args;->linkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/LinkedNotebook;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 26878
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26880
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 26881
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 26882
    return-void
.end method
