.class Lim/doit/pro/github/GitHubSyncActivity$9$1$1;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSyncActivity$OnOk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/github/GitHubSyncActivity$9$1;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity$9$1;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$9$1$1;->this$2:Lim/doit/pro/github/GitHubSyncActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .registers 2

    .line 167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 168
    return-void
.end method
