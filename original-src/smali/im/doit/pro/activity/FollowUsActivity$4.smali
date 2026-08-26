.class Lim/doit/pro/activity/FollowUsActivity$4;
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
    iput-object p1, p0, Lim/doit/pro/activity/FollowUsActivity$4;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v5, p0, Lim/doit/pro/activity/FollowUsActivity$4;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    invoke-virtual {v5}, Lim/doit/pro/activity/FollowUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://search?q="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 117
    .local v2, "marketUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lim/doit/pro/activity/FollowUsActivity$4;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    const-string v6, ""

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/activity/FollowUsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "marketUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 119
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 121
    .local v4, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lim/doit/pro/activity/FollowUsActivity$4;->this$0:Lim/doit/pro/activity/FollowUsActivity;

    invoke-virtual {v5, v1}, Lim/doit/pro/activity/FollowUsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
