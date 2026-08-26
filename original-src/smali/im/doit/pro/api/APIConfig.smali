.class public Lim/doit/pro/api/APIConfig;
.super Ljava/lang/Object;
.source "APIConfig.java"


# static fields
.field private static final API_CHINA:Ljava/lang/String;

.field private static final API_JAPAN:Ljava/lang/String;

.field private static final HOST_CHINA:Ljava/lang/String;

.field private static final HOST_JAPAN:Ljava/lang/String;


# instance fields
.field private mAPIPath:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mHostPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    .line 11
    const-string v1, "scope.china"

    .line 10
    invoke-virtual {v0, v1}, Lim/doit/pro/utils/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/api/APIConfig;->HOST_CHINA:Ljava/lang/String;

    .line 12
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    .line 13
    const-string v1, "scope.japan"

    .line 12
    invoke-virtual {v0, v1}, Lim/doit/pro/utils/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/api/APIConfig;->HOST_JAPAN:Ljava/lang/String;

    .line 15
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    .line 16
    const-string v1, "api.china"

    .line 15
    invoke-virtual {v0, v1}, Lim/doit/pro/utils/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/api/APIConfig;->API_CHINA:Ljava/lang/String;

    .line 17
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    .line 18
    const-string v1, "api.japan"

    .line 17
    invoke-virtual {v0, v1}, Lim/doit/pro/utils/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/api/APIConfig;->API_JAPAN:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/utils/Config;->getScopePort()I

    move-result v1

    iput v1, p0, Lim/doit/pro/api/APIConfig;->mHostPort:I

    .line 26
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "server":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lim/doit/pro/api/APIConfig;->changeServer(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public changeServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "china"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lim/doit/pro/api/APIConfig;->HOST_CHINA:Ljava/lang/String;

    iput-object v0, p0, Lim/doit/pro/api/APIConfig;->mHost:Ljava/lang/String;

    .line 33
    sget-object v0, Lim/doit/pro/api/APIConfig;->API_CHINA:Ljava/lang/String;

    iput-object v0, p0, Lim/doit/pro/api/APIConfig;->mAPIPath:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lim/doit/pro/api/APIConfig;->HOST_JAPAN:Ljava/lang/String;

    iput-object v0, p0, Lim/doit/pro/api/APIConfig;->mHost:Ljava/lang/String;

    .line 36
    sget-object v0, Lim/doit/pro/api/APIConfig;->API_JAPAN:Ljava/lang/String;

    iput-object v0, p0, Lim/doit/pro/api/APIConfig;->mAPIPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAPIPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/api/APIConfig;->mAPIPath:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lim/doit/pro/api/APIConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    .end local v0    # "ip":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ip":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lim/doit/pro/api/APIConfig;->mHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScopePort()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lim/doit/pro/api/APIConfig;->mHostPort:I

    return v0
.end method
