.class public Lim/doit/pro/utils/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/utils/Config$Names;
    }
.end annotation


# static fields
.field private static final ENV_PATH:Ljava/lang/String; = "configs/env.properties"

.field private static config:Lim/doit/pro/utils/Config;


# instance fields
.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lim/doit/pro/utils/Config;

    invoke-direct {v0}, Lim/doit/pro/utils/Config;-><init>()V

    sput-object v0, Lim/doit/pro/utils/Config;->config:Lim/doit/pro/utils/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lim/doit/pro/utils/Config;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    return-void
.end method

.method public static getConfig()Lim/doit/pro/utils/Config;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lim/doit/pro/utils/Config;->config:Lim/doit/pro/utils/Config;

    return-object v0
.end method

.method private static getConfigFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "env"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadEnv(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 6
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v3, "configs/env.properties"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 100
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 101
    .local v1, "envProperties":Ljava/util/Properties;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 104
    const-string v3, "env"

    const-string v4, "dev"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "env":Ljava/lang/String;
    const-string v3, "Config"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "env:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v0
.end method


# virtual methods
.method public getChinaIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    const-string v1, "ip.china"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntelIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    const-string v1, "ip.japan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopePort()I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    const-string v1, "scope.port"

    .line 54
    const-string v2, "443"

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iget-object v5, p0, Lim/doit/pro/utils/Config;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 84
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {v0}, Lim/doit/pro/utils/Config;->loadEnv(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "env":Ljava/lang/String;
    invoke-static {v3}, Lim/doit/pro/utils/Config;->getConfigFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "configFileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 87
    .local v4, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lim/doit/pro/utils/Config;->properties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "configFileName":Ljava/lang/String;
    .end local v3    # "env":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public isDebug(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 68
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {v0}, Lim/doit/pro/utils/Config;->loadEnv(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "env":Ljava/lang/String;
    const-string v3, "dev"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "debug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    const/4 v3, 0x1

    .line 75
    :goto_0
    return v3

    .line 72
    .end local v2    # "env":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "env":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
