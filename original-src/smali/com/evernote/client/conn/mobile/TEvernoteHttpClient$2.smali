.class Lcom/evernote/client/conn/mobile/TEvernoteHttpClient$2;
.super Ljava/lang/Object;
.source "TEvernoteHttpClient.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


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
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/TEvernoteHttpClient$2;->this$0:Lcom/evernote/client/conn/mobile/TEvernoteHttpClient;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method
