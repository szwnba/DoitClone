.class Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;
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
    name = "listTagsByNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private notebookGuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 7811
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "listTagsByNotebook_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 7813
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 7814
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookGuid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7823
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;)V
    .locals 1
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    .prologue
    .line 7828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7829
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7830
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 7832
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7833
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    .line 7835
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7842
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 7843
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    .line 7844
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    .prologue
    .line 7865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7866
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

    .line 7890
    :cond_0
    :goto_0
    return v0

    .line 7869
    :cond_1
    const/4 v0, 0x0

    .line 7870
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 7872
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 7873
    if-nez v0, :cond_0

    .line 7876
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 7877
    if-nez v0, :cond_0

    .line 7881
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 7882
    if-nez v0, :cond_0

    .line 7885
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 7886
    if-nez v0, :cond_0

    .line 7890
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7810
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;
    .locals 1

    .prologue
    .line 7838
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 7810
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 7852
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebookGuid()Z
    .locals 1

    .prologue
    .line 7861
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

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
    const/16 v2, 0xb

    .line 7895
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 7898
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 7899
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 7922
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 7923
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->validate()V

    .line 7924
    return-void

    .line 7902
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 7918
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 7920
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 7904
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 7905
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 7907
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 7911
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 7912
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    goto :goto_1

    .line 7914
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 7902
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
    .line 7847
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 7848
    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "notebookGuid"    # Ljava/lang/String;

    .prologue
    .line 7856
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    .line 7857
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
    .line 7946
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
    .line 7927
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->validate()V

    .line 7929
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 7930
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7931
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 7932
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 7933
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 7935
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7936
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 7937
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$listTagsByNotebook_args;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 7938
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 7940
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 7941
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 7942
    return-void
.end method
