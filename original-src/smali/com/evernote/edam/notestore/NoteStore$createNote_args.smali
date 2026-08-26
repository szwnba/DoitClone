.class Lcom/evernote/edam/notestore/NoteStore$createNote_args;
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
    name = "createNote_args"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createNote_args;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private note:Lcom/evernote/edam/type/Note;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16518
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createNote_args"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 16520
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16521
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "note"

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16530
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createNote_args;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    .prologue
    .line 16535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16536
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16537
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    .line 16539
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetNote()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16540
    new-instance v0, Lcom/evernote/edam/type/Note;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    .line 16542
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16549
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    .line 16550
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    .line 16551
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createNote_args;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    .prologue
    .line 16572
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16573
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

    .line 16597
    :cond_0
    :goto_0
    return v0

    .line 16576
    :cond_1
    const/4 v0, 0x0

    .line 16577
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 16579
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createNote_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16580
    if-nez v0, :cond_0

    .line 16583
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 16584
    if-nez v0, :cond_0

    .line 16588
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetNote()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetNote()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16589
    if-nez v0, :cond_0

    .line 16592
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->isSetNote()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16593
    if-nez v0, :cond_0

    .line 16597
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16517
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createNote_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNote_args;
    .locals 1

    .prologue
    .line 16545
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createNote_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 16517
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNote_args;

    move-result-object v0

    return-object v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 16559
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNote()Z
    .locals 1

    .prologue
    .line 16568
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

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
    .line 16602
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 16605
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 16606
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 16630
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 16631
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->validate()V

    .line 16632
    return-void

    .line 16609
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 16626
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 16628
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 16611
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 16612
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 16614
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16618
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 16619
    new-instance v1, Lcom/evernote/edam/type/Note;

    invoke-direct {v1}, Lcom/evernote/edam/type/Note;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    .line 16620
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16622
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16609
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
    .line 16554
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    .line 16555
    return-void
.end method

.method public setNote(Lcom/evernote/edam/type/Note;)V
    .locals 0
    .param p1, "note"    # Lcom/evernote/edam/type/Note;

    .prologue
    .line 16563
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    .line 16564
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
    .line 16654
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
    .line 16635
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->validate()V

    .line 16637
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 16638
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 16639
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16640
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 16641
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 16643
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    if-eqz v0, :cond_1

    .line 16644
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->NOTE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16645
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_args;->note:Lcom/evernote/edam/type/Note;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16646
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 16648
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 16649
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 16650
    return-void
.end method
