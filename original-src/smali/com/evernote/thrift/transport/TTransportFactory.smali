.class public Lcom/evernote/thrift/transport/TTransportFactory;
.super Ljava/lang/Object;
.source "TTransportFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransport(Lcom/evernote/thrift/transport/TTransport;)Lcom/evernote/thrift/transport/TTransport;
    .locals 0
    .param p1, "trans"    # Lcom/evernote/thrift/transport/TTransport;

    .prologue
    .line 38
    return-object p1
.end method
