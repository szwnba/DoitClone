.class public Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lcom/evernote/thrift/protocol/TProtocolFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/thrift/protocol/TBinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected readLength_:I

.field protected strictRead_:Z

.field protected strictWrite_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "strictRead"    # Z
    .param p2, "strictWrite"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZI)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1
    .param p1, "strictRead"    # Z
    .param p2, "strictWrite"    # Z
    .param p3, "readLength"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictRead_:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictWrite_:Z

    .line 63
    iput-boolean p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictRead_:Z

    .line 64
    iput-boolean p2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictWrite_:Z

    .line 65
    iput p3, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->readLength_:I

    .line 66
    return-void
.end method


# virtual methods
.method public getProtocol(Lcom/evernote/thrift/transport/TTransport;)Lcom/evernote/thrift/protocol/TProtocol;
    .locals 3
    .param p1, "trans"    # Lcom/evernote/thrift/transport/TTransport;

    .prologue
    .line 69
    new-instance v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    iget-boolean v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictRead_:Z

    iget-boolean v2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictWrite_:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;ZZ)V

    .line 70
    .local v0, "proto":Lcom/evernote/thrift/protocol/TBinaryProtocol;
    iget v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->readLength_:I

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->readLength_:I

    invoke-virtual {v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->setReadLength(I)V

    .line 73
    :cond_0
    return-object v0
.end method
