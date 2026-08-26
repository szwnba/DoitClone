.class public Lcom/evernote/client/conn/mobile/FileDataException;
.super Lcom/evernote/thrift/TException;
.source "FileDataException.java"


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
