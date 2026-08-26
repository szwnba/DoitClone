.class public Lim/doit/pro/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotReady()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lim/doit/pro/utils/NetworkUtils;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v2

    .line 11
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .local v0, "manager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v1

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method
