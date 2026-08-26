.class Lim/doit/pro/github/GitHubSyncActivity$6$1$1;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/github/GitHubSyncActivity$6$1;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity$6$1;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6$1$1;->this$2:Lim/doit/pro/github/GitHubSyncActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 118
    return-void
.end method
