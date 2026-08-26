.class Lim/doit/pro/activity/AccountInfoActivity$2;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AccountInfoActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$2;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$2;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 312
    const-class v2, Lim/doit/pro/activity/UserNicknameEditActivity;

    .line 311
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nickname"

    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity$2;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AccountInfoActivity;->access$3(Lim/doit/pro/activity/AccountInfoActivity;)Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$2;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lim/doit/pro/activity/AccountInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 315
    return-void
.end method
