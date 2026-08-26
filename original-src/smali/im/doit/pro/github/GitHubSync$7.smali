.class Lim/doit/pro/github/GitHubSync$7;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->runAsync(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/github/GitHubSync$Worker;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$ok:Ljava/lang/Runnable;

.field final synthetic val$w:Lim/doit/pro/github/GitHubSync$Worker;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSync$Worker;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$7;->val$w:Lim/doit/pro/github/GitHubSync$Worker;

    iput-object p2, p0, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lim/doit/pro/github/GitHubSync$7;->val$ok:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 292
    :try_start_0
    iget-object v0, p0, Lim/doit/pro/github/GitHubSync$7;->val$w:Lim/doit/pro/github/GitHubSync$Worker;

    iget-object v1, p0, Lim/doit/pro/github/GitHubSync$7;->val$a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lim/doit/pro/github/GitHubSync$Worker;->run(Landroid/content/Context;)V

    .line 293
    invoke-static {}, Lim/doit/pro/github/GitHubSync;->access$1800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/github/GitHubSync$7;->val$ok:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 300
    goto :goto_31

    .line 294
    :catch_11
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_25
    invoke-static {}, Lim/doit/pro/github/GitHubSync;->access$1800()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/github/GitHubSync$7$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/github/GitHubSync$7$1;-><init>(Lim/doit/pro/github/GitHubSync$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    :goto_31
    return-void
.end method
