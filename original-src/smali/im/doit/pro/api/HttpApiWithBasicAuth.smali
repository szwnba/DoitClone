.class public Lim/doit/pro/api/HttpApiWithBasicAuth;
.super Lim/doit/pro/api/HttpApi;
.source "HttpApiWithBasicAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/api/HttpApiWithBasicAuth$GzipDecompressingEntity;
    }
.end annotation


# instance fields
.field private preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/HttpApi;-><init>(Ljava/lang/String;I)V

    .line 59
    new-instance v0, Lim/doit/pro/api/HttpApiWithBasicAuth$1;

    invoke-direct {v0, p0}, Lim/doit/pro/api/HttpApiWithBasicAuth$1;-><init>(Lim/doit/pro/api/HttpApiWithBasicAuth;)V

    iput-object v0, p0, Lim/doit/pro/api/HttpApiWithBasicAuth;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    .line 29
    iget-object v0, p0, Lim/doit/pro/api/HttpApiWithBasicAuth;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lim/doit/pro/api/HttpApiWithBasicAuth;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 31
    iget-object v0, p0, Lim/doit/pro/api/HttpApiWithBasicAuth;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lim/doit/pro/api/HttpApiWithBasicAuth$2;

    invoke-direct {v1, p0}, Lim/doit/pro/api/HttpApiWithBasicAuth$2;-><init>(Lim/doit/pro/api/HttpApiWithBasicAuth;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 40
    iget-object v0, p0, Lim/doit/pro/api/HttpApiWithBasicAuth;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lim/doit/pro/api/HttpApiWithBasicAuth$3;

    invoke-direct {v1, p0}, Lim/doit/pro/api/HttpApiWithBasicAuth$3;-><init>(Lim/doit/pro/api/HttpApiWithBasicAuth;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 57
    return-void
.end method
