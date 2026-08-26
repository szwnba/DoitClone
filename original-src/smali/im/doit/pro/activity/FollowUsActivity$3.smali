.class Lim/doit/pro/activity/FollowUsActivity$3;
.super Ljava/lang/Object;
.source "FollowUsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FollowUsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FollowUsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/FollowUsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/FollowUsActivity$3;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    const-string v2, "http://e.weibo.com/ixuz"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lim/doit/pro/activity/FollowUsActivity$3;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/FollowUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
