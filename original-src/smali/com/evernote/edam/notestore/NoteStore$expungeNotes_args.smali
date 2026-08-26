.class Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;
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
    name = "expungeNotes_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private noteGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17876
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "expungeNotes_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 17878
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 17879
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteGuids"

    const/16 v2, 0xf

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->NOTE_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17888
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    .prologue
    .line 17893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17894
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetAuthenticationToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17895
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    .line 17897
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetNoteGuids()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17899
    .local v0, "__this__noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17900
    .local v2, "other_element":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17902
    .end local v2    # "other_element":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    .line 17904
    .end local v0    # "__this__noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17911
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    .line 17912
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    .line 17913
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    .prologue
    .line 17934
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17935
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

    .line 17959
    :cond_0
    :goto_0
    return v0

    .line 17938
    :cond_1
    const/4 v0, 0x0

    .line 17939
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 17941
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 17942
    if-nez v0, :cond_0

    .line 17945
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 17946
    if-nez v0, :cond_0

    .line 17950
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetNoteGuids()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetNoteGuids()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 17951
    if-nez v0, :cond_0

    .line 17954
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->isSetNoteGuids()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 17955
    if-nez v0, :cond_0

    .line 17959
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17875
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;
    .locals 1

    .prologue
    .line 17907
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 17875
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 17921
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNoteGuids()Z
    .locals 1

    .prologue
    .line 17930
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 17964
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 17967
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v3

    .line 17968
    .local v3, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 18001
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 18002
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->validate()V

    .line 18003
    return-void

    .line 17971
    :cond_0
    iget-short v4, v3, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 17997
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 17999
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 17973
    :pswitch_0
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 17974
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 17976
    :cond_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 17980
    :pswitch_1
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    .line 17982
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v2

    .line 17983
    .local v2, "_list130":Lcom/evernote/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    .line 17984
    const/4 v1, 0x0

    .local v1, "_i131":I
    :goto_2
    iget v4, v2, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_2

    .line 17987
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17988
    .local v0, "_elem132":Ljava/lang/String;
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17984
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17990
    .end local v0    # "_elem132":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 17993
    .end local v1    # "_i131":I
    .end local v2    # "_list130":Lcom/evernote/thrift/protocol/TList;
    :cond_3
    iget-byte v4, v3, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 17971
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
    .line 17916
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    .line 17917
    return-void
.end method

.method public setNoteGuids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17925
    .local p1, "noteGuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    .line 17926
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
    .line 18032
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 18006
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->validate()V

    .line 18008
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 18009
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18010
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18011
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 18012
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18014
    :cond_0
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 18015
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->NOTE_GUIDS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 18017
    new-instance v2, Lcom/evernote/thrift/protocol/TList;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 18018
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeNotes_args;->noteGuids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18020
    .local v0, "_iter133":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 18022
    .end local v0    # "_iter133":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 18024
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 18026
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 18027
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 18028
    return-void
.end method
