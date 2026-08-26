.class Lcom/evernote/client/conn/mobile/TEvernoteHttpClient$1;
.super Ljava/lang/Object;
.source "TEvernoteHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;


# direct methods
.method constructor <init>(Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient$1;->this$0:Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 189
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method
