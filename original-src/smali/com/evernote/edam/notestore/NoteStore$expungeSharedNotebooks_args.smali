.class Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
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
    name = "expungeSharedNotebooks_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private sharedNotebookIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26050
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "expungeSharedNotebooks_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 26052
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 26053
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sharedNotebookIds"

    const/16 v2, 0xf

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26062
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    .prologue
    .line 26067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26068
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26069
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 26071
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26073
    .local v0, "__this__sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 26074
    .local v2, "other_element":Ljava/lang/Long;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26076
    .end local v2    # "other_element":Ljava/lang/Long;
    :cond_1
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 26078
    .end local v0    # "__this__sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26085
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 26086
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 26087
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    .prologue
    .line 26108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26109
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

    .line 26133
    :cond_0
    :goto_0
    return v0

    .line 26112
    :cond_1
    const/4 v0, 0x0

    .line 26113
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 26115
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26116
    if-nez v0, :cond_0

    .line 26119
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26120
    if-nez v0, :cond_0

    .line 26124
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 26125
    if-nez v0, :cond_0

    .line 26128
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 26129
    if-nez v0, :cond_0

    .line 26133
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26049
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
    .locals 1

    .prologue
    .line 26081
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 26049
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 26095
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSharedNotebookIds()Z
    .locals 1

    .prologue
    .line 26104
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 26138
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 26141
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v4

    .line 26142
    .local v4, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 26175
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 26176
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->validate()V

    .line 26177
    return-void

    .line 26145
    :cond_0
    iget-short v5, v4, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 26171
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 26173
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 26147
    :pswitch_0
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    .line 26148
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 26150
    :cond_1
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26154
    :pswitch_1
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    .line 26156
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v3

    .line 26157
    .local v3, "_list146":Lcom/evernote/thrift/protocol/TList;
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 26158
    const/4 v2, 0x0

    .local v2, "_i147":I
    :goto_2
    iget v5, v3, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v5, :cond_2

    .line 26161
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    .line 26162
    .local v0, "_elem148":J
    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26158
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26164
    .end local v0    # "_elem148":J
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 26167
    .end local v2    # "_i147":I
    .end local v3    # "_list146":Lcom/evernote/thrift/protocol/TList;
    :cond_3
    iget-byte v5, v4, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 26145
    nop

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
    .line 26090
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 26091
    return-void
.end method

.method public setSharedNotebookIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26099
    .local p1, "sharedNotebookIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 26100
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
    .line 26206
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 26180
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->validate()V

    .line 26182
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 26183
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 26184
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26185
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 26186
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26188
    :cond_0
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 26189
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 26191
    new-instance v3, Lcom/evernote/thrift/protocol/TList;

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 26192
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 26194
    .local v0, "_iter149":J
    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    goto :goto_0

    .line 26196
    .end local v0    # "_iter149":J
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 26198
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 26200
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 26201
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 26202
    return-void
.end method
