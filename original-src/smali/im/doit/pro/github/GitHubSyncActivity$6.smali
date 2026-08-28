.class Lim/doit/pro/github/GitHubSyncActivity$6;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSyncActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 2

    .line 71
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->shareCrashLog(Landroid/app/Activity;)V

    return-void
.end method
