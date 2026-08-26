.class Lcom/evernote/edam/notestore/NoteStore$createNote_result;
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
    name = "createNote_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createNote_result;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/Note;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 16659
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "createNote_result"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 16661
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16662
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16663
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 16664
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notFoundException"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16675
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)V
    .locals 2
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16681
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16682
    new-instance v0, Lcom/evernote/edam/type/Note;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Note;-><init>(Lcom/evernote/edam/type/Note;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    .line 16684
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16685
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16687
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16688
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16690
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16691
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16693
    :cond_3
    return-void
.end method

.method static synthetic access$13700(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16658
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16658
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16658
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16658
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16700
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    .line 16701
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16702
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16703
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16704
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .prologue
    .line 16727
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16728
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

    .line 16770
    :cond_0
    :goto_0
    return v0

    .line 16731
    :cond_1
    const/4 v0, 0x0

    .line 16732
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 16734
    .local v1, "typedOther":Lcom/evernote/edam/notestore/NoteStore$createNote_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16735
    if-nez v0, :cond_0

    .line 16738
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16739
    if-nez v0, :cond_0

    .line 16743
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16744
    if-nez v0, :cond_0

    .line 16747
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16748
    if-nez v0, :cond_0

    .line 16752
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16753
    if-nez v0, :cond_0

    .line 16756
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16757
    if-nez v0, :cond_0

    .line 16761
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 16762
    if-nez v0, :cond_0

    .line 16765
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 16766
    if-nez v0, :cond_0

    .line 16770
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16658
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNote_result;
    .locals 1

    .prologue
    .line 16696
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$createNote_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 16658
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNote_result;

    move-result-object v0

    return-object v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 16723
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 16708
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

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
    .line 16718
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 16713
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 16775
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 16778
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 16779
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 16820
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 16821
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->validate()V

    .line 16822
    return-void

    .line 16782
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 16816
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 16818
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 16784
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 16785
    new-instance v1, Lcom/evernote/edam/type/Note;

    invoke-direct {v1}, Lcom/evernote/edam/type/Note;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    .line 16786
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Note;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16788
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16792
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 16793
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 16794
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16796
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16800
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 16801
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 16802
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16804
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16808
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 16809
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 16810
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 16812
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 16782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 16850
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
    .line 16825
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 16827
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16828
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->SUCCESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16829
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->success:Lcom/evernote/edam/type/Note;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16830
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 16844
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 16845
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 16846
    return-void

    .line 16831
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16832
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->USER_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16833
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16834
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 16835
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16836
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16837
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16838
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 16839
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16840
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 16841
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 16842
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
